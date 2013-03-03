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
@:internal extern class AbstractListField extends com.sun.tools.internal.xjc.generator.bean.field.AbstractField
{
	/** The field that stores the list. */
	@:protected private var field : com.sun.codemodel.internal.JFieldVar;
	
	/**
	* If this collection property is a collection of a primitive type,
	* this variable refers to that primitive type.
	* Otherwise null.
	*/
	@:protected @:final private var primitiveType(default, null) : com.sun.codemodel.internal.JPrimitiveType;
	
	@:protected @:final private var listT(default, null) : com.sun.codemodel.internal.JClass;
	
	/**
	* Call {@link #generate()} method right after this.
	*/
	@:overload @:protected private function new(outline : com.sun.tools.internal.xjc.generator.bean.ClassOutlineImpl, prop : com.sun.tools.internal.xjc.model.CPropertyInfo, eagerInstanciation : Bool) : Void;
	
	@:overload @:protected @:final private function generate() : Void;
	
	/**
	* Generates statement(s) so that the successive {@link Accessor#ref(boolean)} with
	* true will always return a non-null list.
	*
	* This is useful to avoid generating redundant internal getter.
	*/
	@:overload @:protected @:final private function fixNullRef(block : com.sun.codemodel.internal.JBlock) : Void;
	
	@:overload @:public override public function getRawType() : com.sun.codemodel.internal.JType;
	
	/**
	* Concrete class that implements the List interface.
	* Used as the actual data storage.
	*/
	@:overload @:protected @:abstract private function getCoreListType() : com.sun.codemodel.internal.JClass;
	
	/** Generates accessor methods. */
	@:overload @:protected @:abstract private function generateAccessors() : Void;
	
	
}
/**
*
*
* @author
*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
*/
@:native('com$sun$tools$internal$xjc$generator$bean$field$AbstractListField$Accessor') extern class AbstractListField_Accessor extends com.sun.tools.internal.xjc.generator.bean.field.AbstractField.AbstractField_Accessor
{
	/**
	* Reference to the {@link AbstractListField#field}
	* of the target object.
	*/
	@:protected @:final private var field(default, null) : com.sun.codemodel.internal.JFieldRef;
	
	@:overload @:protected override private function new($target : com.sun.codemodel.internal.JExpression) : Void;
	
	@:overload @:protected @:final private function unbox(exp : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:protected @:final private function box(exp : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Returns a reference to the List field that stores the data.
	* <p>
	* Using this method hides the fact that the list is lazily
	* created.
	*
	* @param canBeNull
	*      if true, the returned expression may be null (this is
	*      when the list is still not constructed.) This could be
	*      useful when the caller can deal with null more efficiently.
	*      When the list is null, it should be treated as if the list
	*      is empty.
	*
	*      if false, the returned expression will never be null.
	*      This is the behavior users would see.
	*/
	@:overload @:protected @:final private function ref(canBeNull : Bool) : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public public function count() : com.sun.codemodel.internal.JExpression;
	
	@:overload @:public override public function unsetValues(body : com.sun.codemodel.internal.JBlock) : Void;
	
	@:overload @:public override public function hasSetValue() : com.sun.codemodel.internal.JExpression;
	
	
}
