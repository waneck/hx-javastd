package org.omg.CosNaming;
/**
* org/omg/CosNaming/BindingListHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
/**
* List of Bindings.
*/
extern class BindingListHelper
{
	@:overload public static function insert(a : org.omg.CORBA.Any, that : java.NativeArray<org.omg.CosNaming.Binding>) : Void;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : java.NativeArray<org.omg.CosNaming.Binding>;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	@:overload public static function read(istream : org.omg.CORBA.portable.InputStream) : java.NativeArray<org.omg.CosNaming.Binding>;
	
	@:overload public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : java.NativeArray<org.omg.CosNaming.Binding>) : Void;
	
	
}