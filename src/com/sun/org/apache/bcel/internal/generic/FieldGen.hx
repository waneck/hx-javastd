package com.sun.org.apache.bcel.internal.generic;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/* ====================================================================
* The Apache Software License, Version 1.1
*
* Copyright (c) 2001 The Apache Software Foundation.  All rights
* reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Apache" and "Apache Software Foundation" and
*    "Apache BCEL" must not be used to endorse or promote products
*    derived from this software without prior written permission. For
*    written permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    "Apache BCEL", nor may "Apache" appear in their name, without
*    prior written permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class FieldGen extends com.sun.org.apache.bcel.internal.generic.FieldGenOrMethodGen
{
	/**
	* Declare a field. If it is static (isStatic() == true) and has a
	* basic type like int or String it may have an initial value
	* associated with it as defined by setInitValue().
	*
	* @param access_flags access qualifiers
	* @param type  field type
	* @param name field name
	* @param cp constant pool
	*/
	@:overload @:public public function new(access_flags : Int, type : com.sun.org.apache.bcel.internal.generic.Type, name : String, cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	/**
	* Instantiate from existing field.
	*
	* @param field Field object
	* @param cp constant pool (must contain the same entries as the field's constant pool)
	*/
	@:overload @:public public function new(field : com.sun.org.apache.bcel.internal.classfile.Field, cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	/**
	* Set (optional) initial value of field, otherwise it will be set to null/0/false
	* by the JVM automatically.
	*/
	@:overload @:public public function setInitValue(str : String) : Void;
	
	@:overload @:public public function setInitValue(l : haxe.Int64) : Void;
	
	@:overload @:public public function setInitValue(i : Int) : Void;
	
	@:overload @:public public function setInitValue(s : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function setInitValue(c : java.StdTypes.Char16) : Void;
	
	@:overload @:public public function setInitValue(b : java.StdTypes.Int8) : Void;
	
	@:overload @:public public function setInitValue(b : Bool) : Void;
	
	@:overload @:public public function setInitValue(f : Single) : Void;
	
	@:overload @:public public function setInitValue(d : Float) : Void;
	
	/** Remove any initial value.
	*/
	@:overload @:public public function cancelInitValue() : Void;
	
	/**
	* Get field object after having set up all necessary values.
	*/
	@:overload @:public public function getField() : com.sun.org.apache.bcel.internal.classfile.Field;
	
	@:overload @:public override public function getSignature() : String;
	
	/** Add observer for this object.
	*/
	@:overload @:public public function addObserver(o : com.sun.org.apache.bcel.internal.generic.FieldObserver) : Void;
	
	/** Remove observer for this object.
	*/
	@:overload @:public public function removeObserver(o : com.sun.org.apache.bcel.internal.generic.FieldObserver) : Void;
	
	/** Call notify() method on all observers. This method is not called
	* automatically whenever the state has changed, but has to be
	* called by the user after he has finished editing the object.
	*/
	@:overload @:public public function update() : Void;
	
	@:overload @:public public function getInitValue() : String;
	
	/**
	* Return string representation close to declaration format,
	* `public static final short MAX = 100', e.g..
	*
	* @return String representation of field
	*/
	@:overload @:public @:final public function toString() : String;
	
	/** @return deep copy of this field
	*/
	@:overload @:public public function copy(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : com.sun.org.apache.bcel.internal.generic.FieldGen;
	
	
}
