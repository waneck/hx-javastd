package org.omg.PortableServer.POAPackage;
/**
* org/omg/PortableServer/POAPackage/InvalidPolicy.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableServer/poa.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
extern class InvalidPolicy extends org.omg.CORBA.UserException
{
	public var index : java.StdTypes.Int16;
	
	@:overload public function new() : Void;
	
	@:overload public function new(_index : java.StdTypes.Int16) : Void;
	
	@:overload public function new($reason : String, _index : java.StdTypes.Int16) : Void;
	
	
}
