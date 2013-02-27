package com.sun.tools.internal.xjc.reader.xmlschema;
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
extern class ClassSelector extends com.sun.tools.internal.xjc.reader.xmlschema.BindingComponent
{
	@:overload public function new() : Void;
	
	/** Gets the current class scope. */
	@:overload @:final public function getClassScope() : com.sun.tools.internal.xjc.model.CClassInfoParent;
	
	@:overload @:final public function pushClassScope(clsFctry : com.sun.tools.internal.xjc.model.CClassInfoParent) : Void;
	
	@:overload @:final public function popClassScope() : Void;
	
	@:overload public function getCurrentRoot() : com.sun.xml.internal.xsom.XSComponent;
	
	@:overload public function getCurrentBean() : com.sun.tools.internal.xjc.model.CClassInfo;
	
	/**
	* Checks if the given component is bound to a class.
	*/
	@:overload @:final public function isBound(x : com.sun.xml.internal.xsom.XSElementDecl, referer : com.sun.xml.internal.xsom.XSComponent) : com.sun.tools.internal.xjc.model.CElement;
	
	/**
	* Checks if the given component is being mapped to a type.
	* If so, build that type and return that object.
	* If it is not being mapped to a type item, return null.
	*/
	@:overload public function bindToType(sc : com.sun.xml.internal.xsom.XSComponent, referer : com.sun.xml.internal.xsom.XSComponent) : com.sun.tools.internal.xjc.model.CTypeInfo;
	
	@:overload public function bindToType(e : com.sun.xml.internal.xsom.XSElementDecl, referer : com.sun.xml.internal.xsom.XSComponent) : com.sun.tools.internal.xjc.model.CElement;
	
	@:overload public function bindToType(t : com.sun.xml.internal.xsom.XSComplexType, referer : com.sun.xml.internal.xsom.XSComponent, cannotBeDelayed : Bool) : com.sun.tools.internal.xjc.model.CClass;
	
	@:overload public function bindToType(t : com.sun.xml.internal.xsom.XSType, referer : com.sun.xml.internal.xsom.XSComponent) : com.sun.tools.internal.xjc.model.TypeUse;
	
	/**
	* Runs all the pending build tasks.
	*/
	@:overload public function executeTasks() : Void;
	
	@:overload public function queueBuild(sc : com.sun.xml.internal.xsom.XSComponent, bean : com.sun.tools.internal.xjc.model.CElement) : Void;
	
	/**
	* Gets the Java package to which classes from
	* this namespace should go.
	*
	* <p>
	* Usually, the getOuterClass method should be used
	* to determine where to put a class.
	*/
	@:overload public function getPackage(targetNamespace : String) : com.sun.codemodel.internal.JPackage;
	
	
}
@:native('com$sun$tools$internal$xjc$reader$xmlschema$ClassSelector$Binding') @:internal extern class ClassSelector_Binding
{
	@:overload public function new(sc : com.sun.xml.internal.xsom.XSComponent, bean : com.sun.tools.internal.xjc.model.CTypeInfo) : Void;
	
	
}
