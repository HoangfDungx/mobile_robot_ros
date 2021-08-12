;; Auto-generated. Do not edit!


(when (boundp 'mobile_robot_controller::Torque)
  (if (not (find-package "MOBILE_ROBOT_CONTROLLER"))
    (make-package "MOBILE_ROBOT_CONTROLLER"))
  (shadow 'Torque (find-package "MOBILE_ROBOT_CONTROLLER")))
(unless (find-package "MOBILE_ROBOT_CONTROLLER::TORQUE")
  (make-package "MOBILE_ROBOT_CONTROLLER::TORQUE"))

(in-package "ROS")
;;//! \htmlinclude Torque.msg.html


(defclass mobile_robot_controller::Torque
  :super ros::object
  :slots (_left_wheel _right_wheel _theta1 _theta2 _theta3 _theta4 ))

(defmethod mobile_robot_controller::Torque
  (:init
   (&key
    ((:left_wheel __left_wheel) 0.0)
    ((:right_wheel __right_wheel) 0.0)
    ((:theta1 __theta1) 0.0)
    ((:theta2 __theta2) 0.0)
    ((:theta3 __theta3) 0.0)
    ((:theta4 __theta4) 0.0)
    )
   (send-super :init)
   (setq _left_wheel (float __left_wheel))
   (setq _right_wheel (float __right_wheel))
   (setq _theta1 (float __theta1))
   (setq _theta2 (float __theta2))
   (setq _theta3 (float __theta3))
   (setq _theta4 (float __theta4))
   self)
  (:left_wheel
   (&optional __left_wheel)
   (if __left_wheel (setq _left_wheel __left_wheel)) _left_wheel)
  (:right_wheel
   (&optional __right_wheel)
   (if __right_wheel (setq _right_wheel __right_wheel)) _right_wheel)
  (:theta1
   (&optional __theta1)
   (if __theta1 (setq _theta1 __theta1)) _theta1)
  (:theta2
   (&optional __theta2)
   (if __theta2 (setq _theta2 __theta2)) _theta2)
  (:theta3
   (&optional __theta3)
   (if __theta3 (setq _theta3 __theta3)) _theta3)
  (:theta4
   (&optional __theta4)
   (if __theta4 (setq _theta4 __theta4)) _theta4)
  (:serialization-length
   ()
   (+
    ;; float64 _left_wheel
    8
    ;; float64 _right_wheel
    8
    ;; float64 _theta1
    8
    ;; float64 _theta2
    8
    ;; float64 _theta3
    8
    ;; float64 _theta4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _left_wheel
       (sys::poke _left_wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_wheel
       (sys::poke _right_wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta1
       (sys::poke _theta1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta2
       (sys::poke _theta2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta3
       (sys::poke _theta3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta4
       (sys::poke _theta4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _left_wheel
     (setq _left_wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_wheel
     (setq _right_wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta1
     (setq _theta1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta2
     (setq _theta2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta3
     (setq _theta3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta4
     (setq _theta4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mobile_robot_controller::Torque :md5sum-) "1062d21e465d190e12233c419350a6fa")
(setf (get mobile_robot_controller::Torque :datatype-) "mobile_robot_controller/Torque")
(setf (get mobile_robot_controller::Torque :definition-)
      "float64 left_wheel
float64 right_wheel
float64 theta1
float64 theta2
float64 theta3
float64 theta4

")



(provide :mobile_robot_controller/Torque "1062d21e465d190e12233c419350a6fa")


