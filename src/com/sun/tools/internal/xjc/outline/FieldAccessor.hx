package com.sun.tools.internal.xjc.outline;
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
extern interface FieldAccessor
{
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
	@:overload public function toRawValue(block : com.sun.codemodel.internal.JBlock, $var : com.sun.codemodel.internal.JVar) : Void;
	
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
	@:overload public function fromRawValue(block : com.sun.codemodel.internal.JBlock, uniqueName : String, $var : com.sun.codemodel.internal.JExpression) : Void;
	
	/**
	* Generates a code fragment to remove any "set" value
	* and move this field to the "unset" state.
	*
	* @param body
	*      The code will be appended at the end of this block.
	*/
	@:overload public function unsetValues(body : com.sun.codemodel.internal.JBlock) : Void;
	
	/**
	* Return an expression that evaluates to true only when
	* this field has a set value(s).
	*
	* @return null
	*      if the isSetXXX/unsetXXX method does not make sense
	*      for the given field.
	*/
	@:overload public function hasSetValue() : com.sun.codemodel.internal.JExpression;
	
	/**
	* Gets the {@link FieldOutline} from which
	* this object is created.
	*/
	@:overload public function owner() : com.sun.tools.internal.xjc.outline.FieldOutline;
	
	/**
	* Short for <tt>owner().getPropertyInfo()</tt>
	*/
	@:overload public function getPropertyInfo() : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	
}
