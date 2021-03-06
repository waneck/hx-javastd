package com.sun.xml.internal.bind.v2.model.runtime;
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
extern interface RuntimeClassInfo extends com.sun.xml.internal.bind.v2.model.core.ClassInfo<java.lang.reflect.Type, Class<Dynamic>> extends com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement
{
	/**
	* @author Kohsuke Kawaguchi (kk@kohsuke.org)
	*/
	@:overload public function getBaseClass() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeClassInfo;
	
	@:overload public function getProperties() : java.util.List<com.sun.xml.internal.bind.v2.model.runtime.RuntimePropertyInfo>;
	
	@:overload public function getProperty(name : String) : com.sun.xml.internal.bind.v2.model.runtime.RuntimePropertyInfo;
	
	@:overload public function getFactoryMethod() : java.lang.reflect.Method;
	
	/**
	* If {@link #hasAttributeWildcard()} is true,
	* returns the accessor to access the property.
	*
	* @return
	*      unoptimized accessor.
	*      non-null iff {@link #hasAttributeWildcard()}==true.
	*
	* @see Accessor#optimize()
	*/
	@:overload public function getAttributeWildcard<BeanT>() : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, java.util.Map<javax.xml.namespace.QName, String>>;
	
	/**
	* If this JAXB bean has a property annotated with {@link XmlLocation},
	* this method returns it.
	*
	* @return may be null.
	*/
	@:overload public function getLocatorField<BeanT>() : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, org.xml.sax.Locator>;
	
	
}
