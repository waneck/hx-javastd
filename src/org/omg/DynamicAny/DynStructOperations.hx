package org.omg.DynamicAny;
/**
* org/omg/DynamicAny/DynStructOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/DynamicAny/DynamicAny.idl
* Thursday, February 21, 2013 9:14:03 AM UTC
*/
/**
* DynStruct objects support the manipulation of IDL struct and exception values.
* Members of the exceptions are handled in the same way as members of a struct.
*/
extern interface DynStructOperations extends org.omg.DynamicAny.DynAnyOperations
{
	/**
	* Returns the name of the member at the current position.
	* This operation may return an empty string since the TypeCode of the value being
	* manipulated may not contain the names of members.
	*
	* @exception TypeMismatch if the DynStruct represents an empty exception.
	* @exception InvalidValue if the current position does not indicate a member
	*/
	@:overload public function current_member_name() : String;
	
	/**
	* Returns the TCKind associated with the member at the current position.
	*
	* @exception TypeMismatch if the DynStruct represents an empty exception.
	* @exception InvalidValue if the current position does not indicate a member
	*/
	@:overload public function current_member_kind() : org.omg.CORBA.TCKind;
	
	/**
	* Returns a sequence of NameValuePairs describing the name and the value of each member
	* in the struct associated with a DynStruct object.
	* The sequence contains members in the same order as the declaration order of members
	* as indicated by the DynStruct's TypeCode. The current position is not affected.
	* The member names in the returned sequence will be empty strings if the DynStruct's TypeCode
	* does not contain member names.
	*/
	@:overload public function get_members() : java.NativeArray<org.omg.DynamicAny.NameValuePair>;
	
	/**
	* Initializes the struct data value associated with a DynStruct object from a sequence of NameValuePairs.
	* The operation sets the current position to zero if the passed sequences has non-zero length. Otherwise,
	* if an empty sequence is passed, the current position is set to -1.
	* <P>Members must appear in the NameValuePairs in the order in which they appear in the IDL specification
	* of the struct as indicated by the DynStruct's TypeCode or they must be empty strings.
	* The operation makes no attempt to assign member values based on member names.
	*
	* @exception TypeMismatch if the member names supplied in the passed sequence do not match the
	*            corresponding member name in the DynStruct's TypeCode and they are not empty strings
	* @exception InvalidValue if the passed sequence has a number of elements that disagrees
	*            with the number of members as indicated by the DynStruct's TypeCode
	*/
	@:overload public function set_members(value : java.NativeArray<org.omg.DynamicAny.NameValuePair>) : Void;
	
	/**
	* Returns a sequence of NameDynAnyPairs describing the name and the value of each member
	* in the struct associated with a DynStruct object.
	* The sequence contains members in the same order as the declaration order of members
	* as indicated by the DynStruct's TypeCode. The current position is not affected.
	* The member names in the returned sequence will be empty strings if the DynStruct's TypeCode
	* does not contain member names.
	*/
	@:overload public function get_members_as_dyn_any() : java.NativeArray<org.omg.DynamicAny.NameDynAnyPair>;
	
	/**
	* Initializes the struct data value associated with a DynStruct object from a sequence of NameDynAnyPairs.
	* The operation sets the current position to zero if the passed sequences has non-zero length. Otherwise,
	* if an empty sequence is passed, the current position is set to -1.
	* <P>Members must appear in the NameDynAnyPairs in the order in which they appear in the IDL specification
	* of the struct as indicated by the DynStruct's TypeCode or they must be empty strings.
	* The operation makes no attempt to assign member values based on member names.
	*
	* @exception TypeMismatch if the member names supplied in the passed sequence do not match the
	*            corresponding member name in the DynStruct's TypeCode and they are not empty strings
	* @exception InvalidValue if the passed sequence has a number of elements that disagrees
	*            with the number of members as indicated by the DynStruct's TypeCode
	*/
	@:overload public function set_members_as_dyn_any(value : java.NativeArray<org.omg.DynamicAny.NameDynAnyPair>) : Void;
	
	
}
