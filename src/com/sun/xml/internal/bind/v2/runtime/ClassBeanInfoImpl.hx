package com.sun.xml.internal.bind.v2.runtime;
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
extern class ClassBeanInfoImpl<BeanT> extends com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<BeanT> implements com.sun.xml.internal.bind.v2.runtime.AttributeAccessor<BeanT>
{
	/**
	* Properties of this bean class but not its ancestor classes.
	*/
	@:public @:final public var properties(default, null) : java.NativeArray<com.sun.xml.internal.bind.v2.runtime.property.Property<BeanT>>;
	
	/**
	* {@link ClassBeanInfoImpl} that represents the super class of {@link #jaxbType}.
	*/
	@:public @:final public var superClazz(default, null) : com.sun.xml.internal.bind.v2.runtime.ClassBeanInfoImpl<BeanT>;
	
	@:overload @:protected override private function link(grammar : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : Void;
	
	@:overload @:public override public function wrapUp() : Void;
	
	@:overload @:public override public function getElementNamespaceURI(bean : BeanT) : String;
	
	@:overload @:public override public function getElementLocalName(bean : BeanT) : String;
	
	@:overload @:public override public function createInstance(context : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext) : BeanT;
	
	@:overload @:public override public function reset(bean : BeanT, context : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext) : Bool;
	
	@:overload @:public override public function getId(bean : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : String;
	
	@:overload @:public override public function serializeRoot(bean : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public override public function serializeBody(bean : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public override public function serializeAttributes(bean : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public override public function serializeURIs(bean : BeanT, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public override public function getLoader(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, typeSubstitutionCapable : Bool) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader;
	
	@:overload @:public override public function getTransducer() : com.sun.xml.internal.bind.v2.runtime.Transducer<BeanT>;
	
	
}
