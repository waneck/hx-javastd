package org.omg.PortableServer;
/**
* org/omg/PortableServer/ForwardRequest.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
extern class ForwardRequest extends org.omg.CORBA.UserException
{
	@:public public var forward_reference : org.omg.CORBA.Object;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(_forward_reference : org.omg.CORBA.Object) : Void;
	
	@:overload @:public public function new($reason : String, _forward_reference : org.omg.CORBA.Object) : Void;
	
	
}
