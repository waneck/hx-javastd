package com.sun.corba.se.PortableActivationIDL;
/**
* com/sun/corba/se/PortableActivationIDL/ORBProxyHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/PortableActivationIDL/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
/** ORB callback interface, passed to Activator in registerORB method.
*/
extern class ORBProxyHelper
{
	@:overload @:public @:static public static function insert(a : org.omg.CORBA.Any, that : com.sun.corba.se.PortableActivationIDL.ORBProxy) : Void;
	
	@:overload @:public @:static public static function extract(a : org.omg.CORBA.Any) : com.sun.corba.se.PortableActivationIDL.ORBProxy;
	
	@:overload @:synchronized @:public @:static public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:static public static function id() : String;
	
	@:overload @:public @:static public static function read(istream : org.omg.CORBA.portable.InputStream) : com.sun.corba.se.PortableActivationIDL.ORBProxy;
	
	@:overload @:public @:static public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : com.sun.corba.se.PortableActivationIDL.ORBProxy) : Void;
	
	@:overload @:public @:static public static function narrow(obj : org.omg.CORBA.Object) : com.sun.corba.se.PortableActivationIDL.ORBProxy;
	
	@:overload @:public @:static public static function unchecked_narrow(obj : org.omg.CORBA.Object) : com.sun.corba.se.PortableActivationIDL.ORBProxy;
	
	
}
