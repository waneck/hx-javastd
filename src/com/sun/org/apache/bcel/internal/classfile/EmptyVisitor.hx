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
* Visitor with empty method bodies, can be extended and used in conjunction with the
* DescendingVisitor class, e.g.
*
* By courtesy of David Spencer.
*
* @see DescendingVisitor
*
*/
extern class EmptyVisitor implements com.sun.org.apache.bcel.internal.classfile.Visitor
{
	@:overload private function new() : Void;
	
	@:overload public function visitCode(obj : com.sun.org.apache.bcel.internal.classfile.Code) : Void;
	
	@:overload public function visitCodeException(obj : com.sun.org.apache.bcel.internal.classfile.CodeException) : Void;
	
	@:overload public function visitConstantClass(obj : com.sun.org.apache.bcel.internal.classfile.ConstantClass) : Void;
	
	@:overload public function visitConstantDouble(obj : com.sun.org.apache.bcel.internal.classfile.ConstantDouble) : Void;
	
	@:overload public function visitConstantFieldref(obj : com.sun.org.apache.bcel.internal.classfile.ConstantFieldref) : Void;
	
	@:overload public function visitConstantFloat(obj : com.sun.org.apache.bcel.internal.classfile.ConstantFloat) : Void;
	
	@:overload public function visitConstantInteger(obj : com.sun.org.apache.bcel.internal.classfile.ConstantInteger) : Void;
	
	@:overload public function visitConstantInterfaceMethodref(obj : com.sun.org.apache.bcel.internal.classfile.ConstantInterfaceMethodref) : Void;
	
	@:overload public function visitConstantLong(obj : com.sun.org.apache.bcel.internal.classfile.ConstantLong) : Void;
	
	@:overload public function visitConstantMethodref(obj : com.sun.org.apache.bcel.internal.classfile.ConstantMethodref) : Void;
	
	@:overload public function visitConstantNameAndType(obj : com.sun.org.apache.bcel.internal.classfile.ConstantNameAndType) : Void;
	
	@:overload public function visitConstantPool(obj : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	@:overload public function visitConstantString(obj : com.sun.org.apache.bcel.internal.classfile.ConstantString) : Void;
	
	@:overload public function visitConstantUtf8(obj : com.sun.org.apache.bcel.internal.classfile.ConstantUtf8) : Void;
	
	@:overload public function visitConstantValue(obj : com.sun.org.apache.bcel.internal.classfile.ConstantValue) : Void;
	
	@:overload public function visitDeprecated(obj : com.sun.org.apache.bcel.internal.classfile.Deprecated) : Void;
	
	@:overload public function visitExceptionTable(obj : com.sun.org.apache.bcel.internal.classfile.ExceptionTable) : Void;
	
	@:overload public function visitField(obj : com.sun.org.apache.bcel.internal.classfile.Field) : Void;
	
	@:overload public function visitInnerClass(obj : com.sun.org.apache.bcel.internal.classfile.InnerClass) : Void;
	
	@:overload public function visitInnerClasses(obj : com.sun.org.apache.bcel.internal.classfile.InnerClasses) : Void;
	
	@:overload public function visitJavaClass(obj : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Void;
	
	@:overload public function visitLineNumber(obj : com.sun.org.apache.bcel.internal.classfile.LineNumber) : Void;
	
	@:overload public function visitLineNumberTable(obj : com.sun.org.apache.bcel.internal.classfile.LineNumberTable) : Void;
	
	@:overload public function visitLocalVariable(obj : com.sun.org.apache.bcel.internal.classfile.LocalVariable) : Void;
	
	@:overload public function visitLocalVariableTable(obj : com.sun.org.apache.bcel.internal.classfile.LocalVariableTable) : Void;
	
	@:overload public function visitMethod(obj : com.sun.org.apache.bcel.internal.classfile.Method) : Void;
	
	@:overload public function visitSignature(obj : com.sun.org.apache.bcel.internal.classfile.Signature) : Void;
	
	@:overload public function visitSourceFile(obj : com.sun.org.apache.bcel.internal.classfile.SourceFile) : Void;
	
	@:overload public function visitSynthetic(obj : com.sun.org.apache.bcel.internal.classfile.Synthetic) : Void;
	
	@:overload public function visitUnknown(obj : com.sun.org.apache.bcel.internal.classfile.Unknown) : Void;
	
	@:overload public function visitStackMap(obj : com.sun.org.apache.bcel.internal.classfile.StackMap) : Void;
	
	@:overload public function visitStackMapEntry(obj : com.sun.org.apache.bcel.internal.classfile.StackMapEntry) : Void;
	
	
}
