package com.sun.corba.se.PortableActivationIDL;
/**
* com/sun/corba/se/PortableActivationIDL/ORBPortInfoListHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/PortableActivationIDL/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
/** A list of ORB and port information for a particular endpoint type.
*/
extern class ORBPortInfoListHelper
{
	@:overload public static function insert(a : org.omg.CORBA.Any, that : java.NativeArray<com.sun.corba.se.PortableActivationIDL.ORBPortInfo>) : Void;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : java.NativeArray<com.sun.corba.se.PortableActivationIDL.ORBPortInfo>;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	@:overload public static function read(istream : org.omg.CORBA.portable.InputStream) : java.NativeArray<com.sun.corba.se.PortableActivationIDL.ORBPortInfo>;
	
	@:overload public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : java.NativeArray<com.sun.corba.se.PortableActivationIDL.ORBPortInfo>) : Void;
	
	
}
