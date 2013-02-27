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
@:internal extern class TypeInfoSetImpl<T, C, F, M> implements com.sun.xml.internal.bind.v2.model.core.TypeInfoSet<T, C, F, M>
{
	/**
	* Set of {@link TypeInfo}s.
	*
	* <p>
	* This contains a fixed set of {@link LeafInfo}s and arbitrary set of {@link ClassInfo}s.
	*
	* <p>
	* Members are annotated with JAXB annotations so that we can dump it easily.
	*
	* @author Kohsuke Kawaguchi
	*/
	public var nav(default, null) : com.sun.xml.internal.bind.v2.model.nav.Navigator<T, C, F, M>;
	
	public var reader(default, null) : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<T, C, F, M>;
	
	@:overload public function new(nav : com.sun.xml.internal.bind.v2.model.nav.Navigator<T, C, F, M>, reader : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<T, C, F, M>, leaves : java.util.Map<T, com.sun.xml.internal.bind.v2.model.impl.BuiltinLeafInfoImpl<T, C>>) : Void;
	
	@:overload private function createAnyType() : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	@:overload public function getNavigator() : com.sun.xml.internal.bind.v2.model.nav.Navigator<T, C, F, M>;
	
	/**
	* Adds a new {@link ClassInfo} to the set.
	*/
	@:overload public function add(ci : com.sun.xml.internal.bind.v2.model.impl.ClassInfoImpl<T, C, F, M>) : Void;
	
	/**
	* Adds a new {@link LeafInfo} to the set.
	*/
	@:overload public function add(li : com.sun.xml.internal.bind.v2.model.impl.EnumLeafInfoImpl<T, C, F, M>) : Void;
	
	@:overload public function add(ai : com.sun.xml.internal.bind.v2.model.impl.ArrayInfoImpl<T, C, F, M>) : Void;
	
	/**
	* Returns a {@link TypeInfo} for the given type.
	*
	* @return
	*      null if the specified type cannot be bound by JAXB, or
	*      not known to this set.
	*/
	@:overload public function getTypeInfo(type : T) : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	@:overload public function getAnyTypeInfo() : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	/**
	* This method is used to add a root reference to a model.
	*/
	@:overload public function getTypeInfo(ref : com.sun.xml.internal.bind.v2.model.core.Ref<T, C>) : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	/**
	* Returns all the {@link ClassInfo}s known to this set.
	*/
	@:overload public function beans() : java.util.Map<C, com.sun.xml.internal.bind.v2.model.impl.ClassInfoImpl<T, C, F, M>>;
	
	@:overload public function builtins() : java.util.Map<T, com.sun.xml.internal.bind.v2.model.core.BuiltinLeafInfo<T, C>>;
	
	@:overload public function enums() : java.util.Map<C, com.sun.xml.internal.bind.v2.model.impl.EnumLeafInfoImpl<T, C, F, M>>;
	
	@:overload public function arrays() : java.util.Map<T, com.sun.xml.internal.bind.v2.model.impl.ArrayInfoImpl<T, C, F, M>>;
	
	/**
	* Returns a {@link ClassInfo} for the given bean.
	*
	* <p>
	* This method is almost like refinement of {@link #getTypeInfo(Object)} except
	* our C cannot derive from T.
	*
	* @return
	*      null if the specified type is not bound by JAXB or otherwise
	*      unknown to this set.
	*/
	@:overload public function getClassInfo(type : C) : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	@:overload public function getElementInfo(scope : C, name : javax.xml.namespace.QName) : com.sun.xml.internal.bind.v2.model.impl.ElementInfoImpl<T, C, F, M>;
	
	/**
	* @param builder
	*      used for reporting errors.
	*/
	@:overload @:final public function add(ei : com.sun.xml.internal.bind.v2.model.impl.ElementInfoImpl<T, C, F, M>, builder : com.sun.xml.internal.bind.v2.model.impl.ModelBuilder<T, C, F, M>) : Void;
	
	@:overload public function getElementMappings(scope : C) : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.bind.v2.model.impl.ElementInfoImpl<T, C, F, M>>;
	
	@:overload public function getAllElements() : java.lang.Iterable<com.sun.xml.internal.bind.v2.model.impl.ElementInfoImpl<T, C, F, M>>;
	
	@:overload public function getXmlNs(namespaceUri : String) : java.util.Map<String, String>;
	
	@:overload public function getSchemaLocations() : java.util.Map<String, String>;
	
	@:overload @:final public function getElementFormDefault(nsUri : String) : javax.xml.bind.annotation.XmlNsForm;
	
	@:overload @:final public function getAttributeFormDefault(nsUri : String) : javax.xml.bind.annotation.XmlNsForm;
	
	/**
	* Dumps this model into XML.
	*
	* For debug only.
	*
	* TODO: not sure if this actually works. We don't really know what are T,C.
	*/
	@:overload public function dump(out : javax.xml.transform.Result) : Void;
	
	
}
