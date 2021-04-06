-- enum wrapper
class PA_HOST_API_TYPE_ID_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = paindevelopment or a_value = padirectsound or a_value = pamme or a_value = paasio or a_value = pasoundmanager or a_value = pacoreaudio or a_value = paoss or a_value = paalsa or a_value = paal or a_value = pabeos or a_value = pawdmks or a_value = pajack or a_value = pawasapi or a_value = paaudiosciencehpi
		end

	paindevelopment: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paInDevelopment"
		end

	padirectsound: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paDirectSound"
		end

	pamme: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paMME"
		end

	paasio: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paASIO"
		end

	pasoundmanager: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paSoundManager"
		end

	pacoreaudio: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paCoreAudio"
		end

	paoss: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paOSS"
		end

	paalsa: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paALSA"
		end

	paal: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paAL"
		end

	pabeos: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paBeOS"
		end

	pawdmks: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paWDMKS"
		end

	pajack: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paJACK"
		end

	pawasapi: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paWASAPI"
		end

	paaudiosciencehpi: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"paAudioScienceHPI"
		end

end
