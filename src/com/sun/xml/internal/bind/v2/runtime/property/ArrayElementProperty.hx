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
@:internal extern class ArrayElementProperty<BeanT, ListT, ItemT> extends com.sun.xml.internal.bind.v2.runtime.property.ArrayERProperty<BeanT, ListT, ItemT>
{
	/**
	* Set by the constructor and reset in the {@link #wrapUp()} method.
	*/
	private var prop : com.sun.xml.internal.bind.v2.model.runtime.RuntimeElementPropertyInfo;
	
	@:overload private function new(grammar : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, prop : com.sun.xml.internal.bind.v2.model.runtime.RuntimeElementPropertyInfo) : Void;
	
	@:overload override public function wrapUp() : Void;
	
	@:overload override private function serializeListBody(beanT : BeanT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, list : ListT) : Void;
	
	/**
	* Serializes one item of the property.
	*/
	@:overload @:abstract private function serializeItem(expected : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>, item : ItemT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload override public function createBodyUnmarshaller(chain : com.sun.xml.internal.bind.v2.runtime.property.UnmarshallerChain, loaders : com.sun.xml.internal.bind.v2.util.QNameMap<com.sun.xml.internal.bind.v2.runtime.unmarshaller.ChildLoader>) : Void;
	
	@:overload @:final override public function getKind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	@:overload override public function getElementPropertyAccessor(nsUri : String, localName : String) : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<Dynamic, Dynamic>;
	
	
}
