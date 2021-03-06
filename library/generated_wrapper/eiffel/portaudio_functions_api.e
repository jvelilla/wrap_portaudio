note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class PORTAUDIO_FUNCTIONS_API


feature -- Access

	pa_get_version: INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetVersion ();
			]"
		end

	pa_get_version_text: POINTER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetVersionText ();
			]"
		end

	pa_get_version_info: detachable PA_VERSION_INFO_STRUCT_API 
		do
			if attached c_pa_get_version_info as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	pa_get_error_text (errorcode: INTEGER): POINTER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetErrorText ((PaError)$errorcode);
			]"
		end

	pa_initialize: INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_Initialize ();
			]"
		end

	pa_terminate: INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_Terminate ();
			]"
		end

	pa_get_host_api_count: INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetHostApiCount ();
			]"
		end

	pa_get_default_host_api: INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetDefaultHostApi ();
			]"
		end

	pa_get_host_api_info (hostapi: INTEGER): POINTER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetHostApiInfo ((PaHostApiIndex)$hostapi);
			]"
		end

	pa_host_api_type_id_to_host_api_index (type: INTEGER): INTEGER 
		do
			Result := c_pa_host_api_type_id_to_host_api_index (type)
		ensure
			instance_free: class
		end

	pa_host_api_device_index_to_device_index (hostapi: INTEGER; hostapideviceindex: INTEGER): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_HostApiDeviceIndexToDeviceIndex ((PaHostApiIndex)$hostapi, (int)$hostapideviceindex);
			]"
		end

	pa_get_last_host_error_info: detachable PA_HOST_ERROR_INFO_STRUCT_API 
		do
			if attached c_pa_get_last_host_error_info as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	pa_get_device_count: INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetDeviceCount ();
			]"
		end

	pa_get_default_input_device: INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetDefaultInputDevice ();
			]"
		end

	pa_get_default_output_device: INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetDefaultOutputDevice ();
			]"
		end

	pa_get_device_info (device: INTEGER): POINTER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetDeviceInfo ((PaDeviceIndex)$device);
			]"
		end

	pa_is_format_supported (inputparameters: PA_STREAM_PARAMETERS_STRUCT_API; outputparameters: PA_STREAM_PARAMETERS_STRUCT_API; samplerate: REAL_64): INTEGER 
		do
			Result := c_pa_is_format_supported (inputparameters.item, outputparameters.item, samplerate)
		ensure
			instance_free: class
		end

	pa_open_stream (stream: POINTER; inputparameters: PA_STREAM_PARAMETERS_STRUCT_API; outputparameters: PA_STREAM_PARAMETERS_STRUCT_API; samplerate: REAL_64; framesperbuffer: NATURAL_64; streamflags: NATURAL_64; streamcallback: POINTER; userdata: POINTER): INTEGER 
		do
			Result := c_pa_open_stream (stream, inputparameters.item, outputparameters.item, samplerate, framesperbuffer, streamflags, streamcallback, userdata)
		ensure
			instance_free: class
		end

	pa_open_default_stream (stream: POINTER; numinputchannels: INTEGER; numoutputchannels: INTEGER; sampleformat: NATURAL_64; samplerate: REAL_64; framesperbuffer: NATURAL_64; streamcallback: POINTER; userdata: POINTER): INTEGER 
		do
			Result := c_pa_open_default_stream (stream, numinputchannels, numoutputchannels, sampleformat, samplerate, framesperbuffer, streamcallback, userdata)
		ensure
			instance_free: class
		end

	pa_close_stream (stream: POINTER): INTEGER 
		do
			Result := c_pa_close_stream (stream)
		ensure
			instance_free: class
		end

	pa_set_stream_finished_callback (stream: POINTER; streamfinishedcallback: POINTER): INTEGER 
		do
			Result := c_pa_set_stream_finished_callback (stream, streamfinishedcallback)
		ensure
			instance_free: class
		end

	pa_start_stream (stream: POINTER): INTEGER 
		do
			Result := c_pa_start_stream (stream)
		ensure
			instance_free: class
		end

	pa_stop_stream (stream: POINTER): INTEGER 
		do
			Result := c_pa_stop_stream (stream)
		ensure
			instance_free: class
		end

	pa_abort_stream (stream: POINTER): INTEGER 
		do
			Result := c_pa_abort_stream (stream)
		ensure
			instance_free: class
		end

	pa_is_stream_stopped (stream: POINTER): INTEGER 
		do
			Result := c_pa_is_stream_stopped (stream)
		ensure
			instance_free: class
		end

	pa_is_stream_active (stream: POINTER): INTEGER 
		do
			Result := c_pa_is_stream_active (stream)
		ensure
			instance_free: class
		end

	pa_get_stream_info (stream: POINTER): detachable PA_STREAM_INFO_STRUCT_API 
		do
			if attached c_pa_get_stream_info (stream) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		ensure
			instance_free: class
		end

	pa_get_stream_time (stream: POINTER): REAL_64 
		do
			Result := c_pa_get_stream_time (stream)
		ensure
			instance_free: class
		end

	pa_get_stream_cpu_load (stream: POINTER): REAL_64 
		do
			Result := c_pa_get_stream_cpu_load (stream)
		ensure
			instance_free: class
		end

	pa_read_stream (stream: POINTER; buffer: POINTER; frames: NATURAL_64): INTEGER 
		do
			Result := c_pa_read_stream (stream, buffer, frames)
		ensure
			instance_free: class
		end

	pa_write_stream (stream: POINTER; buffer: POINTER; frames: NATURAL_64): INTEGER 
		do
			Result := c_pa_write_stream (stream, buffer, frames)
		ensure
			instance_free: class
		end

	pa_get_stream_read_available (stream: POINTER): INTEGER_64 
		do
			Result := c_pa_get_stream_read_available (stream)
		ensure
			instance_free: class
		end

	pa_get_stream_write_available (stream: POINTER): INTEGER_64 
		do
			Result := c_pa_get_stream_write_available (stream)
		ensure
			instance_free: class
		end

	pa_get_sample_size (format: NATURAL_64): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetSampleSize ((PaSampleFormat)$format);
			]"
		end

	pa_sleep (msec: INTEGER_64)
		external
			"C inline use <portaudio.h>"
		alias
			"[
				Pa_Sleep ((long)$msec);
			]"
		end

