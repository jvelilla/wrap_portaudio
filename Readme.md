# wrap_portaudio
`wrap_portaudio` is an Eiffel binding of [PortAudio](https://github.com/PortAudio/portaudio) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

[PortAudio](https://github.com/PortAudio/portaudio) is a cross-platform, open-source C language library for real-time audio input and output.

## Requirements 


*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [PortAudio](https://github.com/PortAudio/portaudio)


## Download and  Install

### Linux

To Be completed

### Windows
Using vcpkg (https://github.com/microsoft/vcpkg) tool, you can install portaudio library

	vcpkg install portaudio:x64-windows
	
Then copy the `poraudio.lib` to `%LIBRARY_PATH%wrap_library/library/C/lib`
When running the application examples using portaudio library be sure to have in the path `portaudio.dll`.

## Status

Work in progress

## Examples


### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	library/generated_wrapper/c/src

and run

	finish_freezing --library

It will copy the C lib `eif_portaudio.a` to `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib` or `eif_portaudio.lib` to `$ECF_CONFIG_PATH/C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib`

