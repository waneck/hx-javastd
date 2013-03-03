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
/*
* Use is subject to the license terms.
*/
extern enum ImplStructureStrategy
{
	/**
	* Generates beans only. The simplest code generation.
	*/
	BEAN_ONLY;
	/**
	* Generates the interfaces to describe beans (content interfaces)
	* and then the beans themselves in a hidden impl package.
	*
	* Similar to JAXB 1.0.
	*/
	INTF_AND_IMPL;
	
}

@:native('com$sun$tools$internal$xjc$generator$bean$ImplStructureStrategy$Result') extern class ImplStructureStrategy_Result
{
	/**
	* Corresponds to {@link Aspect#EXPOSED}
	*/
	@:public @:final public var exposed(default, null) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Corresponds to {@link Aspect#IMPLEMENTATION}
	*/
	@:public @:final public var implementation(default, null) : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload @:public public function new(exposed : com.sun.codemodel.internal.JDefinedClass, implementation : com.sun.codemodel.internal.JDefinedClass) : Void;
	
	
}
@:native('com$sun$tools$internal$xjc$generator$bean$ImplStructureStrategy$Result') extern class ImplStructureStrategy_Result
{
	/**
	* Corresponds to {@link Aspect#EXPOSED}
	*/
	@:public @:final public var exposed(default, null) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Corresponds to {@link Aspect#IMPLEMENTATION}
	*/
	@:public @:final public var implementation(default, null) : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload @:public public function new(exposed : com.sun.codemodel.internal.JDefinedClass, implementation : com.sun.codemodel.internal.JDefinedClass) : Void;
	
	
}
