package org.omg.PortableInterceptor.ORBInitInfoPackage;
/**
* org/omg/PortableInterceptor/ORBInitInfoPackage/DuplicateNameHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/Interceptors.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
extern class DuplicateNameHelper
{
	@:overload @:public @:static public static function insert(a : org.omg.CORBA.Any, that : org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName) : Void;
	
	@:overload @:public @:static public static function extract(a : org.omg.CORBA.Any) : org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName;
	
	@:overload @:synchronized @:public @:static public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:static public static function id() : String;
	
	@:overload @:public @:static public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName;
	
	@:overload @:public @:static public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName) : Void;
	
	
}
