#!/usr/bin/env python3

from __future__ import print_function

import threading

import roslib#; roslib.load_manifest('teleop_twist_keyboard')
import rospy

from std_msgs.msg import Float64

import sys, select, termios, tty

msg= """
Reading form the keyboard and publishing to /cmd_vel_topic
-------------------------------------------------
Robot base moving:
    w
a   s   d

CTRL-C to quit
"""

moveBindings = {
    'w':(1,1,0,0,0,0),
    'a':(1,-1,0,0,0,0),
    's':(-1,-1,0,0,0,0),
    'd':(-1,1,0,0,0,0),
    'f':(0,0,0,0,0,0)
}

class PublishThread(threading.Thread):
    def __init__(self, rate):
        super(PublishThread, self).__init__()
        # self.publisher = rospy.Publisher('cmd_torque', Torque, queue_size=6)
        self.left_pub = rospy.Publisher('/mobile_robot/left_wheel_controller/command', Float64, queue_size=1)
        self.right_pub = rospy.Publisher('/mobile_robot/right_wheel_controller/command', Float64, queue_size=1)
        self.left_wheel = 0.0
        self.right_wheel = 0.0
        self.speed_wheel = -100.0
        self.condition = threading.Condition()
        self.done = False

        # Set timeout to None if rate is 0 (causes new_message to wait forever
        # for new data to publish)
        if rate != 0.0:
            self.timeout = 1.0 / rate
        else:
            self.timeout = None

        self.start()

    # def wait_for_subscribers(self):
    #     i = 0
    #     while not rospy.is_shutdown() and self.publisher.get_num_connections() == 0:
    #         if i == 4:
    #             print("Waiting for subscriber to connect to {}".format(self.publisher.name))
    #         rospy.sleep(0.5)
    #         i += 1
    #         i = i % 5
    #     if rospy.is_shutdown():
    #         raise Exception("Got shutdown request before subscribers connected")

    def update(self, left_wheel, right_wheel):
        self.condition.acquire()
        self.left_wheel = left_wheel
        self.right_wheel = right_wheel
        # Notify publish thread that we have a new message.
        self.condition.notify()
        self.condition.release()

    def stop(self):
        self.done = True
        self.update(0, 0)
        self.join()

    def run(self):
        while not self.done:
            self.condition.acquire()
            # Wait for a new message or timeout.
            self.condition.wait(self.timeout)
            self.condition.release()

            # Publish.
            self.left_pub.publish(self.left_wheel*self.speed_wheel)
            self.right_pub.publish(self.right_wheel*self.speed_wheel)
            
        # self.publisher.publish(cmd)
        self.left_pub.publish(0)
        self.right_pub.publish(0)

def getKey(key_timeout):
    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], key_timeout)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

if __name__=="__main__":
    settings = termios.tcgetattr(sys.stdin)

    rospy.init_node('keyboard_control')

    speed = rospy.get_param("~speed", 0.5)
    turn = rospy.get_param("~turn", 1.0)
    repeat = rospy.get_param("~repeat_rate", 0.0)
    key_timeout = rospy.get_param("~key_timeout", 0.0)
    if key_timeout == 0.0:
        key_timeout = None

    pub_thread = PublishThread(repeat)

    left_wheel=0
    right_wheel=0
    status=0

    try:
        # pub_thread.wait_for_subscribers()
        pub_thread.update(left_wheel,right_wheel)

        print(msg)

        while(1):
            key = getKey(key_timeout)
            if key in moveBindings.keys():
                left_wheel = moveBindings[key][0]
                right_wheel = moveBindings[key][1]

                # if (status == 14):
                #     print(msg)
                # status = (status + 1) % 15
            else:
                # Skip updating cmd_vel if key timeout and robot already
                # stopped.
                if key == '' and left_wheel == 0 and right_wheel == 0:
                    continue
                left_wheel=0
                right_wheel=0
                if (key == '\x03'):
                    break
            pub_thread.update(left_wheel,right_wheel)
            # pub_thread.run()

    except Exception as e:
        print(e)

    finally:
        pub_thread.stop()

        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)