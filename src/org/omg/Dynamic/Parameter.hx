package org.omg.Dynamic;
/**
* org/omg/Dynamic/Parameter.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/Interceptors.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
extern class Parameter implements org.omg.CORBA.portable.IDLEntity
{
	public var argument : org.omg.CORBA.Any;
	
	public var mode : org.omg.CORBA.ParameterMode;
	
	@:overload public function new() : Void;
	
	@:overload public function new(_argument : org.omg.CORBA.Any, _mode : org.omg.CORBA.ParameterMode) : Void;
	
	
}