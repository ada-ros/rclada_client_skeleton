with RCL.Nodes;
with RCL.Publishers;

with ROSIDL.Dynamic;
with ROSIDL.Typesupport;

package Prj.ROS is
   
   --  In this package we declare several example entities from ROS. 
   --  In a real project you could spread these over several packages.

   --  A node in the default namespace with default options
   Node : aliased RCL.Nodes.Node := RCL.Nodes.Init ("Your_Node_Name");
   
   --  A sample publisher that would publish Strings
   Publisher : RCL.Publishers.Publisher (Node'Access) :=
                 Node.Publish 
                   (Msg_Type => ROSIDL.Typesupport.Get_Message_Support ("std_msgs",  "String"),
                    Topic    => "/YourPublishingTopic");
   
   --  A sample listening procedure, which is connected to a topic in Prj.Main
   procedure Your_Topic_Listener (Node : in out RCL.Nodes.Node'Class;
                                  Msg  : in out ROSIDL.Dynamic.Message;
                                  Info :        ROSIDL.Message_Info);      

end Prj.ROS;
