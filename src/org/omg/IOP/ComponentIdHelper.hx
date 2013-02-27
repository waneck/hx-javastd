package org.omg.IOP;
/**
* org/omg/IOP/ComponentIdHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/IOP.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/**
* Standard way of representing multicomponent profiles.
* This would be encapsulated in a TaggedProfile.
*/
extern class ComponentIdHelper
{
	@:overload public static function insert(a : org.omg.CORBA.Any, that : Int) : Void;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : Int;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	@:overload public static function read(istream : org.omg.CORBA.portable.InputStream) : Int;
	
	@:overload public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : Int) : Void;
	
	
}
