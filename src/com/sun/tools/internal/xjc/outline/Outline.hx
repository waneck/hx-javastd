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
extern interface Outline
{
	/**
	* This outline is for this model.
	*/
	@:overload public function getModel() : com.sun.tools.internal.xjc.model.Model;
	
	/**
	* Short for {@code getModel().codeModel}.
	*/
	@:overload public function getCodeModel() : com.sun.codemodel.internal.JCodeModel;
	
	/** Gets the object that wraps the generated field for a given {@link CPropertyInfo}. */
	@:overload public function getField(fu : com.sun.tools.internal.xjc.model.CPropertyInfo) : com.sun.tools.internal.xjc.outline.FieldOutline;
	
	/**
	* Gets per-package context information.
	*
	* This method works for every visible package
	* (those packages which are supposed to be used by client applications.)
	*
	* @return
	*      If this grammar doesn't produce anything in the specified
	*      package, return null.
	*/
	@:overload public function getPackageContext(_Package : com.sun.codemodel.internal.JPackage) : com.sun.tools.internal.xjc.outline.PackageOutline;
	
	/**
	* Returns all the {@link ClassOutline}s known to this object.
	*/
	@:overload public function getClasses() : java.util.Collection<com.sun.tools.internal.xjc.outline.ClassOutline>;
	
	/**
	* Obtains per-class context information.
	*/
	@:overload public function getClazz(clazz : com.sun.tools.internal.xjc.model.CClassInfo) : com.sun.tools.internal.xjc.outline.ClassOutline;
	
	/**
	* If the {@link CElementInfo} generates a class,
	* returns such a class. Otherwise return null.
	*/
	@:overload public function getElement(ei : com.sun.tools.internal.xjc.model.CElementInfo) : com.sun.tools.internal.xjc.outline.ElementOutline;
	
	@:overload public function getEnum(eli : com.sun.tools.internal.xjc.model.CEnumLeafInfo) : com.sun.tools.internal.xjc.outline.EnumOutline;
	
	/**
	* Gets all the {@link EnumOutline}s.
	*/
	@:overload public function getEnums() : java.util.Collection<com.sun.tools.internal.xjc.outline.EnumOutline>;
	
	/** Gets all package-wise contexts at once. */
	@:overload public function getAllPackageContexts() : java.lang.Iterable<com.sun.tools.internal.xjc.outline.PackageOutline>;
	
	/**
	* Gets a reference to
	* <code>new CodeModelClassFactory(getErrorHandler())</code>.
	*/
	@:overload public function getClassFactory() : com.sun.tools.internal.xjc.util.CodeModelClassFactory;
	
	/**
	* Any error during the back-end proccessing should be
	* sent to this object.
	*/
	@:overload public function getErrorReceiver() : com.sun.tools.internal.xjc.ErrorReceiver;
	
	@:overload public function getContainer(parent : com.sun.tools.internal.xjc.model.CClassInfoParent, aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JClassContainer;
	
	/**
	* Resolves a type reference to the actual (possibly generated) type.
	*
	* Short for {@code resolve(ref.getType(),aspect)}.
	*/
	@:overload public function resolve(ref : com.sun.tools.internal.xjc.model.CTypeRef, aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JType;
	
	/**
	* Copies the specified class into the user's package and returns
	* a reference to it.
	*/
	@:overload public function addRuntime(clazz : Class<Dynamic>) : com.sun.codemodel.internal.JClass;
	
	
}
