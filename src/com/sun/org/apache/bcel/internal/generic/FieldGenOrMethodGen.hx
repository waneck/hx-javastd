package com.sun.org.apache.bcel.internal.generic;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
extern class FieldGenOrMethodGen extends com.sun.org.apache.bcel.internal.classfile.AccessFlags implements com.sun.org.apache.bcel.internal.generic.NamedAndTyped implements java.lang.Cloneable
{
	/**
	* Super class for FieldGen and MethodGen objects, since they have
	* some methods in common!
	*
	* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
	*/
	@:protected private var name : String;
	
	@:protected private var type : com.sun.org.apache.bcel.internal.generic.Type;
	
	@:protected private var cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
	
	@:overload @:protected private function new() : Void;
	
	@:overload @:public public function setType(type : com.sun.org.apache.bcel.internal.generic.Type) : Void;
	
	@:overload @:public public function getType() : com.sun.org.apache.bcel.internal.generic.Type;
	
	/** @return name of method/field.
	*/
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function setName(name : String) : Void;
	
	@:overload @:public public function getConstantPool() : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
	
	@:overload @:public public function setConstantPool(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	/**
	* Add an attribute to this method. Currently, the JVM knows about
	* the `Code', `ConstantValue', `Synthetic' and `Exceptions'
	* attributes. Other attributes will be ignored by the JVM but do no
	* harm.
	*
	* @param a attribute to be added
	*/
	@:overload @:public public function addAttribute(a : com.sun.org.apache.bcel.internal.classfile.Attribute) : Void;
	
	/**
	* Remove an attribute.
	*/
	@:overload @:public public function removeAttribute(a : com.sun.org.apache.bcel.internal.classfile.Attribute) : Void;
	
	/**
	* Remove all attributes.
	*/
	@:overload @:public public function removeAttributes() : Void;
	
	/**
	* @return all attributes of this method.
	*/
	@:overload @:public public function getAttributes() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>;
	
	/** @return signature of method/field.
	*/
	@:overload @:public @:abstract public function getSignature() : String;
	
	@:overload @:public public function clone() : Dynamic;
	
	
}
