pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_routers.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_routers.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E072 : Short_Integer; pragma Import (Ada, E072, "system__os_lib_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E068 : Short_Integer; pragma Import (Ada, E068, "ada__io_exceptions_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "ada__strings_E");
   E040 : Short_Integer; pragma Import (Ada, E040, "ada__containers_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__secondary_stack_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "interfaces__c_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__strings__maps_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "ada__strings__maps__constants_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "system__object_reader_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "system__dwarf_lines_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "system__traceback__symbolic_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "ada__numerics_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "interfaces__c__strings_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "system__task_info_E");
   E112 : Short_Integer; pragma Import (Ada, E112, "ada__tags_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "ada__streams_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "system__file_control_block_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "system__finalization_root_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "ada__finalization_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "system__file_io_E");
   E239 : Short_Integer; pragma Import (Ada, E239, "system__storage_pools_E");
   E235 : Short_Integer; pragma Import (Ada, E235, "system__finalization_masters_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "system__storage_pools__subpools_E");
   E258 : Short_Integer; pragma Import (Ada, E258, "ada__strings__unbounded_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__calendar_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__calendar__delays_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "ada__real_time_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "ada__text_io_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "gnat__directory_operations_E");
   E268 : Short_Integer; pragma Import (Ada, E268, "system__pool_global_E");
   E284 : Short_Integer; pragma Import (Ada, E284, "system__random_seed_E");
   E275 : Short_Integer; pragma Import (Ada, E275, "system__regexp_E");
   E256 : Short_Integer; pragma Import (Ada, E256, "gnat__command_line_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "system__tasking__initialization_E");
   E217 : Short_Integer; pragma Import (Ada, E217, "system__tasking__protected_objects_E");
   E219 : Short_Integer; pragma Import (Ada, E219, "system__tasking__protected_objects__entries_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "system__tasking__queuing_E");
   E294 : Short_Integer; pragma Import (Ada, E294, "system__tasking__stages_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "exceptions_E");
   E247 : Short_Integer; pragma Import (Ada, E247, "generic_router_links_E");
   E249 : Short_Integer; pragma Import (Ada, E249, "id_dispenser_E");
   E251 : Short_Integer; pragma Import (Ada, E251, "packages_E");
   E278 : Short_Integer; pragma Import (Ada, E278, "reduce_E");
   E229 : Short_Integer; pragma Import (Ada, E229, "topologies_E");
   E227 : Short_Integer; pragma Import (Ada, E227, "routers_configuration_structures_E");
   E245 : Short_Integer; pragma Import (Ada, E245, "generic_router_E");
   E253 : Short_Integer; pragma Import (Ada, E253, "generic_routers_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "topologies__finalize_body");
      begin
         E229 := E229 - 1;
         F1;
      end;
      E219 := E219 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F2;
      end;
      E275 := E275 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__regexp__finalize_spec");
      begin
         F3;
      end;
      E268 := E268 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__pool_global__finalize_spec");
      begin
         F4;
      end;
      E108 := E108 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "ada__text_io__finalize_spec");
      begin
         F5;
      end;
      E258 := E258 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "ada__strings__unbounded__finalize_spec");
      begin
         F6;
      end;
      E233 := E233 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__storage_pools__subpools__finalize_spec");
      begin
         F7;
      end;
      E235 := E235 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__finalization_masters__finalize_spec");
      begin
         F8;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__file_io__finalize_body");
      begin
         E122 := E122 - 1;
         F9;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, True, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (True, True, False, True, True, False, False, True, 
           False, False, True, True, True, True, False, False, 
           True, True, False, True, True, False, True, True, 
           False, True, True, True, True, False, True, False, 
           False, False, True, False, True, True, False, True, 
           False, True, True, False, True, False, True, True, 
           False, False, True, False, False, False, False, False, 
           True, False, True, False, True, True, True, False, 
           False, True, False, True, True, True, False, True, 
           True, False, True, True, True, True, False, True, 
           True, False, False, False, True, True, True, True, 
           False, True, False),
         Count => (0, 0, 0, 1, 5, 6, 1, 0, 3, 0),
         Unknown => (False, False, False, False, False, False, True, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      System.Scalar_Values.Initialize ('I', 'N');

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E068 := E068 + 1;
      Ada.Strings'Elab_Spec;
      E052 := E052 + 1;
      Ada.Containers'Elab_Spec;
      E040 := E040 + 1;
      System.Exceptions'Elab_Spec;
      E027 := E027 + 1;
      System.Soft_Links'Elab_Body;
      E015 := E015 + 1;
      Interfaces.C'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E072 := E072 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E058 := E058 + 1;
      System.Secondary_Stack'Elab_Body;
      E019 := E019 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E047 := E047 + 1;
      E078 := E078 + 1;
      E054 := E054 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E039 := E039 + 1;
      E080 := E080 + 1;
      Ada.Numerics'Elab_Spec;
      E163 := E163 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E171 := E171 + 1;
      System.Task_Info'Elab_Spec;
      E179 := E179 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E112 := E112 + 1;
      Ada.Streams'Elab_Spec;
      E110 := E110 + 1;
      System.File_Control_Block'Elab_Spec;
      E126 := E126 + 1;
      System.Finalization_Root'Elab_Spec;
      E125 := E125 + 1;
      Ada.Finalization'Elab_Spec;
      E123 := E123 + 1;
      System.File_Io'Elab_Body;
      E122 := E122 + 1;
      System.Storage_Pools'Elab_Spec;
      E239 := E239 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E235 := E235 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E233 := E233 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E258 := E258 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E008 := E008 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E006 := E006 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E165 := E165 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E108 := E108 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      Gnat.Directory_Operations'Elab_Body;
      E263 := E263 + 1;
      System.Pool_Global'Elab_Spec;
      E268 := E268 + 1;
      System.Random_Seed'Elab_Body;
      E284 := E284 + 1;
      System.Regexp'Elab_Spec;
      E275 := E275 + 1;
      Gnat.Command_Line'Elab_Spec;
      Gnat.Command_Line'Elab_Body;
      E256 := E256 + 1;
      System.Tasking.Initialization'Elab_Body;
      E207 := E207 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E217 := E217 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E219 := E219 + 1;
      System.Tasking.Queuing'Elab_Body;
      E215 := E215 + 1;
      System.Tasking.Stages'Elab_Body;
      E294 := E294 + 1;
      E201 := E201 + 1;
      E247 := E247 + 1;
      E249 := E249 + 1;
      E251 := E251 + 1;
      E278 := E278 + 1;
      Topologies'Elab_Spec;
      Topologies'Elab_Body;
      E229 := E229 + 1;
      E227 := E227 + 1;
      E245 := E245 + 1;
      E253 := E253 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_test_routers");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\exceptions.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\generic_router_links.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\id_dispenser.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\packages.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\reduce.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\topologies.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\routers_configuration_structures.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\generic_routers_configuration.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\generic_message_structures.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\generic_router.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\generic_routers.o
   --   C:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\test_routers.o
   --   -LC:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\
   --   -LC:\Users\amand\OneDrive\Documents\ANU\COMP2310 - Systems, Networks and Concurrency\Assignment 2\Routers_template_2020_0.91\Routers_template\Objects\
   --   -LC:/gnat/2017/lib/gcc/i686-pc-mingw32/6.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
