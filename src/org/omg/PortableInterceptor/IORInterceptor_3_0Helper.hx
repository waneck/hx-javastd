package org.omg.PortableInterceptor;
/**
* org/omg/PortableInterceptor/IORInterceptor_3_0Helper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/Interceptors.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
extern class IORInterceptor_3_0Helper
{
	@:overload @:public @:static public static function insert(a : org.omg.CORBA.Any, that : org.omg.PortableInterceptor.IORInterceptor_3_0) : Void;
	
	@:overload @:public @:static public static function extract(a : org.omg.CORBA.Any) : org.omg.PortableInterceptor.IORInterceptor_3_0;
	
	@:overload @:synchronized @:public @:static public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:static public static function id() : String;
	
	@:overload @:public @:static public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.PortableInterceptor.IORInterceptor_3_0;
	
	@:overload @:public @:static public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.PortableInterceptor.IORInterceptor_3_0) : Void;
	
	@:overload @:public @:static public static function narrow(obj : org.omg.CORBA.Object) : org.omg.PortableInterceptor.IORInterceptor_3_0;
	
	@:overload @:public @:static public static function unchecked_narrow(obj : org.omg.CORBA.Object) : org.omg.PortableInterceptor.IORInterceptor_3_0;
	
	
}
