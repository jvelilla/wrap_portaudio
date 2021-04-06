-- enum wrapper
class PA_ERROR_CODE_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = panoerror or a_value = panotinitialized or a_value = paunanticipatedhosterror or a_value = painvalidchannelcount or a_value = painvalidsamplerate or a_value = painvaliddevice or a_value = painvalidflag or a_value = pasampleformatnotsupported or a_value = pabadiodevicecombination or a_value = painsufficientmemory or a_value = pabuffertoobig or a_value = pabuffertoosmall or a_value = panullcallback or a_value = pabadstreamptr or a_value = patimedout or a_value = painternalerror or a_value = padeviceunavailable or a_value = paincompatiblehostapispecificstreaminfo or a_value = pastreamisstopped or a_value = pastreamisnotstopped or a_value = painputoverflowed or a_value = paoutputunderflowed or a_value = pahostapinotfound or a_value = painvalidhostapi or a_value = pacannotreadfromacallbackstream or a_value = pacannotwritetoacallbackstream or a_value = pacannotreadfromanoutputonlystream or a_value = pacannotwritetoaninputonlystream or a_value = paincompatiblestreamhostapi or a_value = pabadbufferptr
		end

	panoerror: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paNoError"
		end

	panotinitialized: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paNotInitialized"
		end

	paunanticipatedhosterror: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paUnanticipatedHostError"
		end

	painvalidchannelcount: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paInvalidChannelCount"
		end

	painvalidsamplerate: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paInvalidSampleRate"
		end

	painvaliddevice: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paInvalidDevice"
		end

	painvalidflag: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paInvalidFlag"
		end

	pasampleformatnotsupported: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paSampleFormatNotSupported"
		end

	pabadiodevicecombination: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paBadIODeviceCombination"
		end

	painsufficientmemory: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paInsufficientMemory"
		end

	pabuffertoobig: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paBufferTooBig"
		end

	pabuffertoosmall: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paBufferTooSmall"
		end

	panullcallback: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paNullCallback"
		end

	pabadstreamptr: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paBadStreamPtr"
		end

	patimedout: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paTimedOut"
		end

	painternalerror: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paInternalError"
		end

	padeviceunavailable: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paDeviceUnavailable"
		end

	paincompatiblehostapispecificstreaminfo: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paIncompatibleHostApiSpecificStreamInfo"
		end

	pastreamisstopped: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paStreamIsStopped"
		end

	pastreamisnotstopped: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paStreamIsNotStopped"
		end

	painputoverflowed: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paInputOverflowed"
		end

	paoutputunderflowed: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paOutputUnderflowed"
		end

	pahostapinotfound: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paHostApiNotFound"
		end

	painvalidhostapi: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paInvalidHostApi"
		end

	pacannotreadfromacallbackstream: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paCanNotReadFromACallbackStream"
		end

	pacannotwritetoacallbackstream: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paCanNotWriteToACallbackStream"
		end

	pacannotreadfromanoutputonlystream: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paCanNotReadFromAnOutputOnlyStream"
		end

	pacannotwritetoaninputonlystream: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paCanNotWriteToAnInputOnlyStream"
		end

	paincompatiblestreamhostapi: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paIncompatibleStreamHostApi"
		end

	pabadbufferptr: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paBadBufferPtr"
		end

end
