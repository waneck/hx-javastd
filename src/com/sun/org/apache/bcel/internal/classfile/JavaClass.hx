package com.sun.org.apache.bcel.internal.classfile;
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
extern class JavaClass extends com.sun.org.apache.bcel.internal.classfile.AccessFlags implements java.lang.Cloneable implements com.sun.org.apache.bcel.internal.classfile.Node
{
	public static var HEAP(default, null) : java.StdTypes.Int8;
	
	public static var FILE(default, null) : java.StdTypes.Int8;
	
	public static var ZIP(default, null) : java.StdTypes.Int8;
	
	/**
	* Constructor gets all contents as arguments.
	*
	* @param class_name_index Index into constant pool referencing a
	* ConstantClass that represents this class.
	* @param superclass_name_index Index into constant pool referencing a
	* ConstantClass that represents this class's superclass.
	* @param file_name File name
	* @param major Major compiler version
	* @param minor Minor compiler version
	* @param access_flags Access rights defined by bit flags
	* @param constant_pool Array of constants
	* @param interfaces Implemented interfaces
	* @param fields Class fields
	* @param methods Class methods
	* @param attributes Class attributes
	* @param source Read from file or generated in memory?
	*/
	@:overload public function new(class_name_index : Int, superclass_name_index : Int, file_name : String, major : Int, minor : Int, access_flags : Int, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool, interfaces : java.NativeArray<Int>, fields : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Field>, methods : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Method>, attributes : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>, source : java.StdTypes.Int8) : Void;
	
	/**
	* Constructor gets all contents as arguments.
	*
	* @param class_name_index Class name
	* @param superclass_name_index Superclass name
	* @param file_name File name
	* @param major Major compiler version
	* @param minor Minor compiler version
	* @param access_flags Access rights defined by bit flags
	* @param constant_pool Array of constants
	* @param interfaces Implemented interfaces
	* @param fields Class fields
	* @param methods Class methods
	* @param attributes Class attributes
	*/
	@:overload public function new(class_name_index : Int, superclass_name_index : Int, file_name : String, major : Int, minor : Int, access_flags : Int, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool, interfaces : java.NativeArray<Int>, fields : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Field>, methods : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Method>, attributes : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Dump class to a file.
	*
	* @param file Output file
	* @throws IOException
	*/
	@:overload public function dump(file : java.io.File) : Void;
	
	/**
	* Dump class to a file named file_name.
	*
	* @param file_name Output file name
	* @exception IOException
	*/
	@:overload public function dump(file_name : String) : Void;
	
	/**
	* @return class in binary format
	*/
	@:overload public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Dump Java class to output stream in binary format.
	*
	* @param file Output stream
	* @exception IOException
	*/
	@:overload public function dump(file : java.io.OutputStream) : Void;
	
	/**
	* Dump Java class to output stream in binary format.
	*
	* @param file Output stream
	* @exception IOException
	*/
	@:overload public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return Attributes of the class.
	*/
	@:overload public function getAttributes() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>;
	
	/**
	* @return Class name.
	*/
	@:overload public function getClassName() : String;
	
	/**
	* @return Package name.
	*/
	@:overload public function getPackageName() : String;
	
	/**
	* @return Class name index.
	*/
	@:overload public function getClassNameIndex() : Int;
	
	/**
	* @return Constant pool.
	*/
	@:overload public function getConstantPool() : com.sun.org.apache.bcel.internal.classfile.ConstantPool;
	
	/**
	* @return Fields, i.e., variables of the class. Like the JVM spec
	* mandates for the classfile format, these fields are those specific to
	* this class, and not those of the superclass or superinterfaces.
	*/
	@:overload public function getFields() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Field>;
	
	/**
	* @return File name of class, aka SourceFile attribute value
	*/
	@:overload public function getFileName() : String;
	
	/**
	* @return Names of implemented interfaces.
	*/
	@:overload public function getInterfaceNames() : java.NativeArray<String>;
	
	/**
	* @return Indices in constant pool of implemented interfaces.
	*/
	@:overload public function getInterfaceIndices() : java.NativeArray<Int>;
	
	/**
	* @return Major number of class file version.
	*/
	@:overload public function getMajor() : Int;
	
	/**
	* @return Methods of the class.
	*/
	@:overload public function getMethods() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Method>;
	
	/**
	* @return A com.sun.org.apache.bcel.internal.classfile.Method corresponding to
	* java.lang.reflect.Method if any
	*/
	@:overload public function getMethod(m : java.lang.reflect.Method) : com.sun.org.apache.bcel.internal.classfile.Method;
	
	/**
	* @return Minor number of class file version.
	*/
	@:overload public function getMinor() : Int;
	
	/**
	* @return sbsolute path to file where this class was read from
	*/
	@:overload public function getSourceFileName() : String;
	
	/**
	* @return Superclass name.
	*/
	@:overload public function getSuperclassName() : String;
	
	/**
	* @return Class name index.
	*/
	@:overload public function getSuperclassNameIndex() : Int;
	
	/**
	* @param attributes .
	*/
	@:overload public function setAttributes(attributes : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>) : Void;
	
	/**
	* @param class_name .
	*/
	@:overload public function setClassName(class_name : String) : Void;
	
	/**
	* @param class_name_index .
	*/
	@:overload public function setClassNameIndex(class_name_index : Int) : Void;
	
	/**
	* @param constant_pool .
	*/
	@:overload public function setConstantPool(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* @param fields .
	*/
	@:overload public function setFields(fields : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Field>) : Void;
	
	/**
	* Set File name of class, aka SourceFile attribute value
	*/
	@:overload public function setFileName(file_name : String) : Void;
	
	/**
	* @param interface_names .
	*/
	@:overload public function setInterfaceNames(interface_names : java.NativeArray<String>) : Void;
	
	/**
	* @param interfaces .
	*/
	@:overload public function setInterfaces(interfaces : java.NativeArray<Int>) : Void;
	
	/**
	* @param major .
	*/
	@:overload public function setMajor(major : Int) : Void;
	
	/**
	* @param methods .
	*/
	@:overload public function setMethods(methods : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Method>) : Void;
	
	/**
	* @param minor .
	*/
	@:overload public function setMinor(minor : Int) : Void;
	
	/**
	* Set absolute path to file this class was read from.
	*/
	@:overload public function setSourceFileName(source_file_name : String) : Void;
	
	/**
	* @param superclass_name .
	*/
	@:overload public function setSuperclassName(superclass_name : String) : Void;
	
	/**
	* @param superclass_name_index .
	*/
	@:overload public function setSuperclassNameIndex(superclass_name_index : Int) : Void;
	
	/**
	* @return String representing class contents.
	*/
	@:overload public function toString() : String;
	
	/**
	* @return deep copy of this class
	*/
	@:overload public function copy() : com.sun.org.apache.bcel.internal.classfile.JavaClass;
	
	@:overload @:final public function isSuper() : Bool;
	
	@:overload @:final public function isClass() : Bool;
	
	/** @return returns either HEAP (generated), FILE, or ZIP
	*/
	@:overload @:final public function getSource() : java.StdTypes.Int8;
	
	/**
	* Gets the ClassRepository which holds its definition. By default
	* this is the same as SyntheticRepository.getInstance();
	*/
	@:overload public function getRepository() : com.sun.org.apache.bcel.internal.util.Repository;
	
	/**
	* Sets the ClassRepository which loaded the JavaClass.
	* Should be called immediately after parsing is done.
	*/
	@:overload public function setRepository(repository : com.sun.org.apache.bcel.internal.util.Repository) : Void;
	
	/** Equivalent to runtime "instanceof" operator.
	*
	* @return true if this JavaClass is derived from teh super class
	*/
	@:overload @:final public function instanceOf(super_class : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Bool;
	
	/**
	* @return true, if clazz is an implementation of interface inter
	*/
	@:overload public function implementationOf(inter : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Bool;
	
	/**
	* @return the superclass for this JavaClass object, or null if this
	* is java.lang.Object
	*/
	@:overload public function getSuperClass() : com.sun.org.apache.bcel.internal.classfile.JavaClass;
	
	/**
	* @return list of super classes of this class in ascending order, i.e.,
	* java.lang.Object is always the last element
	*/
	@:overload public function getSuperClasses() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.JavaClass>;
	
	/**
	* Get interfaces directly implemented by this JavaClass.
	*/
	@:overload public function getInterfaces() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.JavaClass>;
	
	/**
	* Get all interfaces implemented by this JavaClass (transitively).
	*/
	@:overload public function getAllInterfaces() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.JavaClass>;
	
	
}
