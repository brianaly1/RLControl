// Generated by gencpp from file environment/interaction_srvRequest.msg
// DO NOT EDIT!


#ifndef ENVIRONMENT_MESSAGE_INTERACTION_SRVREQUEST_H
#define ENVIRONMENT_MESSAGE_INTERACTION_SRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <environment/actor_action_msg.h>

namespace environment
{
template <class ContainerAllocator>
struct interaction_srvRequest_
{
  typedef interaction_srvRequest_<ContainerAllocator> Type;

  interaction_srvRequest_()
    : action()  {
    }
  interaction_srvRequest_(const ContainerAllocator& _alloc)
    : action(_alloc)  {
  (void)_alloc;
    }



   typedef  ::environment::actor_action_msg_<ContainerAllocator>  _action_type;
  _action_type action;




  typedef boost::shared_ptr< ::environment::interaction_srvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::environment::interaction_srvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct interaction_srvRequest_

typedef ::environment::interaction_srvRequest_<std::allocator<void> > interaction_srvRequest;

typedef boost::shared_ptr< ::environment::interaction_srvRequest > interaction_srvRequestPtr;
typedef boost::shared_ptr< ::environment::interaction_srvRequest const> interaction_srvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::environment::interaction_srvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::environment::interaction_srvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace environment

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': False, 'HasHeader': False}
// {'environment': ['/home/utra-art/soccer-rl/ROS_ws/src/environment/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::environment::interaction_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::environment::interaction_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::environment::interaction_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::environment::interaction_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::environment::interaction_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::environment::interaction_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::environment::interaction_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "877056a7f1686c7c622bba01eff5ff18";
  }

  static const char* value(const ::environment::interaction_srvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x877056a7f1686c7cULL;
  static const uint64_t static_value2 = 0x622bba01eff5ff18ULL;
};

template<class ContainerAllocator>
struct DataType< ::environment::interaction_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "environment/interaction_srvRequest";
  }

  static const char* value(const ::environment::interaction_srvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::environment::interaction_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "actor_action_msg action\n\
\n\
================================================================================\n\
MSG: environment/actor_action_msg\n\
int32 reset\n\
float32[] action\n\
";
  }

  static const char* value(const ::environment::interaction_srvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::environment::interaction_srvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct interaction_srvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::environment::interaction_srvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::environment::interaction_srvRequest_<ContainerAllocator>& v)
  {
    s << indent << "action: ";
    s << std::endl;
    Printer< ::environment::actor_action_msg_<ContainerAllocator> >::stream(s, indent + "  ", v.action);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ENVIRONMENT_MESSAGE_INTERACTION_SRVREQUEST_H
