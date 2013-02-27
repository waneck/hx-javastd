package com.sun.tools.internal.xjc.generator.bean;
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
@:internal extern class ObjectFactoryGeneratorImpl extends com.sun.tools.internal.xjc.generator.bean.ObjectFactoryGenerator
{
	/**
	* Returns a reference to the generated (public) ObjectFactory
	*/
	@:overload override public function getObjectFactory() : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload public function new(outline : com.sun.tools.internal.xjc.generator.bean.BeanGenerator, model : com.sun.tools.internal.xjc.model.Model, targetPackage : com.sun.codemodel.internal.JPackage) : Void;
	
	/**
	* Adds code for the given {@link CElementInfo} to ObjectFactory.
	*/
	@:overload @:final private function populate(ei : com.sun.tools.internal.xjc.model.CElementInfo, impl : com.sun.tools.internal.xjc.outline.Aspect, exposed : com.sun.tools.internal.xjc.outline.Aspect) : Void;
	
	@:overload @:final private function populate(cc : com.sun.tools.internal.xjc.generator.bean.ClassOutlineImpl, sigType : com.sun.codemodel.internal.JClass) : Void;
	
	
}
