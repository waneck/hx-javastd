package org.omg.PortableServer.POAPackage;
/**
* org/omg/PortableServer/POAPackage/WrongPolicyHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
extern class WrongPolicyHelper
{
	@:overload public static function insert(a : org.omg.CORBA.Any, that : org.omg.PortableServer.POAPackage.WrongPolicy) : Void;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : org.omg.PortableServer.POAPackage.WrongPolicy;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	@:overload public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.PortableServer.POAPackage.WrongPolicy;
	
	@:overload public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.PortableServer.POAPackage.WrongPolicy) : Void;
	
	
}
