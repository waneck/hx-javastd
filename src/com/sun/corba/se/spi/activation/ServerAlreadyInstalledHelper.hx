package com.sun.corba.se.spi.activation;
/**
* com/sun/corba/se/spi/activation/ServerAlreadyInstalledHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/spi/activation/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
extern class ServerAlreadyInstalledHelper
{
	@:overload @:public @:static public static function insert(a : org.omg.CORBA.Any, that : com.sun.corba.se.spi.activation.ServerAlreadyInstalled) : Void;
	
	@:overload @:public @:static public static function extract(a : org.omg.CORBA.Any) : com.sun.corba.se.spi.activation.ServerAlreadyInstalled;
	
	@:overload @:synchronized @:public @:static public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:static public static function id() : String;
	
	@:overload @:public @:static public static function read(istream : org.omg.CORBA.portable.InputStream) : com.sun.corba.se.spi.activation.ServerAlreadyInstalled;
	
	@:overload @:public @:static public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : com.sun.corba.se.spi.activation.ServerAlreadyInstalled) : Void;
	
	
}
