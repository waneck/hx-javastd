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
	private var outline(default, null) : com.sun.tools.internal.xjc.generator.bean.ClassOutlineImpl;
	
	private var prop(default, null) : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	private var codeModel(default, null) : com.sun.codemodel.internal.JCodeModel;
	
	/**
	* The type of this field, which can hold all the possible types.
	*/
	private var implType(default, null) : com.sun.codemodel.internal.JType;
	
	/**
	* The publicly visible type of this field.
	* If we are generating value classes implType==exposedType.
	*/
	private var exposedType(default, null) : com.sun.codemodel.internal.JType;
	
	@:overload private function new(outline : com.sun.tools.internal.xjc.generator.bean.ClassOutlineImpl, prop : com.sun.tools.internal.xjc.model.CPropertyInfo) : Void;
	
	@:overload @:final public function parent() : com.sun.tools.internal.xjc.outline.ClassOutline;
	
	@:overload @:final public function getPropertyInfo() : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	/**
	* Annotate the field according to the recipes given as {@link CPropertyInfo}.
	*/
	@:overload private function annotate(field : com.sun.codemodel.internal.JAnnotatable) : Void;
	
	/**
	* Gets the {@link Options} in the current compilation context.
	*/
	@:overload @:final private function getOptions() : com.sun.tools.internal.xjc.Options;
	
	/**
	* Generates the field declaration.
	*/
	@:overload @:final private function generateField(type : com.sun.codemodel.internal.JType) : com.sun.codemodel.internal.JFieldVar;
	
	/**
	* Case from {@link #exposedType} to {@link #implType} if necessary.
	*/
	@:overload @:final private function castToImplType(exp : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Compute the type of a {@link CPropertyInfo}
	* @param aspect
	*/
	@:overload private function getType(aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JType;
	
	/**
	* Returns contents to be added to javadoc.
	*/
	@:overload @:final private function listPossibleTypes(prop : com.sun.tools.internal.xjc.model.CPropertyInfo) : java.util.List<Dynamic>;
	
	
}
/**
* Useful base class for implementing {@link FieldAccessor}.
*/
@:native('com$sun$tools$internal$xjc$generator$bean$field$AbstractField$Accessor') extern class AbstractField_Accessor implements com.sun.tools.internal.xjc.outline.FieldAccessor
{
	/**
	* Evaluates to the target object this accessor should access.
	*/
	private var $target(default, null) : com.sun.codemodel.internal.JExpression;
	
	@:overload private function new($target : com.sun.codemodel.internal.JExpression) : Void;
	
	@:overload @:final public function owner() : com.sun.tools.internal.xjc.outline.FieldOutline;
	
	@:overload @:final public function getPropertyInfo() : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	
}
