package org.omg.IOP.CodecFactoryPackage;
/**
* org/omg/IOP/CodecFactoryPackage/UnknownEncodingHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/IOP.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
extern class UnknownEncodingHelper
{
	@:overload @:public @:static public static function insert(a : org.omg.CORBA.Any, that : org.omg.IOP.CodecFactoryPackage.UnknownEncoding) : Void;
	
	@:overload @:public @:static public static function extract(a : org.omg.CORBA.Any) : org.omg.IOP.CodecFactoryPackage.UnknownEncoding;
	
	@:overload @:synchronized @:public @:static public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload @:public @:static public static function id() : String;
	
	@:overload @:public @:static public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.IOP.CodecFactoryPackage.UnknownEncoding;
	
	@:overload @:public @:static public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.IOP.CodecFactoryPackage.UnknownEncoding) : Void;
	
	
}
