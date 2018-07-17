with Prj.ROS;

with RCL;

with ROSIDL.Typesupport;

procedure Prj.Main is
begin
   --  Add a callback to a topic
   ROS.Node.Subscribe 
     (Msg_Type => ROSIDL.Typesupport.Get_Message_Support ("std_msgs", "String"),
      Topic    => "/YourListeningTopic",
      Callback => Ros.Your_Topic_Listener'Access);                       
   
   --  Spin on the node until the end of time
   ROS.Node.Spin (During => RCL.Forever);
end Prj.Main;