feature -- Externals

	c_pa_get_version_info: POINTER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetVersionInfo ();
			]"
		end

	c_pa_host_api_type_id_to_host_api_index (type: INTEGER): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_HostApiTypeIdToHostApiIndex ((PaHostApiTypeId)$type);
			]"
		end

	c_pa_get_last_host_error_info: POINTER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetLastHostErrorInfo ();
			]"
		end

	c_pa_is_format_supported (inputparameters: POINTER; outputparameters: POINTER; samplerate: REAL_64): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_IsFormatSupported ((PaStreamParameters const*)$inputparameters, (PaStreamParameters const*)$outputparameters, (double)$samplerate);
			]"
		end

	c_pa_open_stream (stream: POINTER; inputparameters: POINTER; outputparameters: POINTER; samplerate: REAL_64; framesperbuffer: NATURAL_64; streamflags: NATURAL_64; streamcallback: POINTER; userdata: POINTER): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_OpenStream ((PaStream**)$stream, (PaStreamParameters const*)$inputparameters, (PaStreamParameters const*)$outputparameters, (double)$samplerate, (unsigned long)$framesperbuffer, (PaStreamFlags)$streamflags, (PaStreamCallback*)$streamcallback, (void*)$userdata);
			]"
		end

	c_pa_open_default_stream (stream: POINTER; numinputchannels: INTEGER; numoutputchannels: INTEGER; sampleformat: NATURAL_64; samplerate: REAL_64; framesperbuffer: NATURAL_64; streamcallback: POINTER; userdata: POINTER): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_OpenDefaultStream ((PaStream**)$stream, (int)$numinputchannels, (int)$numoutputchannels, (PaSampleFormat)$sampleformat, (double)$samplerate, (unsigned long)$framesperbuffer, (PaStreamCallback*)$streamcallback, (void*)$userdata);
			]"
		end

	c_pa_close_stream (stream: POINTER): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_CloseStream ((PaStream*)$stream);
			]"
		end

	c_pa_set_stream_finished_callback (stream: POINTER; streamfinishedcallback: POINTER): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_SetStreamFinishedCallback ((PaStream*)$stream, (PaStreamFinishedCallback*)$streamfinishedcallback);
			]"
		end

	c_pa_start_stream (stream: POINTER): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_StartStream ((PaStream*)$stream);
			]"
		end

	c_pa_stop_stream (stream: POINTER): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_StopStream ((PaStream*)$stream);
			]"
		end

	c_pa_abort_stream (stream: POINTER): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_AbortStream ((PaStream*)$stream);
			]"
		end

	c_pa_is_stream_stopped (stream: POINTER): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_IsStreamStopped ((PaStream*)$stream);
			]"
		end

	c_pa_is_stream_active (stream: POINTER): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_IsStreamActive ((PaStream*)$stream);
			]"
		end

	c_pa_get_stream_info (stream: POINTER): POINTER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetStreamInfo ((PaStream*)$stream);
			]"
		end

	c_pa_get_stream_time (stream: POINTER): REAL_64
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetStreamTime ((PaStream*)$stream);
			]"
		end

	c_pa_get_stream_cpu_load (stream: POINTER): REAL_64
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetStreamCpuLoad ((PaStream*)$stream);
			]"
		end

	c_pa_read_stream (stream: POINTER; buffer: POINTER; frames: NATURAL_64): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_ReadStream ((PaStream*)$stream, (void*)$buffer, (unsigned long)$frames);
			]"
		end

	c_pa_write_stream (stream: POINTER; buffer: POINTER; frames: NATURAL_64): INTEGER
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_WriteStream ((PaStream*)$stream, (void const*)$buffer, (unsigned long)$frames);
			]"
		end

	c_pa_get_stream_read_available (stream: POINTER): INTEGER_64
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetStreamReadAvailable ((PaStream*)$stream);
			]"
		end

	c_pa_get_stream_write_available (stream: POINTER): INTEGER_64
		external
			"C inline use <portaudio.h>"
		alias
			"[
				return Pa_GetStreamWriteAvailable ((PaStream*)$stream);
			]"
		end

feature -- Externals Address

end
