package com.sun.corba.se.spi.activation.RepositoryPackage;
/**
* com/sun/corba/se/spi/activation/RepositoryPackage/ServerDefHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/spi/activation/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
extern class ServerDefHelper
{
	@:overload public static function insert(a : org.omg.CORBA.Any, that : com.sun.corba.se.spi.activation.RepositoryPackage.ServerDef) : Void;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : com.sun.corba.se.spi.activation.RepositoryPackage.ServerDef;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	@:overload public static function read(istream : org.omg.CORBA.portable.InputStream) : com.sun.corba.se.spi.activation.RepositoryPackage.ServerDef;
	
	@:overload public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : com.sun.corba.se.spi.activation.RepositoryPackage.ServerDef) : Void;
	
	
}
