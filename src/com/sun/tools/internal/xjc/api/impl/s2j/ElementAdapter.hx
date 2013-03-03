package com.sun.tools.internal.xjc.api.impl.s2j;
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
@:internal extern class ElementAdapter implements com.sun.tools.internal.xjc.outline.FieldOutline
{
	/**
	* {@link FieldOutline} that wraps another {@link FieldOutline}
	* and allows JAX-WS to access values without using about
	* {@link JAXBElement}.
	*
	* <p>
	* That means if a value is requested, we unwrap JAXBElement
	* and give it to them. If a value is set, we wrap that into
	* JAXBElement, etc.
	*
	* <p>
	* This can be used only with {@link CReferencePropertyInfo}
	* (or else it won't be {@link JAXBElement),
	* with one {@link CElementInfo} (or else we can't infer the tag name.)
	*
	* @author Kohsuke Kawaguchi
	*/
	@:protected @:final private var core(default, null) : com.sun.tools.internal.xjc.outline.FieldOutline;
	
	/**
	* The only one {@link CElementInfo} that can be in the property.
	*/
	@:protected @:final private var ei(default, null) : com.sun.tools.internal.xjc.model.CElementInfo;
	
	@:overload @:public public function new(core : com.sun.tools.internal.xjc.outline.FieldOutline, ei : com.sun.tools.internal.xjc.model.CElementInfo) : Void;
	
	@:overload @:public public function parent() : com.sun.tools.internal.xjc.outline.ClassOutline;
	
	@:overload @:public public function getPropertyInfo() : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	@:overload @:protected @:final private function outline() : com.sun.tools.internal.xjc.outline.Outline;
	
	@:overload @:protected @:final private function codeModel() : com.sun.codemodel.internal.JCodeModel;
	
	/**
	* Creates a new {@link FieldAccessor} of this field
	* for the specified object.
	*
	* @param targetObject
	*      Evaluates to an object, and the field on this object
	*      will be accessed.
	*/
	@:overload @:public public function create(targetObject : com.sun.codemodel.internal.JExpression) : com.sun.tools.internal.xjc.outline.FieldAccessor;
	
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
	@:overload @:public public function getRawType() : com.sun.codemodel.internal.JType;
	
	
}
@:native('com$sun$tools$internal$xjc$api$impl$s2j$ElementAdapter$FieldAccessorImpl') extern class ElementAdapter_FieldAccessorImpl implements com.sun.tools.internal.xjc.outline.FieldAccessor
{
	@:overload @:public public function new(target : com.sun.codemodel.internal.JExpression) : Void;
	
	@:overload @:public public function unsetValues(body : com.sun.codemodel.internal.JBlock) : Void;
	
	@:overload @:public public function hasSetValue() : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public public function owner() : com.sun.tools.internal.xjc.outline.FieldOutline;
	
	@:overload @:public public function getPropertyInfo() : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	/**
	* Wraps a type value into a {@link JAXBElement}.
	*/
	@:overload @:protected @:final private function createJAXBElement($var : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JInvocation;
	
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
	@:overload @:public public function fromRawValue(block : com.sun.codemodel.internal.JBlock, uniqueName : String, $var : com.sun.codemodel.internal.JExpression) : Void;
	
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
	@:overload @:public public function toRawValue(block : com.sun.codemodel.internal.JBlock, $var : com.sun.codemodel.internal.JVar) : Void;
	
	
}
