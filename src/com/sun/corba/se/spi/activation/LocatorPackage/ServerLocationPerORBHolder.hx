package com.sun.corba.se.spi.activation.LocatorPackage;
/**
* com/sun/corba/se/spi/activation/LocatorPackage/ServerLocationPerORBHolder.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/spi/activation/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
extern class ServerLocationPerORBHolder implements org.omg.CORBA.portable.Streamable
{
	public var value : com.sun.corba.se.spi.activation.LocatorPackage.ServerLocationPerORB;
	
	@:overload public function new() : Void;
	
	@:overload public function new(initialValue : com.sun.corba.se.spi.activation.LocatorPackage.ServerLocationPerORB) : Void;
	
	@:overload public function _read(i : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload public function _write(o : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload public function _type() : org.omg.CORBA.TypeCode;
	
	
}
