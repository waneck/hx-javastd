package org.omg.CosNaming.NamingContextPackage;
/**
* org/omg/CosNaming/NamingContextPackage/NotFoundReason.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
/**
* Indicates the reason for not able to resolve.
*/
extern class NotFoundReason implements org.omg.CORBA.portable.IDLEntity
{
	public static var _missing_node(default, null) : Int;
	
	public static var missing_node(default, null) : NotFoundReason;
	
	public static var _not_context(default, null) : Int;
	
	public static var not_context(default, null) : NotFoundReason;
	
	public static var _not_object(default, null) : Int;
	
	public static var not_object(default, null) : NotFoundReason;
	
	@:overload public function value() : Int;
	
	@:overload public static function from_int(value : Int) : NotFoundReason;
	
	@:overload private function new(value : Int) : Void;
	
	
}
