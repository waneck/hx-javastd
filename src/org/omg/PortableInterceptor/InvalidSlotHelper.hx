package org.omg.PortableInterceptor;
/**
* org/omg/PortableInterceptor/InvalidSlotHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/Interceptors.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
extern class InvalidSlotHelper
{
	@:overload public static function insert(a : org.omg.CORBA.Any, that : org.omg.PortableInterceptor.InvalidSlot) : Void;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : org.omg.PortableInterceptor.InvalidSlot;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	@:overload public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.PortableInterceptor.InvalidSlot;
	
	@:overload public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.PortableInterceptor.InvalidSlot) : Void;
	
	
}
