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
extern class ElementOutline
{
	/**
	* A {@link Outline} that encloses all the class outlines.
	*/
	@:overload @:abstract public function parent() : com.sun.tools.internal.xjc.outline.Outline;
	
	/**
	* {@link PackageOutline} that contains this class.
	*/
	@:overload public function _package() : com.sun.tools.internal.xjc.outline.PackageOutline;
	
	/**
	* This {@link ElementOutline} holds information about this {@link CElementInfo}.
	*/
	public var target(default, null) : com.sun.tools.internal.xjc.model.CElementInfo;
	
	/**
	* The implementation aspect of a bean.
	* The actual place where fields/methods should be generated into.
	*/
	public var implClass(default, null) : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload private function new(target : com.sun.tools.internal.xjc.model.CElementInfo, implClass : com.sun.codemodel.internal.JDefinedClass) : Void;
	
	
}
