package com.sun.tools.javadoc;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AnnotationValueImpl implements com.sun.javadoc.AnnotationValue
{
	/**
	* Returns the value.
	* The type of the returned object is one of the following:
	* <ul><li> a wrapper class for a primitive type
	*     <li> <code>String</code>
	*     <li> <code>Type</code> (representing a class literal)
	*     <li> <code>FieldDoc</code> (representing an enum constant)
	*     <li> <code>AnnotationDesc</code>
	*     <li> <code>AnnotationValue[]</code>
	* </ul>
	*/
	@:overload public function value() : Dynamic;
	
	/**
	* Returns a string representation of the value.
	*
	* @return the text of a Java language annotation value expression
	*          whose value is the value of this annotation type element.
	*/
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$tools$javadoc$AnnotationValueImpl$ValueVisitor') @:internal extern class AnnotationValueImpl_ValueVisitor implements com.sun.tools.javac.code.Attribute.Attribute_Visitor
{
	public var value : Dynamic;
	
	@:overload public function visitConstant(c : com.sun.tools.javac.code.Attribute.Attribute_Constant) : Void;
	
	@:overload public function visitClass(c : com.sun.tools.javac.code.Attribute.Attribute_Class) : Void;
	
	@:overload public function visitEnum(e : com.sun.tools.javac.code.Attribute.Attribute_Enum) : Void;
	
	@:overload public function visitCompound(c : com.sun.tools.javac.code.Attribute.Attribute_Compound) : Void;
	
	@:overload public function visitArray(a : com.sun.tools.javac.code.Attribute.Attribute_Array) : Void;
	
	@:overload public function visitError(e : com.sun.tools.javac.code.Attribute.Attribute_Error) : Void;
	
	
}
@:native('com$sun$tools$javadoc$AnnotationValueImpl$ToStringVisitor') @:internal extern class AnnotationValueImpl_ToStringVisitor implements com.sun.tools.javac.code.Attribute.Attribute_Visitor
{
	@:overload public function toString() : String;
	
	@:overload public function visitConstant(c : com.sun.tools.javac.code.Attribute.Attribute_Constant) : Void;
	
	@:overload public function visitClass(c : com.sun.tools.javac.code.Attribute.Attribute_Class) : Void;
	
	@:overload public function visitEnum(e : com.sun.tools.javac.code.Attribute.Attribute_Enum) : Void;
	
	@:overload public function visitCompound(c : com.sun.tools.javac.code.Attribute.Attribute_Compound) : Void;
	
	@:overload public function visitArray(a : com.sun.tools.javac.code.Attribute.Attribute_Array) : Void;
	
	@:overload public function visitError(e : com.sun.tools.javac.code.Attribute.Attribute_Error) : Void;
	
	
}
