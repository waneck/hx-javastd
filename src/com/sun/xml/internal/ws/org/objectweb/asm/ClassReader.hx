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
extern class ClassReader
{
	/**
	* Flag to skip method code. If this class is set <code>CODE</code>
	* attribute won't be visited. This can be used, for example, to retrieve
	* annotations for methods and method parameters.
	*/
	public static var SKIP_CODE(default, null) : Int;
	
	/**
	* Flag to skip the debug information in the class. If this flag is set the
	* debug information of the class is not visited, i.e. the
	* {@link MethodVisitor#visitLocalVariable visitLocalVariable} and
	* {@link MethodVisitor#visitLineNumber visitLineNumber} methods will not be
	* called.
	*/
	public static var SKIP_DEBUG(default, null) : Int;
	
	/**
	* Flag to skip the stack map frames in the class. If this flag is set the
	* stack map frames of the class is not visited, i.e. the
	* {@link MethodVisitor#visitFrame visitFrame} method will not be called.
	* This flag is useful when the {@link ClassWriter#COMPUTE_FRAMES} option is
	* used: it avoids visiting frames that will be ignored and recomputed from
	* scratch in the class writer.
	*/
	public static var SKIP_FRAMES(default, null) : Int;
	
	/**
	* Flag to expand the stack map frames. By default stack map frames are
	* visited in their original format (i.e. "expanded" for classes whose
	* version is less than V1_6, and "compressed" for the other classes). If
	* this flag is set, stack map frames are always visited in expanded format
	* (this option adds a decompression/recompression step in ClassReader and
	* ClassWriter which degrades performances quite a lot).
	*/
	public static var EXPAND_FRAMES(default, null) : Int;
	
	/**
	* The class to be parsed. <i>The content of this array must not be
	* modified. This field is intended for {@link Attribute} sub classes, and
	* is normally not needed by class generators or adapters.</i>
	*/
	public var b(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Start index of the class header information (access, name...) in
	* {@link #b b}.
	*/
	public var header(default, null) : Int;
	
	/**
	* Constructs a new {@link ClassReader} object.
	*
	* @param b the bytecode of the class to be read.
	*/
	@:overload public function new(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a new {@link ClassReader} object.
	*
	* @param b the bytecode of the class to be read.
	* @param off the start offset of the class data.
	* @param len the length of the class data.
	*/
	@:overload public function new(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Returns the class's access flags (see {@link Opcodes}). This value may
	* not reflect Deprecated and Synthetic flags when bytecode is before 1.5
	* and those flags are represented by attributes.
	*
	* @return the class access flags
	*
	* @see ClassVisitor#visit(int, int, String, String, String, String[])
	*/
	@:overload public function getAccess() : Int;
	
	/**
	* Returns the internal name of the class (see
	* {@link Type#getInternalName() getInternalName}).
	*
	* @return the internal class name
	*
	* @see ClassVisitor#visit(int, int, String, String, String, String[])
	*/
	@:overload public function getClassName() : String;
	
	/**
	* Returns the internal of name of the super class (see
	* {@link Type#getInternalName() getInternalName}). For interfaces, the
	* super class is {@link Object}.
	*
	* @return the internal name of super class, or <tt>null</tt> for
	*         {@link Object} class.
	*
	* @see ClassVisitor#visit(int, int, String, String, String, String[])
	*/
	@:overload public function getSuperName() : String;
	
	/**
	* Returns the internal names of the class's interfaces (see
	* {@link Type#getInternalName() getInternalName}).
	*
	* @return the array of internal names for all implemented interfaces or
	*         <tt>null</tt>.
	*
	* @see ClassVisitor#visit(int, int, String, String, String, String[])
	*/
	@:overload public function getInterfaces() : java.NativeArray<String>;
	
	/**
	* Constructs a new {@link ClassReader} object.
	*
	* @param is an input stream from which to read the class.
	* @throws IOException if a problem occurs during reading.
	*/
	@:overload public function new(is : java.io.InputStream) : Void;
	
	/**
	* Constructs a new {@link ClassReader} object.
	*
	* @param name the fully qualified name of the class to be read.
	* @throws IOException if an exception occurs during reading.
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Makes the given visitor visit the Java class of this {@link ClassReader}.
	* This class is the one specified in the constructor (see
	* {@link #ClassReader(byte[]) ClassReader}).
	*
	* @param classVisitor the visitor that must visit this class.
	* @param flags option flags that can be used to modify the default behavior
	*        of this class. See {@link #SKIP_DEBUG}, {@link #EXPAND_FRAMES},
	*        {@link #SKIP_FRAMES}, {@link #SKIP_CODE}.
	*/
	@:overload public function accept(classVisitor : com.sun.xml.internal.ws.org.objectweb.asm.ClassVisitor, flags : Int) : Void;
	
	/**
	* Makes the given visitor visit the Java class of this {@link ClassReader}.
	* This class is the one specified in the constructor (see
	* {@link #ClassReader(byte[]) ClassReader}).
	*
	* @param classVisitor the visitor that must visit this class.
	* @param attrs prototypes of the attributes that must be parsed during the
	*        visit of the class. Any attribute whose type is not equal to the
	*        type of one the prototypes will not be parsed: its byte array
	*        value will be passed unchanged to the ClassWriter. <i>This may
	*        corrupt it if this value contains references to the constant pool,
	*        or has syntactic or semantic links with a class element that has
	*        been transformed by a class adapter between the reader and the
	*        writer</i>.
	* @param flags option flags that can be used to modify the default behavior
	*        of this class. See {@link #SKIP_DEBUG}, {@link #EXPAND_FRAMES},
	*        {@link #SKIP_FRAMES}, {@link #SKIP_CODE}.
	*/
	@:overload public function accept(classVisitor : com.sun.xml.internal.ws.org.objectweb.asm.ClassVisitor, attrs : java.NativeArray<com.sun.xml.internal.ws.org.objectweb.asm.Attribute>, flags : Int) : Void;
	
	/**
	* Returns the label corresponding to the given offset. The default
	* implementation of this method creates a label for the given offset if it
	* has not been already created.
	*
	* @param offset a bytecode offset in a method.
	* @param labels the already created labels, indexed by their offset. If a
	*        label already exists for offset this method must not create a new
	*        one. Otherwise it must store the new label in this array.
	* @return a non null Label, which must be equal to labels[offset].
	*/
	@:overload private function readLabel(offset : Int, labels : java.NativeArray<com.sun.xml.internal.ws.org.objectweb.asm.Label>) : com.sun.xml.internal.ws.org.objectweb.asm.Label;
	
	/**
	* Returns the start index of the constant pool item in {@link #b b}, plus
	* one. <i>This method is intended for {@link Attribute} sub classes, and is
	* normally not needed by class generators or adapters.</i>
	*
	* @param item the index a constant pool item.
	* @return the start index of the constant pool item in {@link #b b}, plus
	*         one.
	*/
	@:overload public function getItem(item : Int) : Int;
	
	/**
	* Reads a byte value in {@link #b b}. <i>This method is intended for
	* {@link Attribute} sub classes, and is normally not needed by class
	* generators or adapters.</i>
	*
	* @param index the start index of the value to be read in {@link #b b}.
	* @return the read value.
	*/
	@:overload public function readByte(index : Int) : Int;
	
	/**
	* Reads an unsigned short value in {@link #b b}. <i>This method is
	* intended for {@link Attribute} sub classes, and is normally not needed by
	* class generators or adapters.</i>
	*
	* @param index the start index of the value to be read in {@link #b b}.
	* @return the read value.
	*/
	@:overload public function readUnsignedShort(index : Int) : Int;
	
	/**
	* Reads a signed short value in {@link #b b}. <i>This method is intended
	* for {@link Attribute} sub classes, and is normally not needed by class
	* generators or adapters.</i>
	*
	* @param index the start index of the value to be read in {@link #b b}.
	* @return the read value.
	*/
	@:overload public function readShort(index : Int) : java.StdTypes.Int16;
	
	/**
	* Reads a signed int value in {@link #b b}. <i>This method is intended for
	* {@link Attribute} sub classes, and is normally not needed by class
	* generators or adapters.</i>
	*
	* @param index the start index of the value to be read in {@link #b b}.
	* @return the read value.
	*/
	@:overload public function readInt(index : Int) : Int;
	
	/**
	* Reads a signed long value in {@link #b b}. <i>This method is intended
	* for {@link Attribute} sub classes, and is normally not needed by class
	* generators or adapters.</i>
	*
	* @param index the start index of the value to be read in {@link #b b}.
	* @return the read value.
	*/
	@:overload public function readLong(index : Int) : haxe.Int64;
	
	/**
	* Reads an UTF8 string constant pool item in {@link #b b}. <i>This method
	* is intended for {@link Attribute} sub classes, and is normally not needed
	* by class generators or adapters.</i>
	*
	* @param index the start index of an unsigned short value in {@link #b b},
	*        whose value is the index of an UTF8 constant pool item.
	* @param buf buffer to be used to read the item. This buffer must be
	*        sufficiently large. It is not automatically resized.
	* @return the String corresponding to the specified UTF8 item.
	*/
	@:overload public function readUTF8(index : Int, buf : java.NativeArray<java.StdTypes.Char16>) : String;
	
	/**
	* Reads a class constant pool item in {@link #b b}. <i>This method is
	* intended for {@link Attribute} sub classes, and is normally not needed by
	* class generators or adapters.</i>
	*
	* @param index the start index of an unsigned short value in {@link #b b},
	*        whose value is the index of a class constant pool item.
	* @param buf buffer to be used to read the item. This buffer must be
	*        sufficiently large. It is not automatically resized.
	* @return the String corresponding to the specified class item.
	*/
	@:overload public function readClass(index : Int, buf : java.NativeArray<java.StdTypes.Char16>) : String;
	
	/**
	* Reads a numeric or string constant pool item in {@link #b b}. <i>This
	* method is intended for {@link Attribute} sub classes, and is normally not
	* needed by class generators or adapters.</i>
	*
	* @param item the index of a constant pool item.
	* @param buf buffer to be used to read the item. This buffer must be
	*        sufficiently large. It is not automatically resized.
	* @return the {@link Integer}, {@link Float}, {@link Long},
	*         {@link Double}, {@link String} or {@link Type} corresponding to
	*         the given constant pool item.
	*/
	@:overload public function readConst(item : Int, buf : java.NativeArray<java.StdTypes.Char16>) : Dynamic;
	
	
}
