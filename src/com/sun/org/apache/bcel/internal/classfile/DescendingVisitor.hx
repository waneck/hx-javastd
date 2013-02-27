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
extern class DescendingVisitor implements com.sun.org.apache.bcel.internal.classfile.Visitor
{
	/** @return container of current entitity, i.e., predecessor during traversal
	*/
	@:overload public function predecessor() : Dynamic;
	
	/**
	* @param level nesting level, i.e., 0 returns the direct predecessor
	* @return container of current entitity, i.e., predecessor during traversal
	*/
	@:overload public function predecessor(level : Int) : Dynamic;
	
	/** @return current object
	*/
	@:overload public function current() : Dynamic;
	
	/**
	* @param clazz Class to traverse
	* @param visitor visitor object to apply to all components
	*/
	@:overload public function new(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass, visitor : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Start traversal.
	*/
	@:overload public function visit() : Void;
	
	@:overload public function visitJavaClass(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Void;
	
	@:overload public function visitField(field : com.sun.org.apache.bcel.internal.classfile.Field) : Void;
	
	@:overload public function visitConstantValue(cv : com.sun.org.apache.bcel.internal.classfile.ConstantValue) : Void;
	
	@:overload public function visitMethod(method : com.sun.org.apache.bcel.internal.classfile.Method) : Void;
	
	@:overload public function visitExceptionTable(table : com.sun.org.apache.bcel.internal.classfile.ExceptionTable) : Void;
	
	@:overload public function visitCode(code : com.sun.org.apache.bcel.internal.classfile.Code) : Void;
	
	@:overload public function visitCodeException(ce : com.sun.org.apache.bcel.internal.classfile.CodeException) : Void;
	
	@:overload public function visitLineNumberTable(table : com.sun.org.apache.bcel.internal.classfile.LineNumberTable) : Void;
	
	@:overload public function visitLineNumber(number : com.sun.org.apache.bcel.internal.classfile.LineNumber) : Void;
	
	@:overload public function visitLocalVariableTable(table : com.sun.org.apache.bcel.internal.classfile.LocalVariableTable) : Void;
	
	@:overload public function visitStackMap(table : com.sun.org.apache.bcel.internal.classfile.StackMap) : Void;
	
	@:overload public function visitStackMapEntry(_var : com.sun.org.apache.bcel.internal.classfile.StackMapEntry) : Void;
	
	@:overload public function visitLocalVariable(_var : com.sun.org.apache.bcel.internal.classfile.LocalVariable) : Void;
	
	@:overload public function visitConstantPool(cp : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	@:overload public function visitConstantClass(constant : com.sun.org.apache.bcel.internal.classfile.ConstantClass) : Void;
	
	@:overload public function visitConstantDouble(constant : com.sun.org.apache.bcel.internal.classfile.ConstantDouble) : Void;
	
	@:overload public function visitConstantFieldref(constant : com.sun.org.apache.bcel.internal.classfile.ConstantFieldref) : Void;
	
	@:overload public function visitConstantFloat(constant : com.sun.org.apache.bcel.internal.classfile.ConstantFloat) : Void;
	
	@:overload public function visitConstantInteger(constant : com.sun.org.apache.bcel.internal.classfile.ConstantInteger) : Void;
	
	@:overload public function visitConstantInterfaceMethodref(constant : com.sun.org.apache.bcel.internal.classfile.ConstantInterfaceMethodref) : Void;
	
	@:overload public function visitConstantLong(constant : com.sun.org.apache.bcel.internal.classfile.ConstantLong) : Void;
	
	@:overload public function visitConstantMethodref(constant : com.sun.org.apache.bcel.internal.classfile.ConstantMethodref) : Void;
	
	@:overload public function visitConstantNameAndType(constant : com.sun.org.apache.bcel.internal.classfile.ConstantNameAndType) : Void;
	
	@:overload public function visitConstantString(constant : com.sun.org.apache.bcel.internal.classfile.ConstantString) : Void;
	
	@:overload public function visitConstantUtf8(constant : com.sun.org.apache.bcel.internal.classfile.ConstantUtf8) : Void;
	
	@:overload public function visitInnerClasses(ic : com.sun.org.apache.bcel.internal.classfile.InnerClasses) : Void;
	
	@:overload public function visitInnerClass(inner : com.sun.org.apache.bcel.internal.classfile.InnerClass) : Void;
	
	@:overload public function visitDeprecated(attribute : com.sun.org.apache.bcel.internal.classfile.Deprecated) : Void;
	
	@:overload public function visitSignature(attribute : com.sun.org.apache.bcel.internal.classfile.Signature) : Void;
	
	@:overload public function visitSourceFile(attribute : com.sun.org.apache.bcel.internal.classfile.SourceFile) : Void;
	
	@:overload public function visitSynthetic(attribute : com.sun.org.apache.bcel.internal.classfile.Synthetic) : Void;
	
	@:overload public function visitUnknown(attribute : com.sun.org.apache.bcel.internal.classfile.Unknown) : Void;
	
	
}
