// Generated by gencpp from file mobile_robot/Torque.msg
// DO NOT EDIT!


#ifndef MOBILE_ROBOT_MESSAGE_TORQUE_H
#define MOBILE_ROBOT_MESSAGE_TORQUE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mobile_robot
{
template <class ContainerAllocator>
struct Torque_
{
  typedef Torque_<ContainerAllocator> Type;

  Torque_()
    : left_wheel(0.0)
    , right_wheel(0.0)
    , theta1(0.0)
    , theta2(0.0)
    , theta3(0.0)
    , theta4(0.0)  {
    }
  Torque_(const ContainerAllocator& _alloc)
    : left_wheel(0.0)
    , right_wheel(0.0)
    , theta1(0.0)
    , theta2(0.0)
    , theta3(0.0)
    , theta4(0.0)  {
  (void)_alloc;
    }



   typedef double _left_wheel_type;
  _left_wheel_type left_wheel;

   typedef double _right_wheel_type;
  _right_wheel_type right_wheel;

   typedef double _theta1_type;
  _theta1_type theta1;

   typedef double _theta2_type;
  _theta2_type theta2;

   typedef double _theta3_type;
  _theta3_type theta3;

   typedef double _theta4_type;
  _theta4_type theta4;





  typedef boost::shared_ptr< ::mobile_robot::Torque_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mobile_robot::Torque_<ContainerAllocator> const> ConstPtr;

}; // struct Torque_

typedef ::mobile_robot::Torque_<std::allocator<void> > Torque;

typedef boost::shared_ptr< ::mobile_robot::Torque > TorquePtr;
typedef boost::shared_ptr< ::mobile_robot::Torque const> TorqueConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mobile_robot::Torque_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mobile_robot::Torque_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mobile_robot::Torque_<ContainerAllocator1> & lhs, const ::mobile_robot::Torque_<ContainerAllocator2> & rhs)
{
  return lhs.left_wheel == rhs.left_wheel &&
    lhs.right_wheel == rhs.right_wheel &&
    lhs.theta1 == rhs.theta1 &&
    lhs.theta2 == rhs.theta2 &&
    lhs.theta3 == rhs.theta3 &&
    lhs.theta4 == rhs.theta4;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mobile_robot::Torque_<ContainerAllocator1> & lhs, const ::mobile_robot::Torque_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mobile_robot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mobile_robot::Torque_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mobile_robot::Torque_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mobile_robot::Torque_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mobile_robot::Torque_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mobile_robot::Torque_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mobile_robot::Torque_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mobile_robot::Torque_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1062d21e465d190e12233c419350a6fa";
  }

  static const char* value(const ::mobile_robot::Torque_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1062d21e465d190eULL;
  static const uint64_t static_value2 = 0x12233c419350a6faULL;
};

template<class ContainerAllocator>
struct DataType< ::mobile_robot::Torque_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mobile_robot/Torque";
  }

  static const char* value(const ::mobile_robot::Torque_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mobile_robot::Torque_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 left_wheel\n"
"float64 right_wheel\n"
"float64 theta1\n"
"float64 theta2\n"
"float64 theta3\n"
"float64 theta4\n"
;
  }

  static const char* value(const ::mobile_robot::Torque_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mobile_robot::Torque_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.left_wheel);
      stream.next(m.right_wheel);
      stream.next(m.theta1);
      stream.next(m.theta2);
      stream.next(m.theta3);
      stream.next(m.theta4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Torque_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mobile_robot::Torque_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mobile_robot::Torque_<ContainerAllocator>& v)
  {
    s << indent << "left_wheel: ";
    Printer<double>::stream(s, indent + "  ", v.left_wheel);
    s << indent << "right_wheel: ";
    Printer<double>::stream(s, indent + "  ", v.right_wheel);
    s << indent << "theta1: ";
    Printer<double>::stream(s, indent + "  ", v.theta1);
    s << indent << "theta2: ";
    Printer<double>::stream(s, indent + "  ", v.theta2);
    s << indent << "theta3: ";
    Printer<double>::stream(s, indent + "  ", v.theta3);
    s << indent << "theta4: ";
    Printer<double>::stream(s, indent + "  ", v.theta4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOBILE_ROBOT_MESSAGE_TORQUE_H
