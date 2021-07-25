generic
   type Element is private;

package Packages is

   --  Blocker to allow sending Map to other Routers
   protected type Blocker (Initial : Natural) is
      function Is_Shutdown return Boolean;

      procedure Shutdown;
      procedure Allow;

      entry Wait;
   private
      Guard : Integer := (if Initial >= 0 then Initial else 0);
   end Blocker;

   --  Queue
   type Queue_Type is limited private;

   protected type Protected_Queue is

      function Is_Empty return Boolean;
      function Is_Full  return Boolean;

      procedure Empty_Queue;

      entry Enqueue (Item :     Element);
      entry Dequeue (Item : out Element);

   private
      Queue : Queue_Type;
   end Protected_Queue;

private
   type Index is mod 500;
   type List is array (Index) of Element;
   type Queue_Type is record
      Top, Free : Index   := Index'First;
      Is_Empty  : Boolean := True;
      Elements  : List;
   end record;
end Packages;
