package com.sun.tools.apt.mirror.declaration;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AnnotationProxyMaker
{
	/**
	* Returns a dynamic proxy for an annotation mirror.
	*/
	@:native('generateAnnotation') @:overload @:public @:static public static function _generateAnnotation<A : java.lang.annotation.Annotation>(env : com.sun.tools.apt.mirror.AptEnv, attrs : com.sun.tools.javac.code.Attribute.Attribute_Compound, annoType : Class<A>) : A;
	
	
}
@:native('com$sun$tools$apt$mirror$declaration$AnnotationProxyMaker$ValueVisitor') @:internal extern class AnnotationProxyMaker_ValueVisitor implements com.sun.tools.javac.code.Attribute.Attribute_Visitor
{
	@:overload @:public public function visitConstant(c : com.sun.tools.javac.code.Attribute.Attribute_Constant) : Void;
	
	@:overload @:public public function visitClass(c : com.sun.tools.javac.code.Attribute.Attribute_Class) : Void;
	
	@:overload @:public public function visitArray(a : com.sun.tools.javac.code.Attribute.Attribute_Array) : Void;
	
	@:overload @:public public function visitEnum(e : com.sun.tools.javac.code.Attribute.Attribute_Enum) : Void;
	
	@:overload @:public public function visitCompound(c : com.sun.tools.javac.code.Attribute.Attribute_Compound) : Void;
	
	@:overload @:public public function visitError(e : com.sun.tools.javac.code.Attribute.Attribute_Error) : Void;
	
	
}
/**
* ExceptionProxy for MirroredTypeException.
* The toString, hashCode, and equals methods foward to the underlying
* type.
*/
@:native('com$sun$tools$apt$mirror$declaration$AnnotationProxyMaker$MirroredTypeExceptionProxy') @:internal extern class AnnotationProxyMaker_MirroredTypeExceptionProxy extends sun.reflect.annotation.ExceptionProxy
{
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:protected override private function generateException() : java.lang.RuntimeException;
	
	
}
/**
* ExceptionProxy for MirroredTypesException.
* The toString, hashCode, and equals methods foward to the underlying
* types.
*/
@:native('com$sun$tools$apt$mirror$declaration$AnnotationProxyMaker$MirroredTypesExceptionProxy') @:internal extern class AnnotationProxyMaker_MirroredTypesExceptionProxy extends sun.reflect.annotation.ExceptionProxy
{
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:protected override private function generateException() : java.lang.RuntimeException;
	
	
}
