package org.omg.IOP.CodecPackage;
/**
* org/omg/IOP/CodecPackage/InvalidTypeForEncodingHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/IOP.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
extern class InvalidTypeForEncodingHelper
{
	@:overload public static function insert(a : org.omg.CORBA.Any, that : org.omg.IOP.CodecPackage.InvalidTypeForEncoding) : Void;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : org.omg.IOP.CodecPackage.InvalidTypeForEncoding;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	@:overload public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.IOP.CodecPackage.InvalidTypeForEncoding;
	
	@:overload public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.IOP.CodecPackage.InvalidTypeForEncoding) : Void;
	
	
}
