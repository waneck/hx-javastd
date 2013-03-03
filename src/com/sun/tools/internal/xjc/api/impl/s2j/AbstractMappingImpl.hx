package com.sun.tools.internal.xjc.api.impl.s2j;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AbstractMappingImpl<InfoT> implements com.sun.tools.internal.xjc.api.Mapping
{
	/**
	* Partial common implementation between {@link ElementMappingImpl} and {@link BeanMappingImpl}
	*
	* @author Kohsuke Kawaguchi
	*/
	@:protected @:final private var parent(default, null) : com.sun.tools.internal.xjc.api.impl.s2j.JAXBModelImpl;
	
	@:protected @:final private var clazz(default, null) : InfoT;
	
	@:overload @:protected private function new(parent : com.sun.tools.internal.xjc.api.impl.s2j.JAXBModelImpl, clazz : InfoT) : Void;
	
	@:overload @:public @:final public function getElement() : javax.xml.namespace.QName;
	
	@:overload @:public @:final public function getClazz() : String;
	
	@:overload @:public @:final public function getWrapperStyleDrilldown() : java.util.List<com.sun.tools.internal.xjc.api.Property>;
	
	@:overload @:protected @:abstract private function calcDrilldown() : java.util.List<com.sun.tools.internal.xjc.api.Property>;
	
	/**
	* Derived classes can use this method to implement {@link #calcDrilldown}.
	*/
	@:overload @:protected private function buildDrilldown(typeBean : com.sun.tools.internal.xjc.model.CClassInfo) : java.util.List<com.sun.tools.internal.xjc.api.Property>;
	
	/**
	* Returns the fully-qualified name of the java class for the type of this element.
	*
	* TODO: does this method returns the name of the wrapper bean when it's qualified
	* for the wrapper style? Seems no (consider &lt;xs:element name='foo' type='xs:long' />),
	* but then how does JAX-RPC captures that bean?
	*
	* @return
	*      never be null.
	*/
	@:overload @:public public function getType() : com.sun.tools.internal.xjc.api.TypeAndAnnotation;
	
	
}
