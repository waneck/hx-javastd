package org.omg.IOP;
/**
* org/omg/IOP/TaggedComponentHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/IOP.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
extern class TaggedComponentHelper
{
	@:overload public static function insert(a : org.omg.CORBA.Any, that : org.omg.IOP.TaggedComponent) : Void;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : org.omg.IOP.TaggedComponent;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	@:overload public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.IOP.TaggedComponent;
	
	@:overload public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.IOP.TaggedComponent) : Void;
	
	
}
