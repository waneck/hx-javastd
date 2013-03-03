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
/**
* Super class for InvokeInstruction and FieldInstruction, since they have
* some methods in common!
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class FieldOrMethod extends com.sun.org.apache.bcel.internal.generic.CPInstruction implements com.sun.org.apache.bcel.internal.generic.LoadClass
{
	/**
	* @param index to constant pool
	*/
	@:overload @:protected private function new(opcode : java.StdTypes.Int16, index : Int) : Void;
	
	/** @return signature of referenced method/field.
	*/
	@:overload @:public public function getSignature(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : String;
	
	/** @return name of referenced method/field.
	*/
	@:overload @:public public function getName(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : String;
	
	/** @return name of the referenced class/interface
	*/
	@:overload @:public public function getClassName(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : String;
	
	/** @return type of the referenced class/interface
	*/
	@:overload @:public public function getClassType(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : com.sun.org.apache.bcel.internal.generic.ObjectType;
	
	/** @return type of the referenced class/interface
	*/
	@:overload @:public public function getLoadClassType(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : com.sun.org.apache.bcel.internal.generic.ObjectType;
	
	/**
	* Returns the type associated with this instruction.
	* LoadClass instances are always typed, but this type
	* does not always refer to the type of the class or interface
	* that it possibly forces to load. For example, GETFIELD would
	* return the type of the field and not the type of the class
	* where the field is defined.
	* If no class is forced to be loaded, <B>null</B> is returned.
	* An example for this is an ANEWARRAY instruction that creates
	* an int[][].
	* @see #getLoadClassType(ConstantPoolGen)
	*/
	@:overload @:public override public function getType(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : com.sun.org.apache.bcel.internal.generic.Type;
	
	
}
