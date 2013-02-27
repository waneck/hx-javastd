package com.sun.tools.internal.xjc.generator.bean.field;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AbstractFieldWithVar extends com.sun.tools.internal.xjc.generator.bean.field.AbstractField
{
	@:overload @:final private function createField() : Void;
	
	/**
	* Gets the name of the getter method.
	*
	* <p>
	* This encapsulation is necessary because sometimes we use
	* {@code isXXXX} as the method name.
	*/
	@:overload private function getGetterMethod() : String;
	
	/**
	* Returns the type used to store the value of the field in memory.
	*/
	@:overload @:abstract private function getFieldType() : com.sun.codemodel.internal.JType;
	
	@:overload private function ref() : com.sun.codemodel.internal.JFieldVar;
	
	@:overload @:final override public function getRawType() : com.sun.codemodel.internal.JType;
	
	
}
@:native('com$sun$tools$internal$xjc$generator$bean$field$AbstractFieldWithVar$Accessor') extern class AbstractFieldWithVar_Accessor extends com.sun.tools.internal.xjc.generator.bean.field.AbstractField.AbstractField_Accessor
{
	@:overload override private function new($target : com.sun.codemodel.internal.JExpression) : Void;
	
	/**
	* Reference to the field bound by the target object.
	*/
	private var $ref(default, null) : com.sun.codemodel.internal.JFieldRef;
	
	@:overload @:final override public function toRawValue(block : com.sun.codemodel.internal.JBlock, $var : com.sun.codemodel.internal.JVar) : Void;
	
	@:overload @:final override public function fromRawValue(block : com.sun.codemodel.internal.JBlock, uniqueName : String, $var : com.sun.codemodel.internal.JExpression) : Void;
	
	
}
