package org.omg.CORBA;
/**
* org/omg/CORBA/PolicyErrorHolder.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/CORBAX.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
/**
* Thrown to indicate problems with parameter values passed to the
* <code>ORB.create_policy</code> operation.  
*/
extern class PolicyErrorHolder implements org.omg.CORBA.portable.Streamable
{
	public var value : org.omg.CORBA.PolicyError;
	
	@:overload public function new() : Void;
	
	@:overload public function new(initialValue : org.omg.CORBA.PolicyError) : Void;
	
	@:overload public function _read(i : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload public function _write(o : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload public function _type() : org.omg.CORBA.TypeCode;
	
	
}