package org.omg.IOP;
/**
* org/omg/IOP/IOR.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/IOP.idl
* Thursday, February 21, 2013 9:14:01 AM UTC
*/
extern class IOR implements org.omg.CORBA.portable.IDLEntity
{
	/** The type id, represented as a String. */
	@:public public var type_id : String;
	
	/** 
		 * An array of tagged profiles associated with this 
		 * object reference. 
		 */
	@:public public var profiles : java.NativeArray<org.omg.IOP.TaggedProfile>;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(_type_id : String, _profiles : java.NativeArray<org.omg.IOP.TaggedProfile>) : Void;
	
	
}
