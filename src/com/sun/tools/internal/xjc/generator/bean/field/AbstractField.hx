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
@:internal extern class AbstractField implements com.sun.tools.internal.xjc.outline.FieldOutline
{
	/**
	* Useful base class for implementing {@link FieldOutline}.
	*
	* <p>
	* This class just provides a few utility methods and keep some
	* important variables so that they can be readily accessed any time.
	*
	* @author
	*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:protected @:final private var outline(default, null) : com.sun.tools.internal.xjc.generator.bean.ClassOutlineImpl;
	
	@:protected @:final private var prop(default, null) : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	@:protected @:final private var codeModel(default, null) : com.sun.codemodel.internal.JCodeModel;
	
	/**
	* The type of this field, which can hold all the possible types.
	*/
	@:protected @:final private var implType(default, null) : com.sun.codemodel.internal.JType;
	
	/**
	* The publicly visible type of this field.
	* If we are generating value classes implType==exposedType.
	*/
	@:protected @:final private var exposedType(default, null) : com.sun.codemodel.internal.JType;
	
	@:overload @:protected private function new(outline : com.sun.tools.internal.xjc.generator.bean.ClassOutlineImpl, prop : com.sun.tools.internal.xjc.model.CPropertyInfo) : Void;
	
	@:overload @:public @:final public function parent() : com.sun.tools.internal.xjc.outline.ClassOutline;
	
	@:overload @:public @:final public function getPropertyInfo() : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	/**
	* Annotate the field according to the recipes given as {@link CPropertyInfo}.
	*/
	@:overload @:protected private function annotate(field : com.sun.codemodel.internal.JAnnotatable) : Void;
	
	/**
	* Gets the {@link Options} in the current compilation context.
	*/
	@:overload @:protected @:final private function getOptions() : com.sun.tools.internal.xjc.Options;
	
	/**
	* Generates the field declaration.
	*/
	@:overload @:protected @:final private function generateField(type : com.sun.codemodel.internal.JType) : com.sun.codemodel.internal.JFieldVar;
	
	/**
	* Case from {@link #exposedType} to {@link #implType} if necessary.
	*/
	@:overload @:protected @:final private function castToImplType(exp : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Compute the type of a {@link CPropertyInfo}
	* @param aspect
	*/
	@:overload @:protected private function getType(aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JType;
	
	/**
	* Returns contents to be added to javadoc.
	*/
	@:overload @:protected @:final private function listPossibleTypes(prop : com.sun.tools.internal.xjc.model.CPropertyInfo) : java.util.List<Dynamic>;
	
	/**
	* Creates a new {@link FieldAccessor} of this field
	* for the specified object.
	*
	* @param targetObject
	*      Evaluates to an object, and the field on this object
	*      will be accessed.
	*/
	@:overload @:public @:public public function create(targetObject : com.sun.codemodel.internal.JExpression) : com.sun.tools.internal.xjc.outline.FieldAccessor;
	
	/**
	* Gets the type of the "raw value".
	*
	* <p>
	* This type can represent the entire value of this field.
	* For fields that can carry multiple values, this is an array.
	*
	* <p>
	* This type allows the client of the outline to generate code
	* to set/get values from a property.
	*/
	@:overload @:public @:public public function getRawType() : com.sun.codemodel.internal.JType;
	
	
}
/**
* Useful base class for implementing {@link FieldAccessor}.
*/
@:native('com$sun$tools$internal$xjc$generator$bean$field$AbstractField$Accessor') extern class AbstractField_Accessor implements com.sun.tools.internal.xjc.outline.FieldAccessor
{
	/**
	* Evaluates to the target object this accessor should access.
	*/
	@:protected @:final private var $target(default, null) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:protected private function new($target : com.sun.codemodel.internal.JExpression) : Void;
	
	@:overload @:public @:final public function owner() : com.sun.tools.internal.xjc.outline.FieldOutline;
	
	@:overload @:public @:final public function getPropertyInfo() : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	/**
	* Sets the value of the field from the specified expression.
	*
	* <p>
	* This generates code that accesses the field from outside.
	*
	* @param block
	*      The code will be generated into this block.
	* @param uniqueName
	*      Identifier that the caller guarantees to be unique in
	*      the given block. When the callee needs to produce additional
	*      variables, it can do so by adding suffixes to this unique
	*      name. For example, if the uniqueName is "abc", then the
	*      caller guarantees that any identifier "abc.*" is unused
	*      in this block.
	* @param $var
	*      The expression that evaluates to a value of the type
	*      {@link FieldOutline#getRawType()}.
	*/
	@:overload @:public @:public public function fromRawValue(block : com.sun.codemodel.internal.JBlock, uniqueName : String, $var : com.sun.codemodel.internal.JExpression) : Void;
	
	/**
	* Return an expression that evaluates to true only when
	* this field has a set value(s).
	*
	* @return null
	*      if the isSetXXX/unsetXXX method does not make sense
	*      for the given field.
	*/
	@:overload @:public public function hasSetValue() : com.sun.codemodel.internal.JExpression;
	
	/**
	* Dumps everything in this field into the given variable.
	*
	* <p>
	* This generates code that accesses the field from outside.
	*
	* @param block
	*      The code will be generated into this block.
	* @param $var
	*      Variable whose type is {@link FieldOutline#getRawType()}
	*/
	@:overload @:public @:public public function toRawValue(block : com.sun.codemodel.internal.JBlock, $var : com.sun.codemodel.internal.JVar) : Void;
	
	/**
	* Generates a code fragment to remove any "set" value
	* and move this field to the "unset" state.
	*
	* @param body
	*      The code will be appended at the end of this block.
	*/
	@:overload @:public public function unsetValues(body : com.sun.codemodel.internal.JBlock) : Void;
	
	
}
