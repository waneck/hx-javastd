package com.sun.codemodel.internal;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JAnnotationArrayMember extends com.sun.codemodel.internal.JAnnotationValue implements com.sun.codemodel.internal.JAnnotatable
{
	/**
	* Adds an array member to this annotation
	*
	* @param value Adds a string value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : String) : JAnnotationArrayMember;
	
	/**
	* Adds an array member to this annotation
	*
	* @param value Adds a boolean value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : Bool) : JAnnotationArrayMember;
	
	/**
	* Adds an array member to this annotation
	*
	* @param value Adds a byte value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : java.StdTypes.Int8) : JAnnotationArrayMember;
	
	/**
	* Adds an array member to this annotation
	*
	* @param value Adds a char value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : java.StdTypes.Char16) : JAnnotationArrayMember;
	
	/**
	* Adds an array member to this annotation
	*
	* @param value Adds a double value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : Float) : JAnnotationArrayMember;
	
	/**
	* Adds an array member to this annotation
	*
	* @param value Adds a long value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : haxe.Int64) : JAnnotationArrayMember;
	
	/**
	* Adds an array member to this annotation
	*
	* @param value Adds a short value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : java.StdTypes.Int16) : JAnnotationArrayMember;
	
	/**
	* Adds an array member to this annotation
	*
	* @param value Adds an int value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : Int) : JAnnotationArrayMember;
	
	/**
	* Adds an array member to this annotation
	*
	* @param value Adds a float value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : Single) : JAnnotationArrayMember;
	
	/**
	* Adds a enum array member to this annotation
	*
	* @param value Adds a enum value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : java.lang.Enum<Dynamic>) : JAnnotationArrayMember;
	
	/**
	* Adds a enum array member to this annotation
	*
	* @param value Adds a enum value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : com.sun.codemodel.internal.JEnumConstant) : JAnnotationArrayMember;
	
	/**
	* Adds an expression array member to this annotation
	*
	* @param value Adds an expression value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : com.sun.codemodel.internal.JExpression) : JAnnotationArrayMember;
	
	/**
	* Adds a class array member to this annotation
	*
	* @param value Adds a class value to the array member
	* @return The JAnnotationArrayMember. More elements can be added by calling
	*         the same method multiple times
	*/
	@:overload public function param(value : Class<Dynamic>) : JAnnotationArrayMember;
	
	@:overload public function param(type : com.sun.codemodel.internal.JType) : JAnnotationArrayMember;
	
	/**
	* Adds a new annotation to the array.
	*/
	@:overload public function annotate(clazz : Class<java.lang.annotation.Annotation>) : com.sun.codemodel.internal.JAnnotationUse;
	
	/**
	* Adds a new annotation to the array.
	*/
	@:overload public function annotate(clazz : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JAnnotationUse;
	
	@:overload public function annotate2<W : com.sun.codemodel.internal.JAnnotationWriter<Dynamic>>(clazz : Class<W>) : W;
	
	/**
	* {@link JAnnotatable#annotations()}
	*/
	@:overload public function annotations() : java.util.Collection<com.sun.codemodel.internal.JAnnotationUse>;
	
	/**
	* Adds an annotation member to this annotation  array
	* This can be used for e.g &#64;XmlCollection(values= &#64;XmlCollectionItem(type=Foo.class))
	* @param value
	*        Adds a annotation  to the array member
	* @return
	*        The JAnnotationArrayMember. More elements can be added by calling
	*        the same method multiple times
	*
	* @deprecated
	*      use {@link #annotate}
	*/
	@:overload public function param(value : com.sun.codemodel.internal.JAnnotationUse) : JAnnotationArrayMember;
	
	@:overload override public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}
