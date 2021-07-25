package body Packages is

   --  Blocker
   protected body Blocker is
      function Is_Shutdown return Boolean is (Guard = -1);

      procedure Shutdown is
      begin Guard := -1;
      end Shutdown;

      procedure Allow is
      begin
         if Guard >= 0 then
            Guard := 1;
         end if;
      end Allow;

      entry Wait when Guard /= 0 is
      begin
         if Guard > 0 then
            Guard := 0;
         end if;
      end Wait;
   end Blocker;

   --  Queue
   protected body Protected_Queue is

      function Is_Empty return Boolean is
        (Queue.Is_Empty);

      function Is_Full return Boolean is
        (not Queue.Is_Empty and then Queue.Top = Queue.Free);

      procedure Empty_Queue is
      begin
         Queue.Top      := Index'First;
         Queue.Free     := Index'First;
         Queue.Is_Empty := True;
      end Empty_Queue;

      entry Enqueue (Item : Element) when not Is_Full is
      begin
         Queue.Elements (Queue.Free) := Item;
         Queue.Free     := Index'Succ (Queue.Free);
         Queue.Is_Empty := False;
      end Enqueue;

      entry Dequeue (Item : out Element) when not Is_Empty is
      begin
         Item           := Queue.Elements (Queue.Top);
         Queue.Top      := Index'Succ (Queue.Top);
         Queue.Is_Empty := Queue.Top = Queue.Free;
      end Dequeue;

   end Protected_Queue;
end Packages;
