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
/**
* This class is derived from <em>Attribute</em> and represents a reference
* to the source file of this class.  At most one SourceFile attribute
* should appear per classfile.  The intention of this class is that it is
* instantiated from the <em>Attribute.readAttribute()</em> method.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see     Attribute
*/
extern class SourceFile extends com.sun.org.apache.bcel.internal.classfile.Attribute
{
	/**
	* Initialize from another object. Note that both objects use the same
	* references (shallow copy). Use clone() for a physical copy.
	*/
	@:overload public function new(c : SourceFile) : Void;
	
	/**
	* @param name_index Index in constant pool to CONSTANT_Utf8, which
	* should represent the string "SourceFile".
	* @param length Content length in bytes, the value should be 2.
	* @param constant_pool The constant pool that this attribute is
	* associated with.
	* @param sourcefile_index Index in constant pool to CONSTANT_Utf8.  This
	* string will be interpreted as the name of the file from which this
	* class was compiled.  It will not be interpreted as indicating the name
	* of the directory contqining the file or an absolute path; this
	* information has to be supplied the consumer of this attribute - in
	* many cases, the JVM.
	*/
	@:overload public function new(name_index : Int, length : Int, sourcefile_index : Int, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload override public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Dump source file attribute to file stream in binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:final override public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return Index in constant pool of source file name.
	*/
	@:overload @:final public function getSourceFileIndex() : Int;
	
	/**
	* @param sourcefile_index.
	*/
	@:overload @:final public function setSourceFileIndex(sourcefile_index : Int) : Void;
	
	/**
	* @return Source file name.
	*/
	@:overload @:final public function getSourceFileName() : String;
	
	/**
	* @return String representation
	*/
	@:overload @:final override public function toString() : String;
	
	/**
	* @return deep copy of this attribute
	*/
	@:overload override public function copy(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : com.sun.org.apache.bcel.internal.classfile.Attribute;
	
	
}