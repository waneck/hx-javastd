package org.omg.CosNaming;
/**
* org/omg/CosNaming/NamingContextHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
/** 
* A naming context is an object that contains a set of name bindings in 
* which each name is unique. Different names can be bound to an object 
* in the same or different contexts at the same time. <p>
* 
* See <a href="http://www.omg.org/technology/documents/formal/naming_service.htm">
* CORBA COS 
* Naming Specification.</a>
*/
extern class NamingContextHelper
{
	@:overload @:public @:static public static function insert(a : org.omg.CORBA.Any, that : org.omg.CosNaming.NamingContext) : Void;
	
	@:overload @:public @:static public static function extract(a : org.omg.CORBA.Any) : org.omg.CosNaming.NamingContext;
	
	@:overload @:synchronized @:public @:static public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:static public static function id() : String;
	
	@:overload @:public @:static public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.CosNaming.NamingContext;
	
	@:overload @:public @:static public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.CosNaming.NamingContext) : Void;
	
	@:overload @:public @:static public static function narrow(obj : org.omg.CORBA.Object) : org.omg.CosNaming.NamingContext;
	
	@:overload @:public @:static public static function unchecked_narrow(obj : org.omg.CORBA.Object) : org.omg.CosNaming.NamingContext;
	
	
}
