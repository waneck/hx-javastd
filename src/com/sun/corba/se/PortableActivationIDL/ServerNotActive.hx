package com.sun.corba.se.PortableActivationIDL;
/**
* com/sun/corba/se/PortableActivationIDL/ServerNotActive.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/PortableActivationIDL/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
extern class ServerNotActive extends org.omg.CORBA.UserException
{
	public var serverId : String;
	
	@:overload public function new() : Void;
	
	@:overload public function new(_serverId : String) : Void;
	
	@:overload public function new($reason : String, _serverId : String) : Void;
	
	
}