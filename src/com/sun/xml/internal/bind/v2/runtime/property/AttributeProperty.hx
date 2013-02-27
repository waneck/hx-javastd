package com.sun.xml.internal.bind.v2.runtime.property;
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
extern class AttributeProperty<BeanT> extends com.sun.xml.internal.bind.v2.runtime.property.PropertyImpl<BeanT> implements java.lang.Comparable<AttributeProperty<Dynamic>>
{
	/**
	* Attribute name.
	*/
	public var attName(default, null) : com.sun.xml.internal.bind.v2.runtime.Name;
	
	/**
	* Heart of the conversion logic.
	*/
	public var xacc(default, null) : com.sun.xml.internal.bind.v2.runtime.reflect.TransducedAccessor<BeanT>;
	
	@:overload public function new(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, prop : com.sun.xml.internal.bind.v2.model.runtime.RuntimeAttributePropertyInfo) : Void;
	
	/**
	* Marshals one attribute.
	*
	* @see JaxBeanInfo#serializeAttributes(Object, XMLSerializer)
	*/
	@:overload public function serializeAttributes(o : BeanT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload override public function serializeURIs(o : BeanT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload override public function hasSerializeURIAction() : Bool;
	
	@:overload override public function buildChildElementUnmarshallers(chainElem : com.sun.xml.internal.bind.v2.runtime.property.UnmarshallerChain, handlers : com.sun.xml.internal.bind.v2.util.QNameMap<com.sun.xml.internal.bind.v2.runtime.unmarshaller.ChildLoader>) : Void;
	
	@:overload override public function getKind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	@:overload override public function reset(o : BeanT) : Void;
	
	@:overload override public function getIdValue(bean : BeanT) : String;
	
	@:overload public function compareTo(that : AttributeProperty<Dynamic>) : Int;
	
	
}
