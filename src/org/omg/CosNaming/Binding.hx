package org.omg.CosNaming;
/**
* org/omg/CosNaming/Binding.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/CosNaming/nameservice.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
extern class Binding implements org.omg.CORBA.portable.IDLEntity
{
	@:public public var binding_name : java.NativeArray<org.omg.CosNaming.NameComponent>;
	
	@:public public var binding_type : org.omg.CosNaming.BindingType;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(_binding_name : java.NativeArray<org.omg.CosNaming.NameComponent>, _binding_type : org.omg.CosNaming.BindingType) : Void;
	
	
}
