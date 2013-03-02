package com.sun.tools.javac.code;
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
/** An annotation value.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Attribute implements javax.lang.model.element.AnnotationValue
{
	/** The type of the annotation element. */
	public var type : com.sun.tools.javac.code.Type;
	
	@:overload public function new(type : com.sun.tools.javac.code.Type) : Void;
	
	@:overload @:abstract public function accept(v : com.sun.tools.javac.code.Attribute.Attribute_Visitor) : Void;
	
	@:overload public function getValue() : Dynamic;
	
	@:overload public function accept<R, P>(v : javax.lang.model.element.AnnotationValueVisitor<R, P>, p : P) : R;
	
	
}
/** The value for an annotation element of primitive type or String. */
@:native('com$sun$tools$javac$code$Attribute$Constant') extern class Attribute_Constant extends com.sun.tools.javac.code.Attribute
{
	public var value(default, null) : Dynamic;
	
	@:overload override public function accept(v : com.sun.tools.javac.code.Attribute.Attribute_Visitor) : Void;
	
	@:overload public function new(type : com.sun.tools.javac.code.Type, value : Dynamic) : Void;
	
	@:overload public function toString() : String;
	
	@:overload override public function getValue() : Dynamic;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.element.AnnotationValueVisitor<R, P>, p : P) : R;
	
	
}
/** The value for an annotation element of type java.lang.Class,
*  represented as a ClassSymbol.
*/
@:native('com$sun$tools$javac$code$Attribute$Class') extern class Attribute_Class extends com.sun.tools.javac.code.Attribute
{
	public var type(default, null) : com.sun.tools.javac.code.Type;
	
	@:overload override public function accept(v : com.sun.tools.javac.code.Attribute.Attribute_Visitor) : Void;
	
	@:overload public function new(types : com.sun.tools.javac.code.Types, type : com.sun.tools.javac.code.Type) : Void;
	
	@:overload public function toString() : String;
	
	@:overload override public function getValue() : com.sun.tools.javac.code.Type;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.element.AnnotationValueVisitor<R, P>, p : P) : R;
	
	
}
/** A compound annotation element value, the type of which is an
*  attribute interface.
*/
@:native('com$sun$tools$javac$code$Attribute$Compound') extern class Attribute_Compound extends com.sun.tools.javac.code.Attribute implements javax.lang.model.element.AnnotationMirror
{
	/** The attributes values, as pairs.  Each pair contains a
	*  reference to the accessing method in the attribute interface
	*  and the value to be returned when that method is called to
	*  access this attribute.
	*/
	public var values(default, null) : com.sun.tools.javac.util.List<com.sun.tools.javac.util.Pair<MethodSymbol, com.sun.tools.javac.code.Attribute>>;
	
	@:overload public function new(type : com.sun.tools.javac.code.Type, values : com.sun.tools.javac.util.List<com.sun.tools.javac.util.Pair<MethodSymbol, com.sun.tools.javac.code.Attribute>>) : Void;
	
	@:overload override public function accept(v : com.sun.tools.javac.code.Attribute.Attribute_Visitor) : Void;
	
	/**
	* Returns a string representation of this annotation.
	* String is of one of the forms:
	*     @com.example.foo(name1=val1, name2=val2)
	*     @com.example.foo(val)
	*     @com.example.foo
	* Omit parens for marker annotations, and omit "value=" when allowed.
	*/
	@:overload public function toString() : String;
	
	@:overload public function member(member : com.sun.tools.javac.util.Name) : com.sun.tools.javac.code.Attribute;
	
	@:overload override public function getValue() : com.sun.tools.javac.code.Attribute.Attribute_Compound;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.element.AnnotationValueVisitor<R, P>, p : P) : R;
	
	@:overload public function getAnnotationType() : javax.lang.model.type.DeclaredType;
	
	@:overload public function getElementValues() : java.util.Map<MethodSymbol, com.sun.tools.javac.code.Attribute>;
	
	
}
/** The value for an annotation element of an array type.
*/
@:native('com$sun$tools$javac$code$Attribute$Array') extern class Attribute_Array extends com.sun.tools.javac.code.Attribute
{
	public var values(default, null) : java.NativeArray<com.sun.tools.javac.code.Attribute>;
	
	@:overload public function new(type : com.sun.tools.javac.code.Type, values : java.NativeArray<com.sun.tools.javac.code.Attribute>) : Void;
	
	@:overload override public function accept(v : com.sun.tools.javac.code.Attribute.Attribute_Visitor) : Void;
	
	@:overload public function toString() : String;
	
	@:overload override public function getValue() : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Attribute>;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.element.AnnotationValueVisitor<R, P>, p : P) : R;
	
	
}
/** The value for an annotation element of an enum type.
*/
@:native('com$sun$tools$javac$code$Attribute$Enum') extern class Attribute_Enum extends com.sun.tools.javac.code.Attribute
{
	public var value : VarSymbol;
	
	@:overload public function new(type : com.sun.tools.javac.code.Type, value : VarSymbol) : Void;
	
	@:overload override public function accept(v : com.sun.tools.javac.code.Attribute.Attribute_Visitor) : Void;
	
	@:overload public function toString() : String;
	
	@:overload override public function getValue() : VarSymbol;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.element.AnnotationValueVisitor<R, P>, p : P) : R;
	
	
}
@:native('com$sun$tools$javac$code$Attribute$Error') extern class Attribute_Error extends com.sun.tools.javac.code.Attribute
{
	@:overload public function new(type : com.sun.tools.javac.code.Type) : Void;
	
	@:overload override public function accept(v : com.sun.tools.javac.code.Attribute.Attribute_Visitor) : Void;
	
	@:overload public function toString() : String;
	
	@:overload override public function getValue() : String;
	
	@:overload override public function accept<R, P>(v : javax.lang.model.element.AnnotationValueVisitor<R, P>, p : P) : R;
	
	
}
/** A visitor type for dynamic dispatch on the kind of attribute value. */
@:native('com$sun$tools$javac$code$Attribute$Visitor') extern interface Attribute_Visitor
{
	@:overload public function visitConstant(value : com.sun.tools.javac.code.Attribute.Attribute_Constant) : Void;
	
	@:overload public function visitClass(clazz : com.sun.tools.javac.code.Attribute.Attribute_Class) : Void;
	
	@:overload public function visitCompound(compound : com.sun.tools.javac.code.Attribute.Attribute_Compound) : Void;
	
	@:overload public function visitArray(array : com.sun.tools.javac.code.Attribute.Attribute_Array) : Void;
	
	@:overload public function visitEnum(e : com.sun.tools.javac.code.Attribute.Attribute_Enum) : Void;
	
	@:overload public function visitError(e : com.sun.tools.javac.code.Attribute.Attribute_Error) : Void;
	
	
}
/** A mirror of java.lang.annotation.RetentionPolicy. */
@:native('com$sun$tools$javac$code$Attribute$RetentionPolicy') extern enum Attribute_RetentionPolicy
{
	SOURCE;
	CLASS;
	RUNTIME;
	
}

