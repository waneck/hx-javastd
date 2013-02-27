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
* This class represents an entry in the exception table of the <em>Code</em>
* attribute and is used only there. It contains a range in which a
* particular exception handler is active.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see     Code
*/
extern class CodeException implements java.lang.Cloneable implements com.sun.org.apache.bcel.internal.Constants implements com.sun.org.apache.bcel.internal.classfile.Node implements java.io.Serializable
{
	/**
	* Initialize from another object.
	*/
	@:overload public function new(c : CodeException) : Void;
	
	/**
	* @param start_pc Range in the code the exception handler is active,
	* start_pc is inclusive while
	* @param end_pc is exclusive
	* @param handler_pc Starting address of exception handler, i.e.,
	* an offset from start of code.
	* @param catch_type If zero the handler catches any
	* exception, otherwise it points to the exception class which is
	* to be caught.
	*/
	@:overload public function new(start_pc : Int, end_pc : Int, handler_pc : Int, catch_type : Int) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Dump code exception to file stream in binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:final public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return 0, if the handler catches any exception, otherwise it points to
	* the exception class which is to be caught.
	*/
	@:overload @:final public function getCatchType() : Int;
	
	/**
	* @return Exclusive end index of the region where the handler is active.
	*/
	@:overload @:final public function getEndPC() : Int;
	
	/**
	* @return Starting address of exception handler, relative to the code.
	*/
	@:overload @:final public function getHandlerPC() : Int;
	
	/**
	* @return Inclusive start index of the region where the handler is active.
	*/
	@:overload @:final public function getStartPC() : Int;
	
	/**
	* @param catch_type.
	*/
	@:overload @:final public function setCatchType(catch_type : Int) : Void;
	
	/**
	* @param end_pc end of handled block
	*/
	@:overload @:final public function setEndPC(end_pc : Int) : Void;
	
	/**
	* @param handler_pc where the actual code is
	*/
	@:overload @:final public function setHandlerPC(handler_pc : Int) : Void;
	
	/**
	* @param start_pc start of handled block
	*/
	@:overload @:final public function setStartPC(start_pc : Int) : Void;
	
	/**
	* @return String representation.
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* @return String representation.
	*/
	@:overload @:final public function toString(cp : com.sun.org.apache.bcel.internal.classfile.ConstantPool, verbose : Bool) : String;
	
	@:overload @:final public function toString(cp : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : String;
	
	/**
	* @return deep copy of this object
	*/
	@:overload public function copy() : CodeException;
	
	
}
