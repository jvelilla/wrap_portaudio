note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class PA_STREAM_PARAMETERS_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	device: INTEGER
			-- Access member `device`
		require
			exists: exists
		do
			Result := c_device (item)
		ensure
			result_correct: Result = c_device (item)
		end

	set_device (a_value: INTEGER) 
			-- Change the value of member `device` to `a_value`.
		require
			exists: exists
		do
			set_c_device (item, a_value)
		ensure
			device_set: a_value = device
		end

	channelcount: INTEGER
			-- Access member `channelCount`
		require
			exists: exists
		do
			Result := c_channelcount (item)
		ensure
			result_correct: Result = c_channelcount (item)
		end

	set_channelcount (a_value: INTEGER) 
			-- Change the value of member `channelCount` to `a_value`.
		require
			exists: exists
		do
			set_c_channelcount (item, a_value)
		ensure
			channelcount_set: a_value = channelcount
		end

	sampleformat: NATURAL_64
			-- Access member `sampleFormat`
		require
			exists: exists
		do
			Result := c_sampleformat (item)
		ensure
			result_correct: Result = c_sampleformat (item)
		end

	set_sampleformat (a_value: NATURAL_64) 
			-- Change the value of member `sampleFormat` to `a_value`.
		require
			exists: exists
		do
			set_c_sampleformat (item, a_value)
		ensure
			sampleformat_set: a_value = sampleformat
		end

	suggestedlatency: REAL_64
			-- Access member `suggestedLatency`
		require
			exists: exists
		do
			Result := c_suggestedlatency (item)
		ensure
			result_correct: Result = c_suggestedlatency (item)
		end

	set_suggestedlatency (a_value: REAL_64) 
			-- Change the value of member `suggestedLatency` to `a_value`.
		require
			exists: exists
		do
			set_c_suggestedlatency (item, a_value)
		ensure
			suggestedlatency_set: a_value = suggestedlatency
		end

	hostapispecificstreaminfo: POINTER
			-- Access member `hostApiSpecificStreamInfo`
		require
			exists: exists
		do
			Result := c_hostapispecificstreaminfo (item)
		ensure
			result_correct: Result = c_hostapispecificstreaminfo (item)
		end

	set_hostapispecificstreaminfo (a_value: POINTER) 
			-- Change the value of member `hostApiSpecificStreamInfo` to `a_value`.
		require
			exists: exists
		do
			set_c_hostapispecificstreaminfo (item, a_value)
		ensure
			hostapispecificstreaminfo_set: a_value = hostapispecificstreaminfo
		end

feature {NONE} -- Implementation wrapper for struct struct PaStreamParameters

	sizeof_external: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"sizeof(struct PaStreamParameters)"
		end

	c_device (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaStreamParameters*)$an_item)->device
			]"
		end

	set_c_device (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaStreamParameters*)$an_item)->device =  (PaDeviceIndex)$a_value
			]"
		ensure
			device_set: a_value = c_device (an_item)
		end

	c_channelcount (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaStreamParameters*)$an_item)->channelCount
			]"
		end

	set_c_channelcount (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaStreamParameters*)$an_item)->channelCount =  (int)$a_value
			]"
		ensure
			channelcount_set: a_value = c_channelcount (an_item)
		end

	c_sampleformat (an_item: POINTER): NATURAL_64
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaStreamParameters*)$an_item)->sampleFormat
			]"
		end

	set_c_sampleformat (an_item: POINTER; a_value: NATURAL_64) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaStreamParameters*)$an_item)->sampleFormat =  (PaSampleFormat)$a_value
			]"
		ensure
			sampleformat_set: a_value = c_sampleformat (an_item)
		end

	c_suggestedlatency (an_item: POINTER): REAL_64
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaStreamParameters*)$an_item)->suggestedLatency
			]"
		end

	set_c_suggestedlatency (an_item: POINTER; a_value: REAL_64) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaStreamParameters*)$an_item)->suggestedLatency =  (PaTime)$a_value
			]"
		ensure
			suggestedlatency_set: a_value = c_suggestedlatency (an_item)
		end

	c_hostapispecificstreaminfo (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaStreamParameters*)$an_item)->hostApiSpecificStreamInfo
			]"
		end

	set_c_hostapispecificstreaminfo (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaStreamParameters*)$an_item)->hostApiSpecificStreamInfo =  (void*)$a_value
			]"
		ensure
			hostapispecificstreaminfo_set: a_value = c_hostapispecificstreaminfo (an_item)
		end

end
