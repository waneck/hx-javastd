package com.sun.xml.internal.bind.v2.model.impl;
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
extern class RuntimeModelBuilder extends com.sun.xml.internal.bind.v2.model.impl.ModelBuilder<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>
{
	/**
	* The {@link JAXBContextImpl} for which the model is built.
	* Null when created for reflection.
	*/
	@:public @:final public var context(default, null) : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl;
	
	@:overload @:public public function new(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, annotationReader : com.sun.xml.internal.bind.v2.model.annotation.RuntimeAnnotationReader, subclassReplacements : java.util.Map<Class<Dynamic>, Class<Dynamic>>, defaultNamespaceRemap : String) : Void;
	
	@:overload @:public public function getClassInfo(clazz : Class<Dynamic>, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement;
	
	@:overload @:public public function getClassInfo(clazz : Class<Dynamic>, searchForSuperClass : Bool, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement;
	
	@:overload @:protected private function createEnumLeafInfo(clazz : Class<Dynamic>, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : com.sun.xml.internal.bind.v2.model.impl.RuntimeEnumLeafInfoImpl<Dynamic, Dynamic>;
	
	@:overload @:protected private function createClassInfo(clazz : Class<Dynamic>, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : com.sun.xml.internal.bind.v2.model.impl.RuntimeClassInfoImpl;
	
	@:overload @:public public function createElementInfo(registryInfo : com.sun.xml.internal.bind.v2.model.impl.RegistryInfoImpl<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>, method : java.lang.reflect.Method) : com.sun.xml.internal.bind.v2.model.impl.RuntimeElementInfoImpl;
	
	@:overload @:public public function createArrayInfo(upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable, arrayType : java.lang.reflect.Type) : com.sun.xml.internal.bind.v2.model.impl.RuntimeArrayInfoImpl;
	
	@:overload @:public public function getNavigator() : com.sun.xml.internal.bind.v2.model.nav.ReflectionNavigator;
	
	@:overload @:protected override private function createTypeInfoSet() : com.sun.xml.internal.bind.v2.model.impl.RuntimeTypeInfoSetImpl;
	
	@:overload @:public override public function link() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeInfoSet;
	
	/**
	* Creates a {@link Transducer} given a reference.
	*
	* Used to implement {@link RuntimeNonElementRef#getTransducer()}.
	* Shouldn't be called from anywhere else.
	*
	* TODO: this is not the proper place for this class to be in.
	*/
	@:overload @:public @:static public static function createTransducer(ref : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElementRef) : com.sun.xml.internal.bind.v2.runtime.Transducer<Dynamic>;
	
	
}
/**
* Transducer implementation for ID.
*
* This transducer wraps another {@link Transducer} and adds
* handling for ID.
*/
@:native('com$sun$xml$internal$bind$v2$model$impl$RuntimeModelBuilder$IDTransducerImpl') @:internal extern class RuntimeModelBuilder_IDTransducerImpl<ValueT> extends com.sun.xml.internal.bind.v2.runtime.FilterTransducer<ValueT>
{
	@:overload @:public public function new(core : com.sun.xml.internal.bind.v2.runtime.Transducer<ValueT>) : Void;
	
	@:overload @:public override public function parse(lexical : java.lang.CharSequence) : ValueT;
	
	
}
