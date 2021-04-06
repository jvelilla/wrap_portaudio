-- enum wrapper
class PA_STREAM_CALLBACK_RESULT_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = pacontinue or a_value = pacomplete or a_value = paabort
		end

	pacontinue: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paContinue"
		end

	pacomplete: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paComplete"
		end

	paabort: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paAbort"
		end

end
