set_global_assignment -entity "atan2" -library "lib_atan2" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "atan2" -library "lib_atan2" -name IP_TOOL_VERSION "23.1"
set_global_assignment -entity "atan2" -library "lib_atan2" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_atan2" -name SPD_FILE [file join $::quartus(sip_path) "../atan2.spd"]
set_global_assignment -library "lib_atan2" -name MISC_FILE [file join $::quartus(sip_path) "../../atan2.qsys"]

set_global_assignment -library "lib_atan2" -name MISC_FILE [file join $::quartus(sip_path) "atan2.vhd"]
set_global_assignment -library "lib_atan2" -name MISC_FILE [file join $::quartus(sip_path) "submodules/dspba_library_package.vhd"]
set_global_assignment -library "lib_atan2" -name MISC_FILE [file join $::quartus(sip_path) "submodules/dspba_library.vhd"]
set_global_assignment -library "lib_atan2" -name MISC_FILE [file join $::quartus(sip_path) "submodules/atan2_CORDIC_0.vhd"]
