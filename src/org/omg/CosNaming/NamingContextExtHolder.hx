package org.omg.CosNaming;
/**
* org/omg/CosNaming/NamingContextExtHolder.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
/** 
* <code>NamingContextExt</code> is the extension of <code>NamingContext</code>
* which
* contains a set of name bindings in which each name is unique and is
* part of Interoperable Naming Service.
* Different names can be bound to an object in the same or different
* contexts at the same time. Using <tt>NamingContextExt</tt>, you can use
* URL-based names to bind and resolve. <p>
* 
* See <a href="http://www.omg.org/technology/documents/formal/naming_service.htm">
* CORBA COS 
* Naming Specification.</a>
*/
extern class NamingContextExtHolder implements org.omg.CORBA.portable.Streamable
{
	public var value : org.omg.CosNaming.NamingContextExt;
	
	@:overload public function new() : Void;
	
	@:overload public function new(initialValue : org.omg.CosNaming.NamingContextExt) : Void;
	
	@:overload public function _read(i : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload public function _write(o : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload public function _type() : org.omg.CORBA.TypeCode;
	
	
}
