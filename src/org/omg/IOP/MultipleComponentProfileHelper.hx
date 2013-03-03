package org.omg.IOP;
/**
* org/omg/IOP/MultipleComponentProfileHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/IOP.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
/** An array of tagged components, forming a multiple component profile. */
extern class MultipleComponentProfileHelper
{
	@:overload @:public @:static public static function insert(a : org.omg.CORBA.Any, that : java.NativeArray<org.omg.IOP.TaggedComponent>) : Void;
	
	@:overload @:public @:static public static function extract(a : org.omg.CORBA.Any) : java.NativeArray<org.omg.IOP.TaggedComponent>;
	
	@:overload @:synchronized @:public @:static public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:static public static function id() : String;
	
	@:overload @:public @:static public static function read(istream : org.omg.CORBA.portable.InputStream) : java.NativeArray<org.omg.IOP.TaggedComponent>;
	
	@:overload @:public @:static public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : java.NativeArray<org.omg.IOP.TaggedComponent>) : Void;
	
	
}
