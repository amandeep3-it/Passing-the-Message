--
--  Framework: Uwe R. Zimmer, Australia, 2019
--

with Exceptions; use Exceptions;

package body Generic_Router is

   task body Router_Task is

      Connected_Routers : Ids_To_Links;

   begin
      accept Configure (Links : Ids_To_Links) do
         Connected_Routers := Links;
      end Configure;

      declare
         Port_List : constant Connected_Router_Ports := To_Router_Ports (Task_Id, Connected_Routers);

         Map           : Paths;
         Local_Message : Protected_Queue;
         Guard         : Blocker (0);

         -- Task to Send Map to Neighbors whenever new change to its Map is made
         task Send_Map_to_Neighbor;
         task body Send_Map_to_Neighbor is
         begin

            -- Assign Initial Hops of Neighbors
            for x of Port_List loop
               Map (x.Id) := (Distance => 1, Router => x.Id);
            end loop;

            -- Send Map to Neighbors
            loop
               for x of Port_List loop
                  x.Link.all.Send_Map (Task_Id, Map);
               end loop;
               Guard.Wait;
               exit when Guard.Is_Shutdown;
            end loop;

         end Send_Map_to_Neighbor;
      begin

         --  Replace the following dummy code with the code of your router.
         --  None of the following code structures make necessarily any sense,
         --  so feel free to delete in full and rewrite from scratch.
         --  You will still need to handle all defined entries and will need to
         --  use the exisitng ports in your own code.

         loop
            select
               accept Send_Map (Sender : Router_Range; Inc_Map : Paths) do
                  -- Assign New Content to Local Map
                  declare
                     Changed : Boolean := False;
                  begin
                     for x in Inc_Map'Range loop
                        if (Inc_Map (x).Distance /= 0) and then (x /= Task_Id) and then
                          (Map (x).Distance = 0 or else (Inc_Map (x).Distance + 1) < Map (x).Distance)
                        then
                           Map (x) := (Distance => (Inc_Map (x).Distance + 1), Router => Sender);
                           Changed := True;
                        end if;
                     end loop;

                     -- Allow Sending Map to Neighbors
                     if Changed then
                        Guard.Allow;
                     end if;
                  end;
               end Send_Map;
            or
               accept Pass_Message (Message : in out Message_Delivery) do

                  -- Check if Message is for himself
                  if Message.Destination = Task_Id then
                     -- Store Message Locally
                     Local_Message.Enqueue ((Sender => Message.Sender, The_Message => Message.The_Message, Hop_Counter => Message.Hop_Counter));
                  else
                     -- Keep waiting until data received
                     loop exit when Map (Message.Destination).Distance /= 0;
                     end loop;

                     -- Pass Message to Neighbors
                     for x of Port_List loop
                        if x.Id = Map (Message.Destination).Router then
                           Message.Hop_Counter := Message.Hop_Counter + 1;
                           x.Link.all.Pass_Message (Message);
                           exit;
                        end if;
                     end loop;
                  end if;
               end Pass_Message;
            or
               accept Send_Message (Message : in Messages_Client) do

                  -- Check if Message is for himself
                  if Message.Destination = Task_Id then
                     -- Store Message Locally
                     Local_Message.Enqueue ((Sender => Task_Id, The_Message => Message.The_Message, Hop_Counter => 0));
                  else
                     -- Receive Message from FrameWork and Pass onto Neighbor
                     for x of Port_List loop
                        if x.Id = Map (Message.Destination).Router then
                           declare
                              M : Message_Delivery := (Sender => Task_Id, Destination => Message.Destination, The_Message => Message.The_Message, Hop_Counter => 1);
                           begin x.Link.all.Pass_Message (M);
                           end;
                           exit;
                        end if;
                     end loop;
                  end if;
               end Send_Message;
            or
               when not Local_Message.Is_Empty =>
                  accept Receive_Message (Message : out Messages_Mailbox) do
                     -- Give Message to FrameWork
                     Local_Message.Dequeue (Message);
                  end Receive_Message;
            or
               accept Shutdown;
               -- Stop the Child Task
               Guard.Shutdown;
               -- Leave the loop
               exit;
            end select;
         end loop;
      end;

   exception
      when Exception_Id : others => Show_Exception (Exception_Id);
   end Router_Task;

end Generic_Router;
