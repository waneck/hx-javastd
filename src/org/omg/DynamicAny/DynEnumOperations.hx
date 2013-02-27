package org.omg.DynamicAny;
/**
* org/omg/DynamicAny/DynEnumOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/DynamicAny/DynamicAny.idl
* Thursday, February 21, 2013 9:14:03 AM UTC
*/
/**
* DynEnum objects support the manipulation of IDL enumerated values.
* The current position of a DynEnum is always -1.
*/
extern interface DynEnumOperations extends org.omg.DynamicAny.DynAnyOperations
{
	/**
	* Returns the value of the DynEnum as an IDL identifier.
	*/
	@:overload public function get_as_string() : String;
	
	/**
	* Sets the value of the DynEnum to the enumerated value whose IDL identifier is passed in the value parameter.
	*
	* @exception InvalidValue If value contains a string that is not a valid IDL identifier
	*            for the corresponding enumerated type
	*/
	@:overload public function set_as_string(value : String) : Void;
	
	/**
	* Returns the value of the DynEnum as the enumerated value's ordinal value.
	* Enumerators have ordinal values 0 to n-1, as they appear from left to right
	* in the corresponding IDL definition.
	*/
	@:overload public function get_as_ulong() : Int;
	
	/**
	* Sets the value of the DynEnum as the enumerated value's ordinal value.
	*
	* @exception InvalidValue If value contains a value that is outside the range of ordinal values
	*            for the corresponding enumerated type
	*/
	@:overload public function set_as_ulong(value : Int) : Void;
	
	
}
