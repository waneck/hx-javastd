package com.sun.corba.se.PortableActivationIDL;
/**
* com/sun/corba/se/PortableActivationIDL/ServerManagerHolder.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/PortableActivationIDL/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
/** Interface used to combine the Activator and Locator when both are
* implemented together in the same process, as is currently the case
* for our implementation.
*/
extern class ServerManagerHolder implements org.omg.CORBA.portable.Streamable
{
	public var value : com.sun.corba.se.PortableActivationIDL.ServerManager;
	
	@:overload public function new() : Void;
	
	@:overload public function new(initialValue : com.sun.corba.se.PortableActivationIDL.ServerManager) : Void;
	
	@:overload public function _read(i : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload public function _write(o : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload public function _type() : org.omg.CORBA.TypeCode;
	
	
}
