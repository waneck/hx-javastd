package org.omg.CosNaming.NamingContextPackage;
/**
* org/omg/CosNaming/NamingContextPackage/NotFound.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
extern class NotFound extends org.omg.CORBA.UserException
{
	public var why : org.omg.CosNaming.NamingContextPackage.NotFoundReason;
	
	public var rest_of_name : java.NativeArray<org.omg.CosNaming.NameComponent>;
	
	@:overload public function new() : Void;
	
	@:overload public function new(_why : org.omg.CosNaming.NamingContextPackage.NotFoundReason, _rest_of_name : java.NativeArray<org.omg.CosNaming.NameComponent>) : Void;
	
	@:overload public function new($reason : String, _why : org.omg.CosNaming.NamingContextPackage.NotFoundReason, _rest_of_name : java.NativeArray<org.omg.CosNaming.NameComponent>) : Void;
	
	
}
