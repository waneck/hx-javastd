package org.omg.PortableInterceptor;
/**
* org/omg/PortableInterceptor/ObjectReferenceTemplateSeqHolder.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/Interceptors.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
/** Sequence of object reference templates is used for reporting state
* changes that do not occur on the adapter manager.
*/
extern class ObjectReferenceTemplateSeqHolder implements org.omg.CORBA.portable.Streamable
{
	@:public public var value : java.NativeArray<org.omg.PortableInterceptor.ObjectReferenceTemplate>;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(initialValue : java.NativeArray<org.omg.PortableInterceptor.ObjectReferenceTemplate>) : Void;
	
	@:overload @:public public function _read(i : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload @:public public function _write(o : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload @:public public function _type() : org.omg.CORBA.TypeCode;
	
	
}
