--  Configuration for hangman generated by Alire
pragma Restrictions (No_Elaboration_Code);
pragma Style_Checks (Off);

package Hangman_Config is
   pragma Pure;

   Crate_Version : constant String := "1.0.0";
   Crate_Name : constant String := "hangman";

   Alire_Host_OS : constant String := "windows";

   Alire_Host_Arch : constant String := "x86_64";

   Alire_Host_Distro : constant String := "msys2";

   type Build_Profile_Kind is (release, validation, development);
   Build_Profile : constant Build_Profile_Kind := development;

end Hangman_Config;
