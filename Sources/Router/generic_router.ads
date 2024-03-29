--
--  Framework: Uwe R. Zimmer, Australia, 2015
--

with Generic_Message_Structures;
with Generic_Router_Links;
with Id_Dispenser;

with Packages;

generic

   with package Message_Structures is new Generic_Message_Structures (<>);

package Generic_Router is

   use Message_Structures;
   use Routers_Configuration;

   package Router_Id_Generator is new Id_Dispenser (Element => Router_Range);
   use Router_Id_Generator;

   package New_Packages is
     new Packages (Element => Messages_Mailbox);
   use New_Packages;

   type Router_Task;
   type Router_Task_P is access all Router_Task;

   package Router_Link is new Generic_Router_Links (Router_Range, Router_Task_P, null);
   use Router_Link;

   task type Router_Task (Task_Id  : Router_Range := Draw_Id) is

      entry Configure (Links : Ids_To_Links);

      entry Send_Message    (Message :     Messages_Client);
      entry Receive_Message (Message : out Messages_Mailbox);

      entry Shutdown;

      -- Leave anything above this line as it will be used by the testing framework
      -- to communicate with your router.

      --  Add one or multiple further entries for inter-router communications here.

      -- Send Map to Neighbor
      entry Send_Map     (Sender : in Router_Range; Inc_Map : in Paths);
      -- Pass Message to Neighbor
      entry Pass_Message (Message : in out Message_Delivery);

   end Router_Task;

end Generic_Router;
