package com.sun.tools.classfile;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Type
{
	/*
	*  Family of classes used to represent the parsed form of a {@link Descriptor}
	*  or {@link Signature}.
	*
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	@:overload private function new() : Void;
	
	@:overload public function isObject() : Bool;
	
	@:overload @:abstract public function accept<R, D>(visitor : com.sun.tools.classfile.Type.Type_Visitor<R, D>, data : D) : R;
	
	@:overload private static function append(sb : java.lang.StringBuilder, prefix : String, types : java.util.List<com.sun.tools.classfile.Type>, suffix : String) : Void;
	
	@:overload private static function appendIfNotEmpty(sb : java.lang.StringBuilder, prefix : String, types : java.util.List<com.sun.tools.classfile.Type>, suffix : String) : Void;
	
	
}
@:native('com$sun$tools$classfile$Type$Visitor') extern interface Type_Visitor<R, P>
{
	@:overload public function visitSimpleType(type : com.sun.tools.classfile.Type.Type_SimpleType, p : P) : R;
	
	@:overload public function visitArrayType(type : com.sun.tools.classfile.Type.Type_ArrayType, p : P) : R;
	
	@:overload public function visitMethodType(type : com.sun.tools.classfile.Type.Type_MethodType, p : P) : R;
	
	@:overload public function visitClassSigType(type : com.sun.tools.classfile.Type.Type_ClassSigType, p : P) : R;
	
	@:overload public function visitClassType(type : com.sun.tools.classfile.Type.Type_ClassType, p : P) : R;
	
	@:overload public function visitTypeParamType(type : com.sun.tools.classfile.Type.Type_TypeParamType, p : P) : R;
	
	@:overload public function visitWildcardType(type : com.sun.tools.classfile.Type.Type_WildcardType, p : P) : R;
	
	
}
/**
* Represents a type signature with a simple name. The name may be that of a
* primitive type, such "{@code int}, {@code float}, etc
* or that of a type argument, such as {@code T}, {@code K}, {@code V}, etc.
*
* See:
* JVMS 4.3.2
*      BaseType:
*          {@code B}, {@code C}, {@code D}, {@code F}, {@code I},
*          {@code J}, {@code S}, {@code Z};
*      VoidDescriptor:
*          {@code V};
* JVMS 4.3.4
*      TypeVariableSignature:
*          {@code T} Identifier {@code ;}
*/
@:native('com$sun$tools$classfile$Type$SimpleType') extern class Type_SimpleType extends com.sun.tools.classfile.Type
{
	@:overload public function new(name : String) : Void;
	
	@:overload override public function accept<R, D>(visitor : com.sun.tools.classfile.Type.Type_Visitor<R, D>, data : D) : R;
	
	@:overload public function isPrimitiveType() : Bool;
	
	@:overload public function toString() : String;
	
	public var name(default, null) : String;
	
	
}
/**
* Represents an array type signature.
*
* See:
* JVMS 4.3.4
*      ArrayTypeSignature:
*          {@code [} TypeSignature {@code ]}
*/
@:native('com$sun$tools$classfile$Type$ArrayType') extern class Type_ArrayType extends com.sun.tools.classfile.Type
{
	@:overload public function new(elemType : com.sun.tools.classfile.Type) : Void;
	
	@:overload override public function accept<R, D>(visitor : com.sun.tools.classfile.Type.Type_Visitor<R, D>, data : D) : R;
	
	@:overload public function toString() : String;
	
	public var elemType(default, null) : com.sun.tools.classfile.Type;
	
	
}
/**
* Represents a method type signature.
*
* See;
* JVMS 4.3.4
*      MethodTypeSignature:
*          FormalTypeParameters_opt {@code (} TypeSignature* {@code)} ReturnType
*              ThrowsSignature*
*/
@:native('com$sun$tools$classfile$Type$MethodType') extern class Type_MethodType extends com.sun.tools.classfile.Type
{
	@:overload public function new(paramTypes : java.util.List<com.sun.tools.classfile.Type>, resultType : com.sun.tools.classfile.Type) : Void;
	
	@:overload public function new(typeParamTypes : java.util.List<com.sun.tools.classfile.Type.Type_TypeParamType>, paramTypes : java.util.List<com.sun.tools.classfile.Type>, returnType : com.sun.tools.classfile.Type, throwsTypes : java.util.List<com.sun.tools.classfile.Type>) : Void;
	
	@:overload override public function accept<R, D>(visitor : com.sun.tools.classfile.Type.Type_Visitor<R, D>, data : D) : R;
	
	@:overload public function toString() : String;
	
	public var typeParamTypes(default, null) : java.util.List<com.sun.tools.classfile.Type.Type_TypeParamType>;
	
	public var paramTypes(default, null) : java.util.List<com.sun.tools.classfile.Type>;
	
	public var returnType(default, null) : com.sun.tools.classfile.Type;
	
	public var throwsTypes(default, null) : java.util.List<com.sun.tools.classfile.Type>;
	
	
}
/**
* Represents a class signature. These describe the signature of
* a class that has type arguments.
*
* See:
* JVMS 4.3.4
*      ClassSignature:
*          FormalTypeParameters_opt SuperclassSignature SuperinterfaceSignature*
*/
@:native('com$sun$tools$classfile$Type$ClassSigType') extern class Type_ClassSigType extends com.sun.tools.classfile.Type
{
	@:overload public function new(typeParamTypes : java.util.List<com.sun.tools.classfile.Type.Type_TypeParamType>, superclassType : com.sun.tools.classfile.Type, superinterfaceTypes : java.util.List<com.sun.tools.classfile.Type>) : Void;
	
	@:overload override public function accept<R, D>(visitor : com.sun.tools.classfile.Type.Type_Visitor<R, D>, data : D) : R;
	
	@:overload public function toString() : String;
	
	public var typeParamTypes(default, null) : java.util.List<com.sun.tools.classfile.Type.Type_TypeParamType>;
	
	public var superclassType(default, null) : com.sun.tools.classfile.Type;
	
	public var superinterfaceTypes(default, null) : java.util.List<com.sun.tools.classfile.Type>;
	
	
}
/**
* Represents a class type signature. This is used to represent a
* reference to a class, such as in a field, parameter, return type, etc.
*
* See:
* JVMS 4.3.4
*      ClassTypeSignature:
*          {@code L} PackageSpecifier_opt SimpleClassTypeSignature
*                  ClassTypeSignatureSuffix* {@code ;}
*      PackageSpecifier:
*          Identifier {@code /} PackageSpecifier*
*      SimpleClassTypeSignature:
*          Identifier TypeArguments_opt }
*      ClassTypeSignatureSuffix:
*          {@code .} SimpleClassTypeSignature
*/
@:native('com$sun$tools$classfile$Type$ClassType') extern class Type_ClassType extends com.sun.tools.classfile.Type
{
	@:overload public function new(outerType : com.sun.tools.classfile.Type.Type_ClassType, name : String, typeArgs : java.util.List<com.sun.tools.classfile.Type>) : Void;
	
	@:overload override public function accept<R, D>(visitor : com.sun.tools.classfile.Type.Type_Visitor<R, D>, data : D) : R;
	
	@:overload public function getBinaryName() : String;
	
	@:overload public function toString() : String;
	
	@:overload override public function isObject() : Bool;
	
	public var outerType(default, null) : com.sun.tools.classfile.Type.Type_ClassType;
	
	public var name(default, null) : String;
	
	public var typeArgs(default, null) : java.util.List<com.sun.tools.classfile.Type>;
	
	
}
/**
* Represents a FormalTypeParameter. These are used to declare the type
* parameters for generic classes and methods.
*
* See:
* JVMS 4.3.4
*     FormalTypeParameters:
*          {@code <} FormalTypeParameter+ {@code >}
*     FormalTypeParameter:
*          Identifier ClassBound InterfaceBound*
*     ClassBound:
*          {@code :} FieldTypeSignature_opt
*     InterfaceBound:
*          {@code :} FieldTypeSignature
*/
@:native('com$sun$tools$classfile$Type$TypeParamType') extern class Type_TypeParamType extends com.sun.tools.classfile.Type
{
	@:overload public function new(name : String, classBound : com.sun.tools.classfile.Type, interfaceBounds : java.util.List<com.sun.tools.classfile.Type>) : Void;
	
	@:overload override public function accept<R, D>(visitor : com.sun.tools.classfile.Type.Type_Visitor<R, D>, data : D) : R;
	
	@:overload public function toString() : String;
	
	public var name(default, null) : String;
	
	public var classBound(default, null) : com.sun.tools.classfile.Type;
	
	public var interfaceBounds(default, null) : java.util.List<com.sun.tools.classfile.Type>;
	
	
}
/**
* Represents a wildcard type argument.  A type argument that is not a
* wildcard type argument will be represented by a ClassType, ArrayType, etc.
*
* See:
* JVMS 4.3.4
*      TypeArgument:
*          WildcardIndicator_opt FieldTypeSignature
*          {@code *}
*      WildcardIndicator:
*          {@code +}
*          {@code -}
*/
@:native('com$sun$tools$classfile$Type$WildcardType') extern class Type_WildcardType extends com.sun.tools.classfile.Type
{
	@:overload public function new() : Void;
	
	@:overload public function new(kind : com.sun.tools.classfile.Type.Type_WildcardType_Kind, boundType : com.sun.tools.classfile.Type) : Void;
	
	@:overload override public function accept<R, D>(visitor : com.sun.tools.classfile.Type.Type_Visitor<R, D>, data : D) : R;
	
	@:overload public function toString() : String;
	
	public var kind(default, null) : com.sun.tools.classfile.Type.Type_WildcardType_Kind;
	
	public var boundType(default, null) : com.sun.tools.classfile.Type;
	
	
}
@:native('com$sun$tools$classfile$Type$WildcardType$Kind') extern enum Type_WildcardType_Kind
{
	UNBOUNDED;
	EXTENDS;
	SUPER;
	
}

