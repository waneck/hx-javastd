package org.omg.CosNaming.NamingContextPackage;
/**
* org/omg/CosNaming/NamingContextPackage/InvalidNameHolder.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
extern class InvalidNameHolder implements org.omg.CORBA.portable.Streamable
{
	@:public public var value : org.omg.CosNaming.NamingContextPackage.InvalidName;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(initialValue : org.omg.CosNaming.NamingContextPackage.InvalidName) : Void;
	
	@:overload @:public public function _read(i : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload @:public public function _write(o : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload @:public public function _type() : org.omg.CORBA.TypeCode;
	
	
}
