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
extern class EnumOutline
{
	/**
	* This {@link EnumOutline} holds information about this {@link CEnumLeafInfo}.
	*/
	@:public @:final public var target(default, null) : com.sun.tools.internal.xjc.model.CEnumLeafInfo;
	
	/**
	* The generated enum class.
	*/
	@:public @:final public var clazz(default, null) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Constants.
	*/
	@:public @:final public var constants(default, null) : java.util.List<com.sun.tools.internal.xjc.outline.EnumConstantOutline>;
	
	/**
	* {@link PackageOutline} that contains this class.
	*/
	@:overload @:public public function _package() : com.sun.tools.internal.xjc.outline.PackageOutline;
	
	/**
	* A {@link Outline} that encloses all the class outlines.
	*/
	@:overload @:public @:abstract public function parent() : com.sun.tools.internal.xjc.outline.Outline;
	
	@:overload @:protected private function new(target : com.sun.tools.internal.xjc.model.CEnumLeafInfo, clazz : com.sun.codemodel.internal.JDefinedClass) : Void;
	
	
}
