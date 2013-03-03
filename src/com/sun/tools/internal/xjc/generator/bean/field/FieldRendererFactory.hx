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
extern class FieldRendererFactory
{
	/**
	* Factory for {@link FieldRenderer}.
	*
	* <p>
	* This class can be overridden by a plugin to change the code generation
	* behavior of XJC. Note that such changes aren't composable; for a given
	* schema compilation, only one instance of {@link FieldRendererFactory} is
	* used.
	*
	* <p>
	* See {@link Options#fieldRendererFactory}
	*
	* <p>
	* To be more precise, since {@link FieldRenderer} is just a strategy pattern
	* and by itself is stateless, the "factory methods" don't necessarily need
	* to create new instances of {@link FieldRenderer} --- it can just return
	* a set of pre-created instances.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload @:public public function getDefault() : com.sun.tools.internal.xjc.generator.bean.field.FieldRenderer;
	
	@:overload @:public public function getArray() : com.sun.tools.internal.xjc.generator.bean.field.FieldRenderer;
	
	@:overload @:public public function getRequiredUnboxed() : com.sun.tools.internal.xjc.generator.bean.field.FieldRenderer;
	
	@:overload @:public public function getSingle() : com.sun.tools.internal.xjc.generator.bean.field.FieldRenderer;
	
	@:overload @:public public function getSinglePrimitiveAccess() : com.sun.tools.internal.xjc.generator.bean.field.FieldRenderer;
	
	@:overload @:public public function getList(coreList : com.sun.codemodel.internal.JClass) : com.sun.tools.internal.xjc.generator.bean.field.FieldRenderer;
	
	@:overload @:public public function getContentList(coreList : com.sun.codemodel.internal.JClass) : com.sun.tools.internal.xjc.generator.bean.field.FieldRenderer;
	
	@:overload @:public public function getDummyList(coreList : com.sun.codemodel.internal.JClass) : com.sun.tools.internal.xjc.generator.bean.field.FieldRenderer;
	
	@:overload @:public public function getConst(fallback : com.sun.tools.internal.xjc.generator.bean.field.FieldRenderer) : com.sun.tools.internal.xjc.generator.bean.field.FieldRenderer;
	
	
}
