package com.sun.corba.se.spi.activation.LocatorPackage;
/**
* com/sun/corba/se/spi/activation/LocatorPackage/ServerLocation.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/spi/activation/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
extern class ServerLocation implements org.omg.CORBA.portable.IDLEntity
{
	public var hostname : String;
	
	public var ports : java.NativeArray<com.sun.corba.se.spi.activation.ORBPortInfo>;
	
	@:overload public function new() : Void;
	
	@:overload public function new(_hostname : String, _ports : java.NativeArray<com.sun.corba.se.spi.activation.ORBPortInfo>) : Void;
	
	
}