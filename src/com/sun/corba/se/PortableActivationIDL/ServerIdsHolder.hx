package com.sun.corba.se.PortableActivationIDL;
/**
* com/sun/corba/se/PortableActivationIDL/ServerIdsHolder.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/com/sun/corba/se/PortableActivationIDL/activation.idl
* Thursday, February 21, 2013 9:14:13 AM UTC
*/
/** Sequence of server Ids, used for queries about servers.
*/
extern class ServerIdsHolder implements org.omg.CORBA.portable.Streamable
{
	@:public public var value : java.NativeArray<String>;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(initialValue : java.NativeArray<String>) : Void;
	
	@:overload @:public public function _read(i : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload @:public public function _write(o : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload @:public public function _type() : org.omg.CORBA.TypeCode;
	
	
}
