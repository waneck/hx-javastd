package org.omg.CosNaming.NamingContextPackage;
/**
* org/omg/CosNaming/NamingContextPackage/AlreadyBoundHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
extern class AlreadyBoundHelper
{
	@:overload @:public @:static public static function insert(a : org.omg.CORBA.Any, that : org.omg.CosNaming.NamingContextPackage.AlreadyBound) : Void;
	
	@:overload @:public @:static public static function extract(a : org.omg.CORBA.Any) : org.omg.CosNaming.NamingContextPackage.AlreadyBound;
	
	@:overload @:synchronized @:public @:static public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:static public static function id() : String;
	
	@:overload @:public @:static public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.CosNaming.NamingContextPackage.AlreadyBound;
	
	@:overload @:public @:static public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.CosNaming.NamingContextPackage.AlreadyBound) : Void;
	
	
}
