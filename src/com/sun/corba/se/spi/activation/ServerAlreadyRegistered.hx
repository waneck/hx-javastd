package com.sun.corba.se.spi.activation;
/**
* com/sun/corba/se/spi/activation/ServerAlreadyRegistered.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/spi/activation/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
extern class ServerAlreadyRegistered extends org.omg.CORBA.UserException
{
	@:public public var serverId : Int;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(_serverId : Int) : Void;
	
	@:overload @:public public function new($reason : String, _serverId : Int) : Void;
	
	
}
