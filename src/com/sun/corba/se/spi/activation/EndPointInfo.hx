package com.sun.corba.se.spi.activation;
/**
* com/sun/corba/se/spi/activation/EndPointInfo.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/spi/activation/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
extern class EndPointInfo implements org.omg.CORBA.portable.IDLEntity
{
	public var endpointType : String;
	
	public var port : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function new(_endpointType : String, _port : Int) : Void;
	
	
}