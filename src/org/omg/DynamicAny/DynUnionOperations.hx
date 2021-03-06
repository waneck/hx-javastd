package org.omg.DynamicAny;
/**
* org/omg/DynamicAny/DynUnionOperations.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/DynamicAny/DynamicAny.idl
* Thursday, February 21, 2013 9:14:03 AM UTC
*/
/**
* DynUnion objects support the manipulation of IDL unions.
* A union can have only two valid current positions:
* <UL>
* <LI>zero, which denotes the discriminator
* <LI>one, which denotes the active member
* </UL>
* The component_count value for a union depends on the current discriminator:
* it is 2 for a union whose discriminator indicates a named member, and 1 otherwise.
*/
extern interface DynUnionOperations extends org.omg.DynamicAny.DynAnyOperations
{
	/**
	* Returns the current discriminator value.
	*/
	@:overload public function get_discriminator() : org.omg.DynamicAny.DynAny;
	
	/**
	* Sets the discriminator of the DynUnion to the specified value.
	* Setting the discriminator to a value that is consistent with the currently active union member
	* does not affect the currently active member. Setting the discriminator to a value that is inconsistent
	* with the currently active member deactivates the member and activates the member that is consistent
	* with the new discriminator value (if there is a member for that value) by initializing the member
	* to its default value.
	* Setting the discriminator of a union sets the current position to 0 if the discriminator value
	* indicates a non-existent union member (has_no_active_member returns true in this case).
	* Otherwise, if the discriminator value indicates a named union member, the current position is set to 1
	* (has_no_active_member returns false and component_count returns 2 in this case).
	*
	* @exception TypeMismatch if the TypeCode of the parameter is not equivalent to the TypeCode
	*            of the union's discriminator
	*/
	@:overload public function set_discriminator(d : org.omg.DynamicAny.DynAny) : Void;
	
	/**
	* Sets the discriminator to a value that is consistent with the value of the default case of a union.
	* It sets the current position to zero and causes component_count to return 2.
	*
	* @exception TypeMismatch if the union does not have an explicit default case
	*/
	@:overload public function set_to_default_member() : Void;
	
	/**
	* Sets the discriminator to a value that does not correspond to any of the unions case labels.
	* It sets the current position to zero and causes component_count to return 1.
	*
	* @exception TypeMismatch if the union has an explicit default case or if it uses the entire range
	*            of discriminator values for explicit case labels
	*/
	@:overload public function set_to_no_active_member() : Void;
	
	/**
	* Returns true if the union has no active member, that is, the unions value consists solely
	* of its discriminator because the discriminator has a value that is not listed as an explicit case label.
	* Calling this operation on a union that has a default case returns false.
	* Calling this operation on a union that uses the entire range of discriminator values
	* for explicit case labels returns false.
	*/
	@:overload public function has_no_active_member() : Bool;
	
	/**
	* Returns the TCKind value of the discriminators TypeCode.
	*/
	@:overload public function discriminator_kind() : org.omg.CORBA.TCKind;
	
	/**
	* Returns the TCKind value of the currently active members TypeCode. 
	*
	* @exception InvalidValue if the union does not have a currently active member
	*/
	@:overload public function member_kind() : org.omg.CORBA.TCKind;
	
	/**
	* Returns the currently active member. Note that the returned reference remains valid only
	* for as long as the currently active member does not change. Using the returned reference
	* beyond the life time of the currently active member raises OBJECT_NOT_EXIST. 
	*
	* @exception InvalidValue if the union has no active member
	*/
	@:overload public function member() : org.omg.DynamicAny.DynAny;
	
	/**
	* Returns the name of the currently active member. If the unions TypeCode does not contain
	* a member name for the currently active member, the operation returns an empty string.
	*
	* @exception InvalidValue if the union has no active member
	*/
	@:overload public function member_name() : String;
	
	
}
