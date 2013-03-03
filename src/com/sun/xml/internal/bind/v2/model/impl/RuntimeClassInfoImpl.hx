package com.sun.xml.internal.bind.v2.model.impl;
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
@:internal extern class RuntimeClassInfoImpl extends com.sun.xml.internal.bind.v2.model.impl.ClassInfoImpl<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method> implements com.sun.xml.internal.bind.v2.model.runtime.RuntimeClassInfo implements com.sun.xml.internal.bind.v2.model.runtime.RuntimeElement
{
	@:overload @:public public function new(modelBuilder : com.sun.xml.internal.bind.v2.model.impl.RuntimeModelBuilder, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable, clazz : Class<Dynamic>) : Void;
	
	@:overload @:protected private function createAccessorFactory(clazz : Class<Dynamic>) : com.sun.xml.internal.bind.AccessorFactory;
	
	@:overload @:protected private function findXmlAccessorFactoryAnnotation(clazz : Class<Dynamic>) : com.sun.xml.internal.bind.XmlAccessorFactory;
	
	@:overload @:public override public function getFactoryMethod() : java.lang.reflect.Method;
	
	@:overload @:public @:final override public function getBaseClass() : com.sun.xml.internal.bind.v2.model.impl.RuntimeClassInfoImpl;
	
	@:overload @:protected override private function createReferenceProperty(seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>) : com.sun.xml.internal.bind.v2.model.impl.ReferencePropertyInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload @:protected override private function createAttributeProperty(seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>) : com.sun.xml.internal.bind.v2.model.impl.AttributePropertyInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload @:protected override private function createValueProperty(seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>) : com.sun.xml.internal.bind.v2.model.impl.ValuePropertyInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload @:protected override private function createElementProperty(seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>) : com.sun.xml.internal.bind.v2.model.impl.ElementPropertyInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload @:protected override private function createMapProperty(seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>) : com.sun.xml.internal.bind.v2.model.impl.MapPropertyInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload @:public override public function getProperties() : java.util.List<com.sun.xml.internal.bind.v2.model.runtime.RuntimePropertyInfo>;
	
	@:overload @:public override public function getProperty(name : String) : com.sun.xml.internal.bind.v2.model.runtime.RuntimePropertyInfo;
	
	@:overload @:public public function link() : Void;
	
	@:overload @:public public function getAttributeWildcard<B>() : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<B, java.util.Map<javax.xml.namespace.QName, String>>;
	
	@:overload @:public public function getTransducer() : com.sun.xml.internal.bind.v2.runtime.Transducer<Dynamic>;
	
	@:overload @:protected private function createFieldSeed(field : java.lang.reflect.Field) : com.sun.xml.internal.bind.v2.model.impl.RuntimeClassInfoImpl.RuntimeClassInfoImpl_RuntimePropertySeed;
	
	@:overload @:public public function createAccessorSeed(getter : java.lang.reflect.Method, setter : java.lang.reflect.Method) : com.sun.xml.internal.bind.v2.model.impl.RuntimeClassInfoImpl.RuntimeClassInfoImpl_RuntimePropertySeed;
	
	@:overload @:protected private function checkFieldXmlLocation(f : java.lang.reflect.Field) : Void;
	
	@:overload @:public public function getLocatorField() : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<Dynamic, org.xml.sax.Locator>;
	
	
}
@:native('com$sun$xml$internal$bind$v2$model$impl$RuntimeClassInfoImpl$RuntimePropertySeed') @:internal extern class RuntimeClassInfoImpl_RuntimePropertySeed implements com.sun.xml.internal.bind.v2.model.impl.PropertySeed<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>
{
	@:overload @:public public function new(core : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function readAnnotation<A : java.lang.annotation.Annotation>(annotationType : Class<A>) : A;
	
	@:overload @:public public function hasAnnotation(annotationType : Class<java.lang.annotation.Annotation>) : Bool;
	
	@:overload @:public public function getRawType() : java.lang.reflect.Type;
	
	@:overload @:public public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload @:public public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	@:overload @:public public function getAccessor() : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<Dynamic, Dynamic>;
	
	
}
/**
* {@link Transducer} implementation used when this class maps to PCDATA in XML.
*
* TODO: revisit the exception handling
*/
@:native('com$sun$xml$internal$bind$v2$model$impl$RuntimeClassInfoImpl$TransducerImpl') @:internal extern class RuntimeClassInfoImpl_TransducerImpl<BeanT> implements com.sun.xml.internal.bind.v2.runtime.Transducer<BeanT>
{
	@:overload @:public public function new(ownerClass : Class<BeanT>, xacc : com.sun.xml.internal.bind.v2.runtime.reflect.TransducedAccessor<BeanT>) : Void;
	
	@:overload @:public public function useNamespace() : Bool;
	
	@:overload @:public public function isDefault() : Bool;
	
	@:overload @:public public function declareNamespace(bean : BeanT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public public function print(o : BeanT) : java.lang.CharSequence;
	
	@:overload @:public public function parse(lexical : java.lang.CharSequence) : BeanT;
	
	@:overload @:public public function writeText(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, o : BeanT, fieldName : String) : Void;
	
	@:overload @:public public function writeLeafElement(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, tagName : com.sun.xml.internal.bind.v2.runtime.Name, o : BeanT, fieldName : String) : Void;
	
	@:overload @:public public function getTypeName(instance : BeanT) : javax.xml.namespace.QName;
	
	
}
