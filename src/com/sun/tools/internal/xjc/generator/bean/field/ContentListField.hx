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
extern class ContentListField extends com.sun.tools.internal.xjc.generator.bean.field.AbstractListField
{
	/**
	* @param coreList
	*      A concrete class that implements the List interface.
	*      An instance of this class will be used to store data
	*      for this field.
	*/
	@:overload @:protected private function new(context : com.sun.tools.internal.xjc.generator.bean.ClassOutlineImpl, prop : com.sun.tools.internal.xjc.model.CPropertyInfo, coreList : com.sun.codemodel.internal.JClass) : Void;
	
	@:overload @:protected @:final override private function getCoreListType() : com.sun.codemodel.internal.JClass;
	
	@:overload @:public override public function generateAccessors() : Void;
	
	@:overload @:public override public function create(targetObject : com.sun.codemodel.internal.JExpression) : com.sun.tools.internal.xjc.generator.bean.field.AbstractField.AbstractField_Accessor;
	
	@:overload @:protected override private function getType(aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JType;
	
	
}
@:native('com$sun$tools$internal$xjc$generator$bean$field$ContentListField$Accessor') @:internal extern class ContentListField_Accessor extends com.sun.tools.internal.xjc.generator.bean.field.AbstractListField.AbstractListField_Accessor
{
	@:overload @:protected override private function new($target : com.sun.codemodel.internal.JExpression) : Void;
	
	@:overload @:public override public function toRawValue(block : com.sun.codemodel.internal.JBlock, $var : com.sun.codemodel.internal.JVar) : Void;
	
	@:overload @:public override public function fromRawValue(block : com.sun.codemodel.internal.JBlock, uniqueName : String, $var : com.sun.codemodel.internal.JExpression) : Void;
	
	
}
