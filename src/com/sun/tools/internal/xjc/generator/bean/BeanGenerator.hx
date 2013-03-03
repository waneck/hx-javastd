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
extern class BeanGenerator implements com.sun.tools.internal.xjc.outline.Outline
{
	/**
	* Generates beans into code model according to the BGM,
	* and produces the reflection model.
	*
	* @param _errorReceiver
	*      This object will receive all the errors discovered
	*      during the back-end stage.
	*
	* @return
	*      returns a {@link Outline} which will in turn
	*      be used to further generate marshaller/unmarshaller,
	*      or null if the processing fails (errors should have been
	*      reported to the error recevier.)
	*/
	@:overload @:public @:static public static function generate(model : com.sun.tools.internal.xjc.model.Model, _errorReceiver : com.sun.tools.internal.xjc.ErrorReceiver) : com.sun.tools.internal.xjc.outline.Outline;
	
	@:overload @:public public function getModel() : com.sun.tools.internal.xjc.model.Model;
	
	@:overload @:public public function getCodeModel() : com.sun.codemodel.internal.JCodeModel;
	
	@:overload @:public public function getContainer(parent : com.sun.tools.internal.xjc.model.CClassInfoParent, aspect : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JClassContainer;
	
	@:overload @:public @:final public function resolve(ref : com.sun.tools.internal.xjc.model.CTypeRef, a : com.sun.tools.internal.xjc.outline.Aspect) : com.sun.codemodel.internal.JType;
	
	/**
	* Returns all <i>used</i> JPackages.
	*
	* A JPackage is considered as "used" if a ClassItem or
	* a InterfaceItem resides in that package.
	*
	* This value is dynamically calculated every time because
	* one can freely remove ClassItem/InterfaceItem.
	*
	* @return
	*         Given the same input, the order of packages in the array
	*         is always the same regardless of the environment.
	*/
	@:overload @:public @:final public function getUsedPackages(aspect : com.sun.tools.internal.xjc.outline.Aspect) : java.NativeArray<com.sun.codemodel.internal.JPackage>;
	
	@:overload @:public public function getErrorReceiver() : com.sun.tools.internal.xjc.ErrorReceiver;
	
	@:overload @:public public function getClassFactory() : com.sun.tools.internal.xjc.util.CodeModelClassFactory;
	
	@:overload @:public public function getPackageContext(p : com.sun.codemodel.internal.JPackage) : com.sun.tools.internal.xjc.generator.bean.PackageOutlineImpl;
	
	@:overload @:public public function getClasses() : java.util.Collection<com.sun.tools.internal.xjc.generator.bean.ClassOutlineImpl>;
	
	@:overload @:public public function getClazz(bean : com.sun.tools.internal.xjc.model.CClassInfo) : com.sun.tools.internal.xjc.generator.bean.ClassOutlineImpl;
	
	@:overload @:public public function getElement(ei : com.sun.tools.internal.xjc.model.CElementInfo) : com.sun.tools.internal.xjc.generator.bean.ElementOutlineImpl;
	
	@:overload @:public public function getEnum(eli : com.sun.tools.internal.xjc.model.CEnumLeafInfo) : com.sun.tools.internal.xjc.outline.EnumOutline;
	
	@:overload @:public public function getEnums() : java.util.Collection<com.sun.tools.internal.xjc.outline.EnumOutline>;
	
	@:overload @:public public function getAllPackageContexts() : java.lang.Iterable<com.sun.tools.internal.xjc.outline.PackageOutline>;
	
	@:overload @:public public function getField(prop : com.sun.tools.internal.xjc.model.CPropertyInfo) : com.sun.tools.internal.xjc.outline.FieldOutline;
	
	/**
	* Generates {@link XmlJavaTypeAdapter} from {@link PropertyInfo} if necessary.
	* Also generates other per-property annotations
	* (such as {@link XmlID}, {@link XmlIDREF}, and {@link XmlMimeType} if necessary.
	*/
	@:overload @:public @:final public function generateAdapterIfNecessary(prop : com.sun.tools.internal.xjc.model.CPropertyInfo, field : com.sun.codemodel.internal.JAnnotatable) : Void;
	
	@:overload @:public @:final public function addRuntime(clazz : Class<Dynamic>) : com.sun.codemodel.internal.JClass;
	
	@:overload @:public public function generateStaticClass(src : Class<Dynamic>, out : com.sun.codemodel.internal.JPackage) : com.sun.codemodel.internal.JClass;
	
	
}
