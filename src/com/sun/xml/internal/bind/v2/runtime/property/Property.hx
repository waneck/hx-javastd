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
extern interface Property<BeanT> extends com.sun.xml.internal.bind.v2.runtime.property.StructureLoaderBuilder
{
	/**
	* Resets the property value on the given object.
	*
	* <p>
	* ... for example by setting 0 or null.
	*/
	@:overload @:public public function reset(o : BeanT) : Void;
	
	/**
	* @see JaxBeanInfo#serializeBody(Object, XMLSerializer)
	*
	* @param outerPeer
	*      used when this property is expected to print out an element
	*      and that should be associated with this outer peer. normally null.
	*      this is only used for {@link JaxBeanInfo} for {@link JAXBElement}s.
	* @throws AccessorException
	*      If thrown, caught by the caller and reported.
	*/
	@:overload @:public public function serializeBody(beanT : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, outerPeer : Dynamic) : Void;
	
	/**
	* @see JaxBeanInfo#serializeURIs(Object, XMLSerializer)
	*/
	@:overload @:public public function serializeURIs(beanT : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	/**
	* Returns true if
	* {@link #serializeURIs(Object,XMLSerializer)} performs some meaningful action.
	*/
	@:overload @:public public function hasSerializeURIAction() : Bool;
	
	/**
	* Gets the value of the property.
	*
	* This method is only used when the corresponding {@link PropertyInfo#id()} is {@link ID#ID},
	* and therefore the return type is fixed to {@link String}.
	*/
	@:overload @:public public function getIdValue(bean : BeanT) : String;
	
	/**
	* Gets the Kind of property
	* @return
	*      always non-null.
	*/
	@:overload @:public public function getKind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	/**
	* If this property is mapped to the specified element,
	* return an accessor to it.
	*
	* @return
	*      null if the property is not mapped to the specified element.
	*/
	@:overload public function getElementPropertyAccessor(nsUri : String, localName : String) : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<Dynamic, Dynamic>;
	
	/**
	* Called at the end of the {@link JAXBContext} initialization phase
	* to clean up any unnecessary references.
	*/
	@:overload public function wrapUp() : Void;
	
	/**
	* Provides more {@link RuntimePropertyInfo} information on the property.
	*
	* @return
	*      null if RETAIN_REFERENCE_TO_INFO property is not set on the {@link JAXBContext}
	*/
	@:overload @:public public function getInfo() : com.sun.xml.internal.bind.v2.model.runtime.RuntimePropertyInfo;
	
	@:overload @:public public function isHiddenByOverride() : Bool;
	
	@:overload @:public public function setHiddenByOverride(hidden : Bool) : Void;
	
	@:overload @:public public function getFieldName() : String;
	
	
}
