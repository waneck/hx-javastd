package com.sun.corba.se.PortableActivationIDL.LocatorPackage;
/**
* com/sun/corba/se/PortableActivationIDL/LocatorPackage/ServerLocationPerORB.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/PortableActivationIDL/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
extern class ServerLocationPerORB implements org.omg.CORBA.portable.IDLEntity
{
	@:public public var hostname : String;
	
	@:public public var ports : java.NativeArray<com.sun.corba.se.PortableActivationIDL.EndPointInfo>;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(_hostname : String, _ports : java.NativeArray<com.sun.corba.se.PortableActivationIDL.EndPointInfo>) : Void;
	
	
}
