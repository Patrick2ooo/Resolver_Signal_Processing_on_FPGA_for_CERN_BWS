set_global_assignment -entity "vector_translate" -library "lib_vector_translate" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "vector_translate" -library "lib_vector_translate" -name IP_TOOL_VERSION "23.1"
set_global_assignment -entity "vector_translate" -library "lib_vector_translate" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_vector_translate" -name SPD_FILE [file join $::quartus(sip_path) "../vector_translate.spd"]
set_global_assignment -library "lib_vector_translate" -name MISC_FILE [file join $::quartus(sip_path) "../../vector_translate.qsys"]

set_global_assignment -library "lib_vector_translate" -name MISC_FILE [file join $::quartus(sip_path) "vector_translate.vhd"]
set_global_assignment -library "lib_vector_translate" -name MISC_FILE [file join $::quartus(sip_path) "submodules/dspba_library_package.vhd"]
set_global_assignment -library "lib_vector_translate" -name MISC_FILE [file join $::quartus(sip_path) "submodules/dspba_library.vhd"]
set_global_assignment -library "lib_vector_translate" -name MISC_FILE [file join $::quartus(sip_path) "submodules/vector_translate_CORDIC_0.vhd"]
