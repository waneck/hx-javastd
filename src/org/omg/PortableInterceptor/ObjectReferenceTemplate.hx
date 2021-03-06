package org.omg.PortableInterceptor;
/**
* org/omg/PortableInterceptor/ObjectReferenceTemplate.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/Interceptors.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
/** The object reference template.  An instance of this must
* exist for each object adapter created in an ORB.  The server_id,
* orb_id, and adapter_name attributes uniquely identify this template
* within the scope of an IMR.  Note that adapter_id is similarly unique
* within the same scope, but it is opaque, and less useful in many
* cases.
*/
extern interface ObjectReferenceTemplate extends org.omg.PortableInterceptor.ObjectReferenceFactory
{
	@:overload @:public @:abstract public function server_id() : String;
	
	@:overload @:public @:abstract public function orb_id() : String;
	
	@:overload @:public @:abstract public function adapter_name() : java.NativeArray<String>;
	
	
}
