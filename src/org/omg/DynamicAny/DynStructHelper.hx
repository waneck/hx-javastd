package org.omg.DynamicAny;
/**
* org/omg/DynamicAny/DynStructHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/DynamicAny/DynamicAny.idl
* Thursday, February 21, 2013 9:14:03 AM UTC
*/
/**
* DynStruct objects support the manipulation of IDL struct and exception values.
* Members of the exceptions are handled in the same way as members of a struct.
*/
extern class DynStructHelper
{
	@:overload public static function insert(a : org.omg.CORBA.Any, that : org.omg.DynamicAny.DynStruct) : Void;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : org.omg.DynamicAny.DynStruct;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	@:overload public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.DynamicAny.DynStruct;
	
	@:overload public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.DynamicAny.DynStruct) : Void;
	
	@:overload public static function narrow(obj : org.omg.CORBA.Object) : org.omg.DynamicAny.DynStruct;
	
	@:overload public static function unchecked_narrow(obj : org.omg.CORBA.Object) : org.omg.DynamicAny.DynStruct;
	
	
}