package com.sun.tools.internal.xjc.model;
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
extern interface CClassInfoParent
{
	/**
	* Returns the fully-qualified name.
	*/
	@:overload public function fullName() : String;
	
	@:overload public function accept<T>(visitor : CClassInfoParent_Visitor<T>) : T;
	
	/**
	* Gets the nearest {@link JPackage}.
	*/
	@:overload public function getOwnerPackage() : com.sun.codemodel.internal.JPackage;
	
	
}
/**
* Visitor of {@link CClassInfoParent}
*/
@:native('com$sun$tools$internal$xjc$model$CClassInfoParent$Visitor') extern interface CClassInfoParent_Visitor<T>
{
	@:overload public function onBean(bean : com.sun.tools.internal.xjc.model.CClassInfo) : T;
	
	@:overload public function onPackage(pkg : com.sun.codemodel.internal.JPackage) : T;
	
	@:overload public function onElement(element : com.sun.tools.internal.xjc.model.CElementInfo) : T;
	
	
}
/**
* {@link JPackage} as a {@link CClassInfoParent}.
*
* Use {@link Model#getPackage} to obtain an instance.
*/
@:native('com$sun$tools$internal$xjc$model$CClassInfoParent$Package') extern class CClassInfoParent_Package implements CClassInfoParent
{
	public var pkg(default, null) : com.sun.codemodel.internal.JPackage;
	
	@:overload public function new(pkg : com.sun.codemodel.internal.JPackage) : Void;
	
	@:overload public function fullName() : String;
	
	@:overload public function accept<T>(visitor : CClassInfoParent_Visitor<T>) : T;
	
	@:overload public function getOwnerPackage() : com.sun.codemodel.internal.JPackage;
	
	
}
