pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 12.2.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   GNAT_Version_Address : constant System.Address := GNAT_Version'Address;
   pragma Export (C, GNAT_Version_Address, "__gnat_version_address");

   Ada_Main_Program_Name : constant String := "_ada_hangmain" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#88c1ec3c#;
   pragma Export (C, u00001, "hangmainB");
   u00002 : constant Version_32 := 16#7320ff5f#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#3df4f68d#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00005, "ada__charactersS");
   u00006 : constant Version_32 := 16#a5e53111#;
   pragma Export (C, u00006, "ada__characters__handlingB");
   u00007 : constant Version_32 := 16#763c2a94#;
   pragma Export (C, u00007, "ada__characters__handlingS");
   u00008 : constant Version_32 := 16#cde9ea2d#;
   pragma Export (C, u00008, "ada__characters__latin_1S");
   u00009 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00009, "ada__stringsS");
   u00010 : constant Version_32 := 16#2ffa5114#;
   pragma Export (C, u00010, "systemS");
   u00011 : constant Version_32 := 16#c71e6c8a#;
   pragma Export (C, u00011, "system__exception_tableB");
   u00012 : constant Version_32 := 16#a2d1270d#;
   pragma Export (C, u00012, "system__exception_tableS");
   u00013 : constant Version_32 := 16#fd5f5f4c#;
   pragma Export (C, u00013, "system__soft_linksB");
   u00014 : constant Version_32 := 16#67282c00#;
   pragma Export (C, u00014, "system__soft_linksS");
   u00015 : constant Version_32 := 16#e12f1eb0#;
   pragma Export (C, u00015, "system__secondary_stackB");
   u00016 : constant Version_32 := 16#f42d7844#;
   pragma Export (C, u00016, "system__secondary_stackS");
   u00017 : constant Version_32 := 16#f6aace80#;
   pragma Export (C, u00017, "ada__exceptionsB");
   u00018 : constant Version_32 := 16#73e2da19#;
   pragma Export (C, u00018, "ada__exceptionsS");
   u00019 : constant Version_32 := 16#0740df23#;
   pragma Export (C, u00019, "ada__exceptions__last_chance_handlerB");
   u00020 : constant Version_32 := 16#6dc27684#;
   pragma Export (C, u00020, "ada__exceptions__last_chance_handlerS");
   u00021 : constant Version_32 := 16#1d5fee26#;
   pragma Export (C, u00021, "system__exceptionsS");
   u00022 : constant Version_32 := 16#69416224#;
   pragma Export (C, u00022, "system__exceptions__machineB");
   u00023 : constant Version_32 := 16#8bdfdbe3#;
   pragma Export (C, u00023, "system__exceptions__machineS");
   u00024 : constant Version_32 := 16#7706238d#;
   pragma Export (C, u00024, "system__exceptions_debugB");
   u00025 : constant Version_32 := 16#1ff40947#;
   pragma Export (C, u00025, "system__exceptions_debugS");
   u00026 : constant Version_32 := 16#9f73225f#;
   pragma Export (C, u00026, "system__img_intS");
   u00027 : constant Version_32 := 16#ec4fa52d#;
   pragma Export (C, u00027, "system__storage_elementsB");
   u00028 : constant Version_32 := 16#42744ee0#;
   pragma Export (C, u00028, "system__storage_elementsS");
   u00029 : constant Version_32 := 16#5c7d9c20#;
   pragma Export (C, u00029, "system__tracebackB");
   u00030 : constant Version_32 := 16#a960a5a9#;
   pragma Export (C, u00030, "system__tracebackS");
   u00031 : constant Version_32 := 16#5f6b6486#;
   pragma Export (C, u00031, "system__traceback_entriesB");
   u00032 : constant Version_32 := 16#e7e6ee98#;
   pragma Export (C, u00032, "system__traceback_entriesS");
   u00033 : constant Version_32 := 16#b7a650b8#;
   pragma Export (C, u00033, "system__traceback__symbolicB");
   u00034 : constant Version_32 := 16#d9e66ad1#;
   pragma Export (C, u00034, "system__traceback__symbolicS");
   u00035 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00035, "ada__containersS");
   u00036 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00036, "ada__exceptions__tracebackB");
   u00037 : constant Version_32 := 16#eb07882c#;
   pragma Export (C, u00037, "ada__exceptions__tracebackS");
   u00038 : constant Version_32 := 16#a828b371#;
   pragma Export (C, u00038, "system__bounded_stringsB");
   u00039 : constant Version_32 := 16#5807700d#;
   pragma Export (C, u00039, "system__bounded_stringsS");
   u00040 : constant Version_32 := 16#7168674a#;
   pragma Export (C, u00040, "system__crtlS");
   u00041 : constant Version_32 := 16#821dff88#;
   pragma Export (C, u00041, "system__parametersB");
   u00042 : constant Version_32 := 16#fb6ef5b2#;
   pragma Export (C, u00042, "system__parametersS");
   u00043 : constant Version_32 := 16#173d8a0c#;
   pragma Export (C, u00043, "system__dwarf_linesB");
   u00044 : constant Version_32 := 16#c85c6402#;
   pragma Export (C, u00044, "system__dwarf_linesS");
   u00045 : constant Version_32 := 16#edec285f#;
   pragma Export (C, u00045, "interfacesS");
   u00046 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00046, "system__address_imageB");
   u00047 : constant Version_32 := 16#8e16cc2e#;
   pragma Export (C, u00047, "system__address_imageS");
   u00048 : constant Version_32 := 16#89c1bc27#;
   pragma Export (C, u00048, "system__img_unsS");
   u00049 : constant Version_32 := 16#d5d02e4d#;
   pragma Export (C, u00049, "system__unsigned_typesS");
   u00050 : constant Version_32 := 16#20ec7aa3#;
   pragma Export (C, u00050, "system__ioB");
   u00051 : constant Version_32 := 16#b1b8a65b#;
   pragma Export (C, u00051, "system__ioS");
   u00052 : constant Version_32 := 16#b25b689d#;
   pragma Export (C, u00052, "system__mmapB");
   u00053 : constant Version_32 := 16#690f8685#;
   pragma Export (C, u00053, "system__mmapS");
   u00054 : constant Version_32 := 16#367911c4#;
   pragma Export (C, u00054, "ada__io_exceptionsS");
   u00055 : constant Version_32 := 16#2e05e25c#;
   pragma Export (C, u00055, "system__mmap__os_interfaceB");
   u00056 : constant Version_32 := 16#52ab6463#;
   pragma Export (C, u00056, "system__mmap__os_interfaceS");
   u00057 : constant Version_32 := 16#3d77d417#;
   pragma Export (C, u00057, "system__os_libB");
   u00058 : constant Version_32 := 16#d596814b#;
   pragma Export (C, u00058, "system__os_libS");
   u00059 : constant Version_32 := 16#6e5d049a#;
   pragma Export (C, u00059, "system__atomic_operations__test_and_setB");
   u00060 : constant Version_32 := 16#57acee8e#;
   pragma Export (C, u00060, "system__atomic_operations__test_and_setS");
   u00061 : constant Version_32 := 16#e8992b31#;
   pragma Export (C, u00061, "system__atomic_operationsS");
   u00062 : constant Version_32 := 16#29cc6115#;
   pragma Export (C, u00062, "system__atomic_primitivesB");
   u00063 : constant Version_32 := 16#166dca5e#;
   pragma Export (C, u00063, "system__atomic_primitivesS");
   u00064 : constant Version_32 := 16#7f1e3740#;
   pragma Export (C, u00064, "interfaces__cB");
   u00065 : constant Version_32 := 16#1bfc3385#;
   pragma Export (C, u00065, "interfaces__cS");
   u00066 : constant Version_32 := 16#b98923bf#;
   pragma Export (C, u00066, "system__case_utilB");
   u00067 : constant Version_32 := 16#e0e98641#;
   pragma Export (C, u00067, "system__case_utilS");
   u00068 : constant Version_32 := 16#256dbbe5#;
   pragma Export (C, u00068, "system__stringsB");
   u00069 : constant Version_32 := 16#b478510c#;
   pragma Export (C, u00069, "system__stringsS");
   u00070 : constant Version_32 := 16#51051765#;
   pragma Export (C, u00070, "system__object_readerB");
   u00071 : constant Version_32 := 16#c078f482#;
   pragma Export (C, u00071, "system__object_readerS");
   u00072 : constant Version_32 := 16#e2c1e020#;
   pragma Export (C, u00072, "system__val_lliS");
   u00073 : constant Version_32 := 16#f4914cf4#;
   pragma Export (C, u00073, "system__val_lluS");
   u00074 : constant Version_32 := 16#273bd629#;
   pragma Export (C, u00074, "system__val_utilB");
   u00075 : constant Version_32 := 16#ade4c7b2#;
   pragma Export (C, u00075, "system__val_utilS");
   u00076 : constant Version_32 := 16#bad10b33#;
   pragma Export (C, u00076, "system__exception_tracesB");
   u00077 : constant Version_32 := 16#c3623872#;
   pragma Export (C, u00077, "system__exception_tracesS");
   u00078 : constant Version_32 := 16#18d2bd93#;
   pragma Export (C, u00078, "system__win32S");
   u00079 : constant Version_32 := 16#fd158a37#;
   pragma Export (C, u00079, "system__wch_conB");
   u00080 : constant Version_32 := 16#f6f97277#;
   pragma Export (C, u00080, "system__wch_conS");
   u00081 : constant Version_32 := 16#5c289972#;
   pragma Export (C, u00081, "system__wch_stwB");
   u00082 : constant Version_32 := 16#dbe85e76#;
   pragma Export (C, u00082, "system__wch_stwS");
   u00083 : constant Version_32 := 16#002bec7b#;
   pragma Export (C, u00083, "system__wch_cnvB");
   u00084 : constant Version_32 := 16#f039b807#;
   pragma Export (C, u00084, "system__wch_cnvS");
   u00085 : constant Version_32 := 16#e538de43#;
   pragma Export (C, u00085, "system__wch_jisB");
   u00086 : constant Version_32 := 16#458eda2d#;
   pragma Export (C, u00086, "system__wch_jisS");
   u00087 : constant Version_32 := 16#37c92568#;
   pragma Export (C, u00087, "system__soft_links__initializeB");
   u00088 : constant Version_32 := 16#2ed17187#;
   pragma Export (C, u00088, "system__soft_links__initializeS");
   u00089 : constant Version_32 := 16#8599b27b#;
   pragma Export (C, u00089, "system__stack_checkingB");
   u00090 : constant Version_32 := 16#49f58f1e#;
   pragma Export (C, u00090, "system__stack_checkingS");
   u00091 : constant Version_32 := 16#6424b9ce#;
   pragma Export (C, u00091, "ada__strings__mapsB");
   u00092 : constant Version_32 := 16#5349602c#;
   pragma Export (C, u00092, "ada__strings__mapsS");
   u00093 : constant Version_32 := 16#96b40646#;
   pragma Export (C, u00093, "system__bit_opsB");
   u00094 : constant Version_32 := 16#e209fd28#;
   pragma Export (C, u00094, "system__bit_opsS");
   u00095 : constant Version_32 := 16#88fa2db0#;
   pragma Export (C, u00095, "ada__strings__maps__constantsS");
   u00096 : constant Version_32 := 16#f64b89a4#;
   pragma Export (C, u00096, "ada__integer_text_ioB");
   u00097 : constant Version_32 := 16#5e9ebd8f#;
   pragma Export (C, u00097, "ada__integer_text_ioS");
   u00098 : constant Version_32 := 16#e56aa583#;
   pragma Export (C, u00098, "ada__text_ioB");
   u00099 : constant Version_32 := 16#d3e7245e#;
   pragma Export (C, u00099, "ada__text_ioS");
   u00100 : constant Version_32 := 16#b4f41810#;
   pragma Export (C, u00100, "ada__streamsB");
   u00101 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00101, "ada__streamsS");
   u00102 : constant Version_32 := 16#a94883d4#;
   pragma Export (C, u00102, "ada__strings__text_buffersB");
   u00103 : constant Version_32 := 16#bb49bb93#;
   pragma Export (C, u00103, "ada__strings__text_buffersS");
   u00104 : constant Version_32 := 16#7e7d940a#;
   pragma Export (C, u00104, "ada__strings__utf_encodingB");
   u00105 : constant Version_32 := 16#84aa91b0#;
   pragma Export (C, u00105, "ada__strings__utf_encodingS");
   u00106 : constant Version_32 := 16#d1d1ed0b#;
   pragma Export (C, u00106, "ada__strings__utf_encoding__wide_stringsB");
   u00107 : constant Version_32 := 16#a373d741#;
   pragma Export (C, u00107, "ada__strings__utf_encoding__wide_stringsS");
   u00108 : constant Version_32 := 16#c2b98963#;
   pragma Export (C, u00108, "ada__strings__utf_encoding__wide_wide_stringsB");
   u00109 : constant Version_32 := 16#22a4a396#;
   pragma Export (C, u00109, "ada__strings__utf_encoding__wide_wide_stringsS");
   u00110 : constant Version_32 := 16#c3fbe91b#;
   pragma Export (C, u00110, "ada__tagsB");
   u00111 : constant Version_32 := 16#8bc79dfc#;
   pragma Export (C, u00111, "ada__tagsS");
   u00112 : constant Version_32 := 16#3548d972#;
   pragma Export (C, u00112, "system__htableB");
   u00113 : constant Version_32 := 16#ae2309ff#;
   pragma Export (C, u00113, "system__htableS");
   u00114 : constant Version_32 := 16#1f1abe38#;
   pragma Export (C, u00114, "system__string_hashB");
   u00115 : constant Version_32 := 16#09668980#;
   pragma Export (C, u00115, "system__string_hashS");
   u00116 : constant Version_32 := 16#5fc04ee2#;
   pragma Export (C, u00116, "system__put_imagesB");
   u00117 : constant Version_32 := 16#83f9eaa8#;
   pragma Export (C, u00117, "system__put_imagesS");
   u00118 : constant Version_32 := 16#22b9eb9f#;
   pragma Export (C, u00118, "ada__strings__text_buffers__utilsB");
   u00119 : constant Version_32 := 16#608bd105#;
   pragma Export (C, u00119, "ada__strings__text_buffers__utilsS");
   u00120 : constant Version_32 := 16#73d2d764#;
   pragma Export (C, u00120, "interfaces__c_streamsB");
   u00121 : constant Version_32 := 16#82d73129#;
   pragma Export (C, u00121, "interfaces__c_streamsS");
   u00122 : constant Version_32 := 16#1aa716c1#;
   pragma Export (C, u00122, "system__file_ioB");
   u00123 : constant Version_32 := 16#53589441#;
   pragma Export (C, u00123, "system__file_ioS");
   u00124 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00124, "ada__finalizationS");
   u00125 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00125, "system__finalization_rootB");
   u00126 : constant Version_32 := 16#60082284#;
   pragma Export (C, u00126, "system__finalization_rootS");
   u00127 : constant Version_32 := 16#8d0ba605#;
   pragma Export (C, u00127, "system__file_control_blockS");
   u00128 : constant Version_32 := 16#44bc8f6a#;
   pragma Export (C, u00128, "ada__text_io__generic_auxB");
   u00129 : constant Version_32 := 16#38ee6479#;
   pragma Export (C, u00129, "ada__text_io__generic_auxS");
   u00130 : constant Version_32 := 16#e60dd2ea#;
   pragma Export (C, u00130, "system__img_biuS");
   u00131 : constant Version_32 := 16#ab531534#;
   pragma Export (C, u00131, "system__img_llbS");
   u00132 : constant Version_32 := 16#15e60e4c#;
   pragma Export (C, u00132, "system__img_lliS");
   u00133 : constant Version_32 := 16#dca2e046#;
   pragma Export (C, u00133, "system__img_lllbS");
   u00134 : constant Version_32 := 16#7e360bb4#;
   pragma Export (C, u00134, "system__img_llliS");
   u00135 : constant Version_32 := 16#d6d6f94a#;
   pragma Export (C, u00135, "system__img_lllwS");
   u00136 : constant Version_32 := 16#f761603f#;
   pragma Export (C, u00136, "system__img_llwS");
   u00137 : constant Version_32 := 16#d9d769d8#;
   pragma Export (C, u00137, "system__img_wiuS");
   u00138 : constant Version_32 := 16#cd395e6d#;
   pragma Export (C, u00138, "system__val_intS");
   u00139 : constant Version_32 := 16#d65e9e1e#;
   pragma Export (C, u00139, "system__val_unsS");
   u00140 : constant Version_32 := 16#ba182efc#;
   pragma Export (C, u00140, "system__val_llliS");
   u00141 : constant Version_32 := 16#c22f2d2e#;
   pragma Export (C, u00141, "system__val_llluS");
   u00142 : constant Version_32 := 16#f2c63a02#;
   pragma Export (C, u00142, "ada__numericsS");
   u00143 : constant Version_32 := 16#cf7bfc56#;
   pragma Export (C, u00143, "ada__strings__unboundedB");
   u00144 : constant Version_32 := 16#90de6517#;
   pragma Export (C, u00144, "ada__strings__unboundedS");
   u00145 : constant Version_32 := 16#d756f34d#;
   pragma Export (C, u00145, "ada__strings__searchB");
   u00146 : constant Version_32 := 16#dcefc5ee#;
   pragma Export (C, u00146, "ada__strings__searchS");
   u00147 : constant Version_32 := 16#190570e0#;
   pragma Export (C, u00147, "system__compare_array_unsigned_8B");
   u00148 : constant Version_32 := 16#bf1ccf77#;
   pragma Export (C, u00148, "system__compare_array_unsigned_8S");
   u00149 : constant Version_32 := 16#74e358eb#;
   pragma Export (C, u00149, "system__address_operationsB");
   u00150 : constant Version_32 := 16#51ce7db4#;
   pragma Export (C, u00150, "system__address_operationsS");
   u00151 : constant Version_32 := 16#a8ed4e2b#;
   pragma Export (C, u00151, "system__atomic_countersB");
   u00152 : constant Version_32 := 16#f3e2bed7#;
   pragma Export (C, u00152, "system__atomic_countersS");
   u00153 : constant Version_32 := 16#d50f3cfb#;
   pragma Export (C, u00153, "system__stream_attributesB");
   u00154 : constant Version_32 := 16#33947678#;
   pragma Export (C, u00154, "system__stream_attributesS");
   u00155 : constant Version_32 := 16#d998b4f3#;
   pragma Export (C, u00155, "system__stream_attributes__xdrB");
   u00156 : constant Version_32 := 16#42985e70#;
   pragma Export (C, u00156, "system__stream_attributes__xdrS");
   u00157 : constant Version_32 := 16#ecc88e78#;
   pragma Export (C, u00157, "system__fat_fltS");
   u00158 : constant Version_32 := 16#cafa8775#;
   pragma Export (C, u00158, "system__fat_lfltS");
   u00159 : constant Version_32 := 16#b02a299f#;
   pragma Export (C, u00159, "system__fat_llfS");
   u00160 : constant Version_32 := 16#d5def3ad#;
   pragma Export (C, u00160, "ada__text_io__unbounded_ioS");
   u00161 : constant Version_32 := 16#71628fea#;
   pragma Export (C, u00161, "ada__strings__unbounded__text_ioB");
   u00162 : constant Version_32 := 16#a04298a1#;
   pragma Export (C, u00162, "ada__strings__unbounded__text_ioS");
   u00163 : constant Version_32 := 16#52822c32#;
   pragma Export (C, u00163, "hangmanB");
   u00164 : constant Version_32 := 16#9c58c35b#;
   pragma Export (C, u00164, "hangmanS");
   u00165 : constant Version_32 := 16#2fb34529#;
   pragma Export (C, u00165, "system__assertionsB");
   u00166 : constant Version_32 := 16#09f92e8f#;
   pragma Export (C, u00166, "system__assertionsS");
   u00167 : constant Version_32 := 16#8b2c6428#;
   pragma Export (C, u00167, "ada__assertionsB");
   u00168 : constant Version_32 := 16#cc3ec2fd#;
   pragma Export (C, u00168, "ada__assertionsS");
   u00169 : constant Version_32 := 16#787ee153#;
   pragma Export (C, u00169, "system__random_numbersB");
   u00170 : constant Version_32 := 16#4fb7bbe5#;
   pragma Export (C, u00170, "system__random_numbersS");
   u00171 : constant Version_32 := 16#a778ef81#;
   pragma Export (C, u00171, "system__random_seedB");
   u00172 : constant Version_32 := 16#c3b30278#;
   pragma Export (C, u00172, "system__random_seedS");
   u00173 : constant Version_32 := 16#49218ed0#;
   pragma Export (C, u00173, "ada__calendarB");
   u00174 : constant Version_32 := 16#8324cd02#;
   pragma Export (C, u00174, "ada__calendarS");
   u00175 : constant Version_32 := 16#24ec69e6#;
   pragma Export (C, u00175, "system__os_primitivesB");
   u00176 : constant Version_32 := 16#280734e2#;
   pragma Export (C, u00176, "system__os_primitivesS");
   u00177 : constant Version_32 := 16#92ebd951#;
   pragma Export (C, u00177, "system__arith_64B");
   u00178 : constant Version_32 := 16#03456ed5#;
   pragma Export (C, u00178, "system__arith_64S");
   u00179 : constant Version_32 := 16#174f5472#;
   pragma Export (C, u00179, "ada__numerics__big_numbersS");
   u00180 : constant Version_32 := 16#7d808794#;
   pragma Export (C, u00180, "system__task_lockB");
   u00181 : constant Version_32 := 16#4e70667a#;
   pragma Export (C, u00181, "system__task_lockS");
   u00182 : constant Version_32 := 16#b8c476a4#;
   pragma Export (C, u00182, "system__win32__extS");
   u00183 : constant Version_32 := 16#35d6ef80#;
   pragma Export (C, u00183, "system__storage_poolsB");
   u00184 : constant Version_32 := 16#14c1e353#;
   pragma Export (C, u00184, "system__storage_poolsS");
   u00185 : constant Version_32 := 16#7240794d#;
   pragma Export (C, u00185, "system__storage_pools__subpoolsB");
   u00186 : constant Version_32 := 16#6402a21c#;
   pragma Export (C, u00186, "system__storage_pools__subpoolsS");
   u00187 : constant Version_32 := 16#ee52fa88#;
   pragma Export (C, u00187, "system__finalization_mastersB");
   u00188 : constant Version_32 := 16#a9a96467#;
   pragma Export (C, u00188, "system__finalization_mastersS");
   u00189 : constant Version_32 := 16#b0df1928#;
   pragma Export (C, u00189, "system__storage_pools__subpools__finalizationB");
   u00190 : constant Version_32 := 16#562129f7#;
   pragma Export (C, u00190, "system__storage_pools__subpools__finalizationS");
   u00191 : constant Version_32 := 16#7c78c3c5#;
   pragma Export (C, u00191, "system__pool_globalB");
   u00192 : constant Version_32 := 16#3afeee19#;
   pragma Export (C, u00192, "system__pool_globalS");
   u00193 : constant Version_32 := 16#1982dcd0#;
   pragma Export (C, u00193, "system__memoryB");
   u00194 : constant Version_32 := 16#747e63c4#;
   pragma Export (C, u00194, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_operations%s
   --  system.img_int%s
   --  system.img_lli%s
   --  system.img_llli%s
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_biu%s
   --  system.img_llb%s
   --  system.img_lllb%s
   --  system.img_lllw%s
   --  system.img_llw%s
   --  system.img_uns%s
   --  system.img_wiu%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.traceback%s
   --  system.traceback%b
   --  ada.characters.handling%s
   --  system.atomic_operations.test_and_set%s
   --  system.case_util%s
   --  system.os_lib%s
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.bounded_strings%s
   --  system.bounded_strings%b
   --  system.case_util%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.containers%s
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.maps.constants%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.atomic_primitives%s
   --  system.atomic_primitives%b
   --  system.exceptions%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.win32%s
   --  ada.characters.handling%b
   --  system.atomic_operations.test_and_set%b
   --  system.exception_traces%s
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.mmap%s
   --  system.mmap.os_interface%s
   --  system.mmap.os_interface%b
   --  system.mmap%b
   --  system.object_reader%s
   --  system.object_reader%b
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  system.os_lib%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.assertions%s
   --  ada.assertions%b
   --  ada.numerics%s
   --  ada.numerics.big_numbers%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.utf_encoding%s
   --  ada.strings.utf_encoding%b
   --  ada.strings.utf_encoding.wide_strings%s
   --  ada.strings.utf_encoding.wide_strings%b
   --  ada.strings.utf_encoding.wide_wide_strings%s
   --  ada.strings.utf_encoding.wide_wide_strings%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.strings.text_buffers%s
   --  ada.strings.text_buffers%b
   --  ada.strings.text_buffers.utils%s
   --  ada.strings.text_buffers.utils%b
   --  system.arith_64%s
   --  system.arith_64%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.fat_flt%s
   --  system.fat_lflt%s
   --  system.fat_llf%s
   --  system.put_images%s
   --  system.put_images%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.storage_pools.subpools%b
   --  system.stream_attributes%s
   --  system.stream_attributes.xdr%s
   --  system.stream_attributes.xdr%b
   --  system.stream_attributes%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.task_lock%s
   --  system.task_lock%b
   --  system.val_lllu%s
   --  system.val_llli%s
   --  system.val_uns%s
   --  system.val_int%s
   --  system.win32.ext%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.strings.unbounded.text_io%s
   --  ada.strings.unbounded.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.integer_text_io%s
   --  ada.integer_text_io%b
   --  ada.text_io.unbounded_io%s
   --  system.assertions%s
   --  system.assertions%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.random_seed%s
   --  system.random_seed%b
   --  system.random_numbers%s
   --  system.random_numbers%b
   --  hangman%s
   --  hangman%b
   --  hangmain%b
   --  END ELABORATION ORDER

end ada_main;
