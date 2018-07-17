package body Prj.ROS is

   -------------------------
   -- Your_Topic_Listener --
   -------------------------

   procedure Your_Topic_Listener (Node : in out RCL.Nodes.Node'Class;
                                  Msg  : in out ROSIDL.Dynamic.Message;
                                  Info :        ROSIDL.Message_Info) is
   begin
      --  Process the received message here...
      null;
   end Your_Topic_Listener;

end Prj.ROS;
