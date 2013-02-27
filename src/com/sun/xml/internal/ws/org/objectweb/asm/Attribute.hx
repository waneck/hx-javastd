package com.sun.xml.internal.ws.org.objectweb.asm;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file:
*
* ASM: a very small and fast Java bytecode manipulation framework
* Copyright (c) 2000-2007 INRIA, France Telecom
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in the
*    documentation and/or other materials provided with the distribution.
* 3. Neither the name of the copyright holders nor the names of its
*    contributors may be used to endorse or promote products derived from
*    this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
* ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
* LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
* SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
* INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
* ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
* THE POSSIBILITY OF SUCH DAMAGE.
*/
/**
* A non standard class, field, method or code attribute.
*
* @author Eric Bruneton
* @author Eugene Kuleshov
*/
extern class Attribute
{
	/**
	* The type of this attribute.
	*/
	public var type(default, null) : String;
	
	/**
	* Constructs a new empty attribute.
	*
	* @param type the type of the attribute.
	*/
	@:overload private function new(type : String) : Void;
	
	/**
	* Returns <tt>true</tt> if this type of attribute is unknown. The default
	* implementation of this method always returns <tt>true</tt>.
	*
	* @return <tt>true</tt> if this type of attribute is unknown.
	*/
	@:overload public function isUnknown() : Bool;
	
	/**
	* Returns <tt>true</tt> if this type of attribute is a code attribute.
	*
	* @return <tt>true</tt> if this type of attribute is a code attribute.
	*/
	@:overload public function isCodeAttribute() : Bool;
	
	/**
	* Returns the labels corresponding to this attribute.
	*
	* @return the labels corresponding to this attribute, or <tt>null</tt> if
	*         this attribute is not a code attribute that contains labels.
	*/
	@:overload private function getLabels() : java.NativeArray<com.sun.xml.internal.ws.org.objectweb.asm.Label>;
	
	/**
	* Reads a {@link #type type} attribute. This method must return a <i>new</i>
	* {@link Attribute} object, of type {@link #type type}, corresponding to
	* the <tt>len</tt> bytes starting at the given offset, in the given class
	* reader.
	*
	* @param cr the class that contains the attribute to be read.
	* @param off index of the first byte of the attribute's content in {@link
	*        ClassReader#b cr.b}. The 6 attribute header bytes, containing the
	*        type and the length of the attribute, are not taken into account
	*        here.
	* @param len the length of the attribute's content.
	* @param buf buffer to be used to call
	*        {@link ClassReader#readUTF8 readUTF8},
	*        {@link ClassReader#readClass(int,char[]) readClass} or
	*        {@link ClassReader#readConst readConst}.
	* @param codeOff index of the first byte of code's attribute content in
	*        {@link ClassReader#b cr.b}, or -1 if the attribute to be read is
	*        not a code attribute. The 6 attribute header bytes, containing the
	*        type and the length of the attribute, are not taken into account
	*        here.
	* @param labels the labels of the method's code, or <tt>null</tt> if the
	*        attribute to be read is not a code attribute.
	* @return a <i>new</i> {@link Attribute} object corresponding to the given
	*         bytes.
	*/
	@:overload private function read(cr : com.sun.xml.internal.ws.org.objectweb.asm.ClassReader, off : Int, len : Int, buf : java.NativeArray<java.StdTypes.Char16>, codeOff : Int, labels : java.NativeArray<com.sun.xml.internal.ws.org.objectweb.asm.Label>) : Attribute;
	
	/**
	* Returns the byte array form of this attribute.
	*
	* @param cw the class to which this attribute must be added. This parameter
	*        can be used to add to the constant pool of this class the items
	*        that corresponds to this attribute.
	* @param code the bytecode of the method corresponding to this code
	*        attribute, or <tt>null</tt> if this attribute is not a code
	*        attributes.
	* @param len the length of the bytecode of the method corresponding to this
	*        code attribute, or <tt>null</tt> if this attribute is not a code
	*        attribute.
	* @param maxStack the maximum stack size of the method corresponding to
	*        this code attribute, or -1 if this attribute is not a code
	*        attribute.
	* @param maxLocals the maximum number of local variables of the method
	*        corresponding to this code attribute, or -1 if this attribute is
	*        not a code attribute.
	* @return the byte array form of this attribute.
	*/
	@:overload private function write(cw : com.sun.xml.internal.ws.org.objectweb.asm.ClassWriter, code : java.NativeArray<java.StdTypes.Int8>, len : Int, maxStack : Int, maxLocals : Int) : com.sun.xml.internal.ws.org.objectweb.asm.ByteVector;
	
	
}
