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
@:internal extern class PropertyImpl<BeanT> implements com.sun.xml.internal.bind.v2.runtime.property.Property<BeanT>
{
	/**
	* Name of this field.
	*/
	private var fieldName(default, null) : String;
	
	@:overload public function new(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, prop : com.sun.xml.internal.bind.v2.model.runtime.RuntimePropertyInfo) : Void;
	
	@:overload public function getInfo() : com.sun.xml.internal.bind.v2.model.runtime.RuntimePropertyInfo;
	
	@:overload public function serializeBody(o : BeanT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, outerPeer : Dynamic) : Void;
	
	@:overload public function serializeURIs(o : BeanT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload public function hasSerializeURIAction() : Bool;
	
	@:overload public function getElementPropertyAccessor(nsUri : String, localName : String) : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<Dynamic, Dynamic>;
	
	@:overload public function wrapUp() : Void;
	
	@:overload public function isHiddenByOverride() : Bool;
	
	@:overload public function setHiddenByOverride(hidden : Bool) : Void;
	
	@:overload public function getFieldName() : String;
	
	/**
	* Resets the property value on the given object.
	*
	* <p>
	* ... for example by setting 0 or null.
	*/
	@:overload public function reset(o : BeanT) : Void;
	
	/**
	* Gets the Kind of property
	* @return
	*      always non-null.
	*/
	@:overload public function getKind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	/**
	* Every Property class has an implementation of buildChildElementUnmarshallers
	* which will fill in the specified {@link QNameMap} by elements that are expected
	* by this property.
	*/
	@:overload public function buildChildElementUnmarshallers(chain : com.sun.xml.internal.bind.v2.runtime.property.UnmarshallerChain, handlers : com.sun.xml.internal.bind.v2.util.QNameMap<com.sun.xml.internal.bind.v2.runtime.unmarshaller.ChildLoader>) : Void;
	
	/**
	* Gets the value of the property.
	*
	* This method is only used when the corresponding {@link PropertyInfo#id()} is {@link ID#ID},
	* and therefore the return type is fixed to {@link String}.
	*/
	@:overload public function getIdValue(bean : BeanT) : String;
	
	
}
