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
extern class Type
{
	/**
	* The sort of the <tt>void</tt> type. See {@link #getSort getSort}.
	*/
	public static var VOID(default, null) : Int;
	
	/**
	* The sort of the <tt>boolean</tt> type. See {@link #getSort getSort}.
	*/
	public static var BOOLEAN(default, null) : Int;
	
	/**
	* The sort of the <tt>char</tt> type. See {@link #getSort getSort}.
	*/
	public static var CHAR(default, null) : Int;
	
	/**
	* The sort of the <tt>byte</tt> type. See {@link #getSort getSort}.
	*/
	public static var BYTE(default, null) : Int;
	
	/**
	* The sort of the <tt>short</tt> type. See {@link #getSort getSort}.
	*/
	public static var SHORT(default, null) : Int;
	
	/**
	* The sort of the <tt>int</tt> type. See {@link #getSort getSort}.
	*/
	public static var INT(default, null) : Int;
	
	/**
	* The sort of the <tt>float</tt> type. See {@link #getSort getSort}.
	*/
	public static var FLOAT(default, null) : Int;
	
	/**
	* The sort of the <tt>long</tt> type. See {@link #getSort getSort}.
	*/
	public static var LONG(default, null) : Int;
	
	/**
	* The sort of the <tt>double</tt> type. See {@link #getSort getSort}.
	*/
	public static var DOUBLE(default, null) : Int;
	
	/**
	* The sort of array reference types. See {@link #getSort getSort}.
	*/
	public static var ARRAY(default, null) : Int;
	
	/**
	* The sort of object reference type. See {@link #getSort getSort}.
	*/
	public static var OBJECT(default, null) : Int;
	
	/**
	* The <tt>void</tt> type.
	*/
	public static var VOID_TYPE(default, null) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* The <tt>boolean</tt> type.
	*/
	public static var BOOLEAN_TYPE(default, null) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* The <tt>char</tt> type.
	*/
	public static var CHAR_TYPE(default, null) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* The <tt>byte</tt> type.
	*/
	public static var BYTE_TYPE(default, null) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* The <tt>short</tt> type.
	*/
	public static var SHORT_TYPE(default, null) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* The <tt>int</tt> type.
	*/
	public static var INT_TYPE(default, null) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* The <tt>float</tt> type.
	*/
	public static var FLOAT_TYPE(default, null) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* The <tt>long</tt> type.
	*/
	public static var LONG_TYPE(default, null) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* The <tt>double</tt> type.
	*/
	public static var DOUBLE_TYPE(default, null) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* Returns the Java type corresponding to the given type descriptor.
	*
	* @param typeDescriptor a type descriptor.
	* @return the Java type corresponding to the given type descriptor.
	*/
	@:overload public static function getType(typeDescriptor : String) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* Returns the Java type corresponding to the given internal name.
	*
	* @param internalName an internal name.
	* @return the Java type corresponding to the given internal name.
	*/
	@:overload public static function getObjectType(internalName : String) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* Returns the Java type corresponding to the given class.
	*
	* @param c a class.
	* @return the Java type corresponding to the given class.
	*/
	@:overload public static function getType(c : Class<Dynamic>) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* Returns the Java types corresponding to the argument types of the given
	* method descriptor.
	*
	* @param methodDescriptor a method descriptor.
	* @return the Java types corresponding to the argument types of the given
	*         method descriptor.
	*/
	@:overload public static function getArgumentTypes(methodDescriptor : String) : java.NativeArray<com.sun.xml.internal.ws.org.objectweb.asm.Type>;
	
	/**
	* Returns the Java types corresponding to the argument types of the given
	* method.
	*
	* @param method a method.
	* @return the Java types corresponding to the argument types of the given
	*         method.
	*/
	@:overload public static function getArgumentTypes(method : java.lang.reflect.Method) : java.NativeArray<com.sun.xml.internal.ws.org.objectweb.asm.Type>;
	
	/**
	* Returns the Java type corresponding to the return type of the given
	* method descriptor.
	*
	* @param methodDescriptor a method descriptor.
	* @return the Java type corresponding to the return type of the given
	*         method descriptor.
	*/
	@:overload public static function getReturnType(methodDescriptor : String) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* Returns the Java type corresponding to the return type of the given
	* method.
	*
	* @param method a method.
	* @return the Java type corresponding to the return type of the given
	*         method.
	*/
	@:overload public static function getReturnType(method : java.lang.reflect.Method) : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* Returns the sort of this Java type.
	*
	* @return {@link #VOID VOID}, {@link #BOOLEAN BOOLEAN},
	*         {@link #CHAR CHAR}, {@link #BYTE BYTE}, {@link #SHORT SHORT},
	*         {@link #INT INT}, {@link #FLOAT FLOAT}, {@link #LONG LONG},
	*         {@link #DOUBLE DOUBLE}, {@link #ARRAY ARRAY} or
	*         {@link #OBJECT OBJECT}.
	*/
	@:overload public function getSort() : Int;
	
	/**
	* Returns the number of dimensions of this array type. This method should
	* only be used for an array type.
	*
	* @return the number of dimensions of this array type.
	*/
	@:overload public function getDimensions() : Int;
	
	/**
	* Returns the type of the elements of this array type. This method should
	* only be used for an array type.
	*
	* @return Returns the type of the elements of this array type.
	*/
	@:overload public function getElementType() : com.sun.xml.internal.ws.org.objectweb.asm.Type;
	
	/**
	* Returns the name of the class corresponding to this type.
	*
	* @return the fully qualified name of the class corresponding to this type.
	*/
	@:overload public function getClassName() : String;
	
	/**
	* Returns the internal name of the class corresponding to this object or
	* array type. The internal name of a class is its fully qualified name (as
	* returned by Class.getName(), where '.' are replaced by '/'. This method
	* should only be used for an object or array type.
	*
	* @return the internal name of the class corresponding to this object type.
	*/
	@:overload public function getInternalName() : String;
	
	/**
	* Returns the descriptor corresponding to this Java type.
	*
	* @return the descriptor corresponding to this Java type.
	*/
	@:overload public function getDescriptor() : String;
	
	/**
	* Returns the descriptor corresponding to the given argument and return
	* types.
	*
	* @param returnType the return type of the method.
	* @param argumentTypes the argument types of the method.
	* @return the descriptor corresponding to the given argument and return
	*         types.
	*/
	@:overload public static function getMethodDescriptor(returnType : com.sun.xml.internal.ws.org.objectweb.asm.Type, argumentTypes : java.NativeArray<com.sun.xml.internal.ws.org.objectweb.asm.Type>) : String;
	
	/**
	* Returns the internal name of the given class. The internal name of a
	* class is its fully qualified name, as returned by Class.getName(), where
	* '.' are replaced by '/'.
	*
	* @param c an object or array class.
	* @return the internal name of the given class.
	*/
	@:native('getInternalName') @:overload public static function _getInternalName(c : Class<Dynamic>) : String;
	
	/**
	* Returns the descriptor corresponding to the given Java type.
	*
	* @param c an object class, a primitive class or an array class.
	* @return the descriptor corresponding to the given class.
	*/
	@:native('getDescriptor') @:overload public static function _getDescriptor(c : Class<Dynamic>) : String;
	
	/**
	* Returns the descriptor corresponding to the given constructor.
	*
	* @param c a {@link Constructor Constructor} object.
	* @return the descriptor of the given constructor.
	*/
	@:overload public static function getConstructorDescriptor(c : java.lang.reflect.Constructor<Dynamic>) : String;
	
	/**
	* Returns the descriptor corresponding to the given method.
	*
	* @param m a {@link Method Method} object.
	* @return the descriptor of the given method.
	*/
	@:overload public static function getMethodDescriptor(m : java.lang.reflect.Method) : String;
	
	/**
	* Returns the size of values of this type.
	*
	* @return the size of values of this type, i.e., 2 for <tt>long</tt> and
	*         <tt>double</tt>, and 1 otherwise.
	*/
	@:overload public function getSize() : Int;
	
	/**
	* Returns a JVM instruction opcode adapted to this Java type.
	*
	* @param opcode a JVM instruction opcode. This opcode must be one of ILOAD,
	*        ISTORE, IALOAD, IASTORE, IADD, ISUB, IMUL, IDIV, IREM, INEG, ISHL,
	*        ISHR, IUSHR, IAND, IOR, IXOR and IRETURN.
	* @return an opcode that is similar to the given opcode, but adapted to
	*         this Java type. For example, if this type is <tt>float</tt> and
	*         <tt>opcode</tt> is IRETURN, this method returns FRETURN.
	*/
	@:overload public function getOpcode(opcode : Int) : Int;
	
	/**
	* Tests if the given object is equal to this type.
	*
	* @param o the object to be compared to this type.
	* @return <tt>true</tt> if the given object is equal to this type.
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this type.
	*
	* @return a hash code value for this type.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string representation of this type.
	*
	* @return the descriptor of this type.
	*/
	@:overload public function toString() : String;
	
	
}
