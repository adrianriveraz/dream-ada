pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__hangmain.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__hangmain.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E058 : Short_Integer; pragma Import (Ada, E058, "system__os_lib_E");
   E018 : Short_Integer; pragma Import (Ada, E018, "ada__exceptions_E");
   E014 : Short_Integer; pragma Import (Ada, E014, "system__soft_links_E");
   E012 : Short_Integer; pragma Import (Ada, E012, "system__exception_table_E");
   E035 : Short_Integer; pragma Import (Ada, E035, "ada__containers_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__io_exceptions_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "ada__strings_E");
   E092 : Short_Integer; pragma Import (Ada, E092, "ada__strings__maps_E");
   E095 : Short_Integer; pragma Import (Ada, E095, "ada__strings__maps__constants_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "interfaces__c_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__exceptions_E");
   E071 : Short_Integer; pragma Import (Ada, E071, "system__object_reader_E");
   E044 : Short_Integer; pragma Import (Ada, E044, "system__dwarf_lines_E");
   E088 : Short_Integer; pragma Import (Ada, E088, "system__soft_links__initialize_E");
   E034 : Short_Integer; pragma Import (Ada, E034, "system__traceback__symbolic_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "ada__assertions_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "ada__numerics_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "ada__strings__utf_encoding_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "ada__tags_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "ada__strings__text_buffers_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__streams_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "system__file_control_block_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "system__finalization_root_E");
   E124 : Short_Integer; pragma Import (Ada, E124, "ada__finalization_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "system__file_io_E");
   E184 : Short_Integer; pragma Import (Ada, E184, "system__storage_pools_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "system__finalization_masters_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "system__storage_pools__subpools_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "ada__strings__unbounded_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "ada__calendar_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__text_io_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "system__pool_global_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "system__random_seed_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "hangman_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E164 := E164 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "hangman__finalize_spec");
      begin
         F1;
      end;
      E192 := E192 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__pool_global__finalize_spec");
      begin
         F2;
      end;
      E099 := E099 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__text_io__finalize_spec");
      begin
         F3;
      end;
      E144 := E144 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "ada__strings__unbounded__finalize_spec");
      begin
         F4;
      end;
      E186 := E186 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__storage_pools__subpools__finalize_spec");
      begin
         F5;
      end;
      E188 := E188 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__finalization_masters__finalize_spec");
      begin
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__file_io__finalize_body");
      begin
         E123 := E123 - 1;
         F7;
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
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

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
   pragma Favor_Top_Level (No_Param_Proc);

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
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Exception_Tracebacks_Symbolic : Integer;
      pragma Import (C, Exception_Tracebacks_Symbolic, "__gl_exception_tracebacks_symbolic");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

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
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Exception_Tracebacks_Symbolic := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E012 := E012 + 1;
      Ada.Containers'Elab_Spec;
      E035 := E035 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E054 := E054 + 1;
      Ada.Strings'Elab_Spec;
      E009 := E009 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E092 := E092 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E095 := E095 + 1;
      Interfaces.C'Elab_Spec;
      E065 := E065 + 1;
      System.Exceptions'Elab_Spec;
      E021 := E021 + 1;
      System.Object_Reader'Elab_Spec;
      E071 := E071 + 1;
      System.Dwarf_Lines'Elab_Spec;
      E044 := E044 + 1;
      System.Os_Lib'Elab_Body;
      E058 := E058 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E088 := E088 + 1;
      E014 := E014 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E034 := E034 + 1;
      E018 := E018 + 1;
      Ada.Assertions'Elab_Spec;
      E168 := E168 + 1;
      Ada.Numerics'Elab_Spec;
      E142 := E142 + 1;
      Ada.Strings.Utf_Encoding'Elab_Spec;
      E105 := E105 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E111 := E111 + 1;
      Ada.Strings.Text_Buffers'Elab_Spec;
      E103 := E103 + 1;
      Ada.Streams'Elab_Spec;
      E101 := E101 + 1;
      System.File_Control_Block'Elab_Spec;
      E127 := E127 + 1;
      System.Finalization_Root'Elab_Spec;
      E126 := E126 + 1;
      Ada.Finalization'Elab_Spec;
      E124 := E124 + 1;
      System.File_Io'Elab_Body;
      E123 := E123 + 1;
      System.Storage_Pools'Elab_Spec;
      E184 := E184 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E188 := E188 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E186 := E186 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E144 := E144 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E174 := E174 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E099 := E099 + 1;
      System.Pool_Global'Elab_Spec;
      E192 := E192 + 1;
      System.Random_Seed'Elab_Body;
      E172 := E172 + 1;
      hangman'elab_spec;
      E164 := E164 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_hangmain");

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
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\Users\adria\OneDrive\Documents\GitHub\dream-ada\hangman_1.0.0_be628ad5\obj\hangman.o
   --   C:\Users\adria\OneDrive\Documents\GitHub\dream-ada\hangman_1.0.0_be628ad5\obj\hangmain.o
   --   -LC:\Users\adria\OneDrive\Documents\GitHub\dream-ada\hangman_1.0.0_be628ad5\obj\
   --   -LC:\Users\adria\OneDrive\Documents\GitHub\dream-ada\hangman_1.0.0_be628ad5\obj\
   --   -LC:/users/adria/.config/alire/cache/dependencies/gnat_native_12.2.1_c210a022/lib/gcc/x86_64-w64-mingw32/12.2.0/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
