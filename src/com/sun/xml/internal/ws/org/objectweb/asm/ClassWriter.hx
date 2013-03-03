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
* A {@link ClassVisitor} that generates classes in bytecode form. More
* precisely this visitor generates a byte array conforming to the Java class
* file format. It can be used alone, to generate a Java class "from scratch",
* or with one or more {@link ClassReader ClassReader} and adapter class visitor
* to generate a modified class from one or more existing Java classes.
*
* @author Eric Bruneton
*/
extern class ClassWriter implements com.sun.xml.internal.ws.org.objectweb.asm.ClassVisitor
{
	/**
	* Flag to automatically compute the maximum stack size and the maximum
	* number of local variables of methods. If this flag is set, then the
	* arguments of the {@link MethodVisitor#visitMaxs visitMaxs} method of the
	* {@link MethodVisitor} returned by the {@link #visitMethod visitMethod}
	* method will be ignored, and computed automatically from the signature and
	* the bytecode of each method.
	*
	* @see #ClassWriter(int)
	*/
	@:public @:static @:final public static var COMPUTE_MAXS(default, null) : Int;
	
	/**
	* Flag to automatically compute the stack map frames of methods from
	* scratch. If this flag is set, then the calls to the
	* {@link MethodVisitor#visitFrame} method are ignored, and the stack map
	* frames are recomputed from the methods bytecode. The arguments of the
	* {@link MethodVisitor#visitMaxs visitMaxs} method are also ignored and
	* recomputed from the bytecode. In other words, computeFrames implies
	* computeMaxs.
	*
	* @see #ClassWriter(int)
	*/
	@:public @:static @:final public static var COMPUTE_FRAMES(default, null) : Int;
	
	/**
	* Constructs a new {@link ClassWriter} object.
	*
	* @param flags option flags that can be used to modify the default behavior
	*        of this class. See {@link #COMPUTE_MAXS}, {@link #COMPUTE_FRAMES}.
	*/
	@:overload @:public public function new(flags : Int) : Void;
	
	/**
	* Constructs a new {@link ClassWriter} object and enables optimizations for
	* "mostly add" bytecode transformations. These optimizations are the
	* following:
	*
	* <ul> <li>The constant pool from the original class is copied as is in
	* the new class, which saves time. New constant pool entries will be added
	* at the end if necessary, but unused constant pool entries <i>won't be
	* removed</i>.</li> <li>Methods that are not transformed are copied as
	* is in the new class, directly from the original class bytecode (i.e.
	* without emitting visit events for all the method instructions), which
	* saves a <i>lot</i> of time. Untransformed methods are detected by the
	* fact that the {@link ClassReader} receives {@link MethodVisitor} objects
	* that come from a {@link ClassWriter} (and not from a custom
	* {@link ClassAdapter} or any other {@link ClassVisitor} instance).</li>
	* </ul>
	*
	* @param classReader the {@link ClassReader} used to read the original
	*        class. It will be used to copy the entire constant pool from the
	*        original class and also to copy other fragments of original
	*        bytecode where applicable.
	* @param flags option flags that can be used to modify the default behavior
	*        of this class. See {@link #COMPUTE_MAXS}, {@link #COMPUTE_FRAMES}.
	*/
	@:overload @:public public function new(classReader : com.sun.xml.internal.ws.org.objectweb.asm.ClassReader, flags : Int) : Void;
	
	@:overload @:public public function visit(version : Int, access : Int, name : String, signature : String, superName : String, interfaces : java.NativeArray<String>) : Void;
	
	@:overload @:public public function visitSource(file : String, debug : String) : Void;
	
	@:overload @:public public function visitOuterClass(owner : String, name : String, desc : String) : Void;
	
	@:overload @:public public function visitAnnotation(desc : String, visible : Bool) : com.sun.xml.internal.ws.org.objectweb.asm.AnnotationVisitor;
	
	@:overload @:public public function visitAttribute(attr : com.sun.xml.internal.ws.org.objectweb.asm.Attribute) : Void;
	
	@:overload @:public public function visitInnerClass(name : String, outerName : String, innerName : String, access : Int) : Void;
	
	@:overload @:public public function visitField(access : Int, name : String, desc : String, signature : String, value : Dynamic) : com.sun.xml.internal.ws.org.objectweb.asm.FieldVisitor;
	
	@:overload @:public public function visitMethod(access : Int, name : String, desc : String, signature : String, exceptions : java.NativeArray<String>) : com.sun.xml.internal.ws.org.objectweb.asm.MethodVisitor;
	
	@:overload @:public public function visitEnd() : Void;
	
	/**
	* Returns the bytecode of the class that was build with this class writer.
	*
	* @return the bytecode of the class that was build with this class writer.
	*/
	@:overload @:public public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Adds a number or string constant to the constant pool of the class being
	* build. Does nothing if the constant pool already contains a similar item.
	* <i>This method is intended for {@link Attribute} sub classes, and is
	* normally not needed by class generators or adapters.</i>
	*
	* @param cst the value of the constant to be added to the constant pool.
	*        This parameter must be an {@link Integer}, a {@link Float}, a
	*        {@link Long}, a {@link Double} or a {@link String}.
	* @return the index of a new or already existing constant item with the
	*         given value.
	*/
	@:overload @:public public function newConst(cst : Dynamic) : Int;
	
	/**
	* Adds an UTF8 string to the constant pool of the class being build. Does
	* nothing if the constant pool already contains a similar item. <i>This
	* method is intended for {@link Attribute} sub classes, and is normally not
	* needed by class generators or adapters.</i>
	*
	* @param value the String value.
	* @return the index of a new or already existing UTF8 item.
	*/
	@:overload @:public public function newUTF8(value : String) : Int;
	
	/**
	* Adds a class reference to the constant pool of the class being build.
	* Does nothing if the constant pool already contains a similar item.
	* <i>This method is intended for {@link Attribute} sub classes, and is
	* normally not needed by class generators or adapters.</i>
	*
	* @param value the internal name of the class.
	* @return the index of a new or already existing class reference item.
	*/
	@:overload @:public public function newClass(value : String) : Int;
	
	/**
	* Adds a field reference to the constant pool of the class being build.
	* Does nothing if the constant pool already contains a similar item.
	* <i>This method is intended for {@link Attribute} sub classes, and is
	* normally not needed by class generators or adapters.</i>
	*
	* @param owner the internal name of the field's owner class.
	* @param name the field's name.
	* @param desc the field's descriptor.
	* @return the index of a new or already existing field reference item.
	*/
	@:overload @:public public function newField(owner : String, name : String, desc : String) : Int;
	
	/**
	* Adds a method reference to the constant pool of the class being build.
	* Does nothing if the constant pool already contains a similar item.
	* <i>This method is intended for {@link Attribute} sub classes, and is
	* normally not needed by class generators or adapters.</i>
	*
	* @param owner the internal name of the method's owner class.
	* @param name the method's name.
	* @param desc the method's descriptor.
	* @param itf <tt>true</tt> if <tt>owner</tt> is an interface.
	* @return the index of a new or already existing method reference item.
	*/
	@:overload @:public public function newMethod(owner : String, name : String, desc : String, itf : Bool) : Int;
	
	/**
	* Adds a name and type to the constant pool of the class being build. Does
	* nothing if the constant pool already contains a similar item. <i>This
	* method is intended for {@link Attribute} sub classes, and is normally not
	* needed by class generators or adapters.</i>
	*
	* @param name a name.
	* @param desc a type descriptor.
	* @return the index of a new or already existing name and type item.
	*/
	@:overload @:public public function newNameType(name : String, desc : String) : Int;
	
	/**
	* Returns the common super type of the two given types. The default
	* implementation of this method <i>loads<i> the two given classes and uses
	* the java.lang.Class methods to find the common super class. It can be
	* overridden to compute this common super type in other ways, in particular
	* without actually loading any class, or to take into account the class
	* that is currently being generated by this ClassWriter, which can of
	* course not be loaded since it is under construction.
	*
	* @param type1 the internal name of a class.
	* @param type2 the internal name of another class.
	* @return the internal name of the common super class of the two given
	*         classes.
	*/
	@:overload @:protected private function getCommonSuperClass(type1 : String, type2 : String) : String;
	
	
}
