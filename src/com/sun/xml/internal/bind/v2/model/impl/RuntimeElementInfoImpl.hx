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
@:internal extern class RuntimeElementInfoImpl extends com.sun.xml.internal.bind.v2.model.impl.ElementInfoImpl<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method> implements com.sun.xml.internal.bind.v2.model.runtime.RuntimeElementInfo
{
	/**
	* @author Kohsuke Kawaguchi
	*/
	@:overload public function new(modelBuilder : com.sun.xml.internal.bind.v2.model.impl.RuntimeModelBuilder, registry : com.sun.xml.internal.bind.v2.model.impl.RegistryInfoImpl<Dynamic, Dynamic, Dynamic, Dynamic>, method : java.lang.reflect.Method) : Void;
	
	@:overload override private function createPropertyImpl() : com.sun.xml.internal.bind.v2.model.impl.ElementInfoImpl.ElementInfoImpl_PropertyImpl;
	
	@:overload override public function getProperty() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeElementPropertyInfo;
	
	@:overload override public function getType() : Class<javax.xml.bind.JAXBElement<Dynamic>>;
	
	@:overload override public function getScope() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeClassInfo;
	
	@:overload override public function getContentType() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement;
	
	
}
@:native('com$sun$xml$internal$bind$v2$model$impl$RuntimeElementInfoImpl$RuntimePropertyImpl') @:internal extern class RuntimeElementInfoImpl_RuntimePropertyImpl extends com.sun.xml.internal.bind.v2.model.impl.ElementInfoImpl.ElementInfoImpl_PropertyImpl implements com.sun.xml.internal.bind.v2.model.runtime.RuntimeElementPropertyInfo implements com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeRef
{
	@:overload public function getAccessor() : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<Dynamic, Dynamic>;
	
	@:overload public function getRawType() : java.lang.reflect.Type;
	
	@:overload public function getIndividualType() : java.lang.reflect.Type;
	
	@:overload public function elementOnlyContent() : Bool;
	
	@:overload override public function getTypes() : java.util.List<com.sun.xml.internal.bind.v2.model.runtime.RuntimeTypeRef>;
	
	@:overload override public function ref() : java.util.List<com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement>;
	
	@:overload override public function getTarget() : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement;
	
	@:overload override public function getSource() : com.sun.xml.internal.bind.v2.model.runtime.RuntimePropertyInfo;
	
	@:overload public function getTransducer() : com.sun.xml.internal.bind.v2.runtime.Transducer<Dynamic>;
	
	
}
