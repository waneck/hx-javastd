package org.omg.CosNaming;
/**
* org/omg/CosNaming/NameComponent.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
extern class NameComponent implements org.omg.CORBA.portable.IDLEntity
{
	public var id : String;
	
	public var kind : String;
	
	@:overload public function new() : Void;
	
	@:overload public function new(_id : String, _kind : String) : Void;
	
	
}