package org.omg.CosNaming.NamingContextPackage;
/**
* org/omg/CosNaming/NamingContextPackage/NotFoundHolder.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
extern class NotFoundHolder implements org.omg.CORBA.portable.Streamable
{
	public var value : org.omg.CosNaming.NamingContextPackage.NotFound;
	
	@:overload public function new() : Void;
	
	@:overload public function new(initialValue : org.omg.CosNaming.NamingContextPackage.NotFound) : Void;
	
	@:overload public function _read(i : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload public function _write(o : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload public function _type() : org.omg.CORBA.TypeCode;
	
	
}
