package com.sun.corba.se.spi.activation;
/**
* com/sun/corba/se/spi/activation/ORBPortInfoListHolder.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/spi/activation/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
extern class ORBPortInfoListHolder implements org.omg.CORBA.portable.Streamable
{
	public var value : java.NativeArray<com.sun.corba.se.spi.activation.ORBPortInfo>;
	
	@:overload public function new() : Void;
	
	@:overload public function new(initialValue : java.NativeArray<com.sun.corba.se.spi.activation.ORBPortInfo>) : Void;
	
	@:overload public function _read(i : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload public function _write(o : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload public function _type() : org.omg.CORBA.TypeCode;
	
	
}