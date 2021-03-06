note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class PA_VERSION_INFO_STRUCT_API

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

	versionmajor: INTEGER
			-- Access member `versionMajor`
		require
			exists: exists
		do
			Result := c_versionmajor (item)
		ensure
			result_correct: Result = c_versionmajor (item)
		end

	set_versionmajor (a_value: INTEGER) 
			-- Change the value of member `versionMajor` to `a_value`.
		require
			exists: exists
		do
			set_c_versionmajor (item, a_value)
		ensure
			versionmajor_set: a_value = versionmajor
		end

	versionminor: INTEGER
			-- Access member `versionMinor`
		require
			exists: exists
		do
			Result := c_versionminor (item)
		ensure
			result_correct: Result = c_versionminor (item)
		end

	set_versionminor (a_value: INTEGER) 
			-- Change the value of member `versionMinor` to `a_value`.
		require
			exists: exists
		do
			set_c_versionminor (item, a_value)
		ensure
			versionminor_set: a_value = versionminor
		end

	versionsubminor: INTEGER
			-- Access member `versionSubMinor`
		require
			exists: exists
		do
			Result := c_versionsubminor (item)
		ensure
			result_correct: Result = c_versionsubminor (item)
		end

	set_versionsubminor (a_value: INTEGER) 
			-- Change the value of member `versionSubMinor` to `a_value`.
		require
			exists: exists
		do
			set_c_versionsubminor (item, a_value)
		ensure
			versionsubminor_set: a_value = versionsubminor
		end

	versioncontrolrevision:  detachable C_STRING
			-- Access member `versionControlRevision`
		require
			exists: exists
		do
			if attached c_versioncontrolrevision (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_versioncontrolrevision (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_versioncontrolrevision (a_value: C_STRING) 
			-- Change the value of member `versionControlRevision` to `a_value`.
		require
			exists: exists
		do
			set_c_versioncontrolrevision (item, a_value.item )
		end

	versiontext:  detachable C_STRING
			-- Access member `versionText`
		require
			exists: exists
		do
			if attached c_versiontext (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_versiontext (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_versiontext (a_value: C_STRING) 
			-- Change the value of member `versionText` to `a_value`.
		require
			exists: exists
		do
			set_c_versiontext (item, a_value.item )
		end

feature {NONE} -- Implementation wrapper for struct struct PaVersionInfo

	sizeof_external: INTEGER 
		external
			"C inline use <portaudio.h>"
		alias
			"sizeof(struct PaVersionInfo)"
		end

	c_versionmajor (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaVersionInfo*)$an_item)->versionMajor
			]"
		end

	set_c_versionmajor (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaVersionInfo*)$an_item)->versionMajor =  (int)$a_value
			]"
		ensure
			versionmajor_set: a_value = c_versionmajor (an_item)
		end

	c_versionminor (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaVersionInfo*)$an_item)->versionMinor
			]"
		end

	set_c_versionminor (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaVersionInfo*)$an_item)->versionMinor =  (int)$a_value
			]"
		ensure
			versionminor_set: a_value = c_versionminor (an_item)
		end

	c_versionsubminor (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaVersionInfo*)$an_item)->versionSubMinor
			]"
		end

	set_c_versionsubminor (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaVersionInfo*)$an_item)->versionSubMinor =  (int)$a_value
			]"
		ensure
			versionsubminor_set: a_value = c_versionsubminor (an_item)
		end

	c_versioncontrolrevision (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaVersionInfo*)$an_item)->versionControlRevision
			]"
		end

	set_c_versioncontrolrevision (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaVersionInfo*)$an_item)->versionControlRevision =  (char const*)$a_value
			]"
		ensure
			versioncontrolrevision_set: a_value = c_versioncontrolrevision (an_item)
		end

	c_versiontext (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaVersionInfo*)$an_item)->versionText
			]"
		end

	set_c_versiontext (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <portaudio.h>"
		alias
			"[
				((struct PaVersionInfo*)$an_item)->versionText =  (char const*)$a_value
			]"
		ensure
			versiontext_set: a_value = c_versiontext (an_item)
		end

end
