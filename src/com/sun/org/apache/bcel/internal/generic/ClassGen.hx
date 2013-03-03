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
extern class ClassGen extends com.sun.org.apache.bcel.internal.classfile.AccessFlags implements java.lang.Cloneable
{
	/** Convenience constructor to set up some important values initially.
	*
	* @param class_name fully qualified class name
	* @param super_class_name fully qualified superclass name
	* @param file_name source file name
	* @param access_flags access qualifiers
	* @param interfaces implemented interfaces
	* @param cp constant pool to use
	*/
	@:overload @:public public function new(class_name : String, super_class_name : String, file_name : String, access_flags : Int, interfaces : java.NativeArray<String>, cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	/** Convenience constructor to set up some important values initially.
	*
	* @param class_name fully qualified class name
	* @param super_class_name fully qualified superclass name
	* @param file_name source file name
	* @param access_flags access qualifiers
	* @param interfaces implemented interfaces
	*/
	@:overload @:public public function new(class_name : String, super_class_name : String, file_name : String, access_flags : Int, interfaces : java.NativeArray<String>) : Void;
	
	/**
	* Initialize with existing class.
	* @param clazz JavaClass object (e.g. read from file)
	*/
	@:overload @:public public function new(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Void;
	
	/**
	* @return the (finally) built up Java class object.
	*/
	@:overload @:public public function getJavaClass() : com.sun.org.apache.bcel.internal.classfile.JavaClass;
	
	/**
	* Add an interface to this class, i.e., this class has to implement it.
	* @param name interface to implement (fully qualified class name)
	*/
	@:overload @:public public function addInterface(name : String) : Void;
	
	/**
	* Remove an interface from this class.
	* @param name interface to remove (fully qualified name)
	*/
	@:overload @:public public function removeInterface(name : String) : Void;
	
	/**
	* @return major version number of class file
	*/
	@:overload @:public public function getMajor() : Int;
	
	/** Set major version number of class file, default value is 45 (JDK 1.1)
	* @param major major version number
	*/
	@:overload @:public public function setMajor(major : Int) : Void;
	
	/** Set minor version number of class file, default value is 3 (JDK 1.1)
	* @param minor minor version number
	*/
	@:overload @:public public function setMinor(minor : Int) : Void;
	
	/**
	* @return minor version number of class file
	*/
	@:overload @:public public function getMinor() : Int;
	
	/**
	* Add an attribute to this class.
	* @param a attribute to add
	*/
	@:overload @:public public function addAttribute(a : com.sun.org.apache.bcel.internal.classfile.Attribute) : Void;
	
	/**
	* Add a method to this class.
	* @param m method to add
	*/
	@:overload @:public public function addMethod(m : com.sun.org.apache.bcel.internal.classfile.Method) : Void;
	
	/**
	* Convenience method.
	*
	* Add an empty constructor to this class that does nothing but calling super().
	* @param access rights for constructor
	*/
	@:overload @:public public function addEmptyConstructor(access_flags : Int) : Void;
	
	/**
	* Add a field to this class.
	* @param f field to add
	*/
	@:overload @:public public function addField(f : com.sun.org.apache.bcel.internal.classfile.Field) : Void;
	
	@:overload @:public public function containsField(f : com.sun.org.apache.bcel.internal.classfile.Field) : Bool;
	
	/** @return field object with given name, or null
	*/
	@:overload @:public public function containsField(name : String) : com.sun.org.apache.bcel.internal.classfile.Field;
	
	/** @return method object with given name and signature, or null
	*/
	@:overload @:public public function containsMethod(name : String, signature : String) : com.sun.org.apache.bcel.internal.classfile.Method;
	
	/**
	* Remove an attribute from this class.
	* @param a attribute to remove
	*/
	@:overload @:public public function removeAttribute(a : com.sun.org.apache.bcel.internal.classfile.Attribute) : Void;
	
	/**
	* Remove a method from this class.
	* @param m method to remove
	*/
	@:overload @:public public function removeMethod(m : com.sun.org.apache.bcel.internal.classfile.Method) : Void;
	
	/** Replace given method with new one. If the old one does not exist
	* add the new_ method to the class anyway.
	*/
	@:overload @:public public function replaceMethod(old : com.sun.org.apache.bcel.internal.classfile.Method, new_ : com.sun.org.apache.bcel.internal.classfile.Method) : Void;
	
	/** Replace given field with new one. If the old one does not exist
	* add the new_ field to the class anyway.
	*/
	@:overload @:public public function replaceField(old : com.sun.org.apache.bcel.internal.classfile.Field, new_ : com.sun.org.apache.bcel.internal.classfile.Field) : Void;
	
	/**
	* Remove a field to this class.
	* @param f field to remove
	*/
	@:overload @:public public function removeField(f : com.sun.org.apache.bcel.internal.classfile.Field) : Void;
	
	@:overload @:public public function getClassName() : String;
	
	@:overload @:public public function getSuperclassName() : String;
	
	@:overload @:public public function getFileName() : String;
	
	@:overload @:public public function setClassName(name : String) : Void;
	
	@:overload @:public public function setSuperclassName(name : String) : Void;
	
	@:overload @:public public function getMethods() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Method>;
	
	@:overload @:public public function setMethods(methods : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Method>) : Void;
	
	@:overload @:public public function setMethodAt(method : com.sun.org.apache.bcel.internal.classfile.Method, pos : Int) : Void;
	
	@:overload @:public public function getMethodAt(pos : Int) : com.sun.org.apache.bcel.internal.classfile.Method;
	
	@:overload @:public public function getInterfaceNames() : java.NativeArray<String>;
	
	@:overload @:public public function getInterfaces() : java.NativeArray<Int>;
	
	@:overload @:public public function getFields() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Field>;
	
	@:overload @:public public function getAttributes() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>;
	
	@:overload @:public public function getConstantPool() : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
	
	@:overload @:public public function setConstantPool(constant_pool : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	@:overload @:public public function setClassNameIndex(class_name_index : Int) : Void;
	
	@:overload @:public public function setSuperclassNameIndex(superclass_name_index : Int) : Void;
	
	@:overload @:public public function getSuperclassNameIndex() : Int;
	
	@:overload @:public public function getClassNameIndex() : Int;
	
	/** Add observer for this object.
	*/
	@:overload @:public public function addObserver(o : com.sun.org.apache.bcel.internal.generic.ClassObserver) : Void;
	
	/** Remove observer for this object.
	*/
	@:overload @:public public function removeObserver(o : com.sun.org.apache.bcel.internal.generic.ClassObserver) : Void;
	
	/** Call notify() method on all observers. This method is not called
	* automatically whenever the state has changed, but has to be
	* called by the user after he has finished editing the object.
	*/
	@:overload @:public public function update() : Void;
	
	@:overload @:public public function clone() : Dynamic;
	
	
}
