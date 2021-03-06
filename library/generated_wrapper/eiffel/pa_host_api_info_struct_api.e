note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class PA_HOST_API_INFO_STRUCT_API

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

	structversion: INTEGER
			-- Access member `structVersion`
		require
			exists: exists
		do
			Result := c_structversion (item)
		ensure
			result_correct: Result = c_structversion (item)
		end

	set_structversion (a_value: INTEGER) 
			-- Change the value of member `structVersion` to `a_value`.
		require
			exists: exists
		do
			set_c_structversion (item, a_value)
		ensure
			structversion_set: a_value = structversion
		end

	type: INTEGER
			-- Access member `type`
		require
			exists: exists
		do
			Result := c_type (item)
		ensure
			result_correct: Result = c_type (item)
		end

	set_type (a_value: INTEGER) 
			-- Change the value of member `type` to `a_value`.
		require
			exists: exists
		do
			set_c_type (item, a_value)
		ensure
			type_set: a_value = type
		end

	name:  detachable C_STRING
			-- Access member `name`
		require
			exists: exists
		do
			if attached c_name (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_name (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_name (a_value: C_STRING) 
			-- Change the value of member `name` to `a_value`.
		require
			exists: exists
		do
			set_c_name (item, a_value.item )
		end

	devicecount: INTEGER
			-- Access member `deviceCount`
		require
			exists: exists
		do
			Result := c_devicecount (item)
		ensure
			result_correct: Result = c_devicecount (item)
		end

	set_devicecount (a_value: INTEGER) 
			-- Change the value of member `deviceCount` to `a_value`.
		require
			exists: exists
		do
			set_c_devicecount (item, a_value)
		ensure
			devicecount_set: a_value = devicecount
		end

	defaultinputdevice: INTEGER
			-- Access member `defaultInputDevice`
		require
			exists: exists
		do
			Result := c_defaultinputdevice (item)
		ensure
			result_correct: Result = c_defaultinputdevice (item)
		end

	set_defaultinputdevice (a_value: INTEGER) 
			-- Change the value of member `defaultInputDevice` to `a_value`.
		require
			exists: exists
		do
			set_c_defaultinputdevice (item, a_value)
		ensure
			defaultinputdevice_set: a_value = defaultinputdevice
		end

	defaultoutputdevice: INTEGER
			-- Access member `defaultOutputDevice`
		require
			exists: exists
		do
			Result := c_defaultoutputdevice (item)
		ensure
			result_correct: Result = c_defaultoutputdevice (item)
		end

	set_defaultoutputdevice (a_value: INTEGER) 
			-- Change the value of member `defaultOutputDevice` to `a_value`.
		require
			exists: exists
		do
			set_c_defaultoutputdevice (item, a_value)
		ensure
			defaultoutputdevice_set: a_value = defaultoutputdevice
		end

feature {NONE} -- Implementation wrapper for struct struct PaHostApiInfo

	sizeof_external: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"sizeof(struct PaHostApiInfo)"
		end

	c_structversion (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->structVersion
			]"
		end

	set_c_structversion (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->structVersion =  (int)$a_value
			]"
		ensure
			structversion_set: a_value = c_structversion (an_item)
		end

	c_type (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->type
			]"
		end

	set_c_type (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->type =  (PaHostApiTypeId)$a_value
			]"
		ensure
			type_set: a_value = c_type (an_item)
		end

	c_name (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->name
			]"
		end

	set_c_name (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->name =  (char const*)$a_value
			]"
		ensure
			name_set: a_value = c_name (an_item)
		end

	c_devicecount (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->deviceCount
			]"
		end

	set_c_devicecount (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->deviceCount =  (int)$a_value
			]"
		ensure
			devicecount_set: a_value = c_devicecount (an_item)
		end

	c_defaultinputdevice (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->defaultInputDevice
			]"
		end

	set_c_defaultinputdevice (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->defaultInputDevice =  (PaDeviceIndex)$a_value
			]"
		ensure
			defaultinputdevice_set: a_value = c_defaultinputdevice (an_item)
		end

	c_defaultoutputdevice (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->defaultOutputDevice
			]"
		end

	set_c_defaultoutputdevice (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaHostApiInfo*)$an_item)->defaultOutputDevice =  (PaDeviceIndex)$a_value
			]"
		ensure
			defaultoutputdevice_set: a_value = c_defaultoutputdevice (an_item)
		end

end
