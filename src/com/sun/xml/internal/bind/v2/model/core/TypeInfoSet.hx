package com.sun.xml.internal.bind.v2.model.core;
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
extern interface TypeInfoSet<T, C, F, M>
{
	/**
	* {@link Navigator} for this model.
	*/
	@:overload public function getNavigator() : com.sun.xml.internal.bind.v2.model.nav.Navigator<T, C, F, M>;
	
	/**
	* Returns a {@link TypeInfo} for the given type.
	*
	* @return
	*      null if the specified type cannot be bound by JAXB, or
	*      not known to this set.
	*/
	@:overload public function getTypeInfo(type : T) : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	/**
	* Gets the {@link TypeInfo} for the any type.
	*/
	@:overload public function getAnyTypeInfo() : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	/**
	* Returns a {@link ClassInfo}, {@link ArrayInfo}, or {@link LeafInfo}
	* for the given bean.
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
	
	/**
	* Returns all the {@link ArrayInfo}s known to this set.
	*/
	@:overload public function arrays() : java.util.Map<T, com.sun.xml.internal.bind.v2.model.core.ArrayInfo<T, C>>;
	
	/**
	* Returns all the {@link ClassInfo}s known to this set.
	*/
	@:overload public function beans() : java.util.Map<C, com.sun.xml.internal.bind.v2.model.core.ClassInfo<T, C>>;
	
	/**
	* Returns all the {@link BuiltinLeafInfo}s known to this set.
	*/
	@:overload public function builtins() : java.util.Map<T, com.sun.xml.internal.bind.v2.model.core.BuiltinLeafInfo<T, C>>;
	
	/**
	* Returns all the {@link EnumLeafInfo}s known to this set.
	*/
	@:overload public function enums() : java.util.Map<C, com.sun.xml.internal.bind.v2.model.core.EnumLeafInfo<T, C>>;
	
	/**
	* Returns a {@link ElementInfo} for the given element.
	*
	* @param scope
	*      if null, return the info about a global element.
	*      Otherwise return a local element in the given scope if available,
	*      then look for a global element next.
	*/
	@:overload public function getElementInfo(scope : C, name : javax.xml.namespace.QName) : com.sun.xml.internal.bind.v2.model.core.ElementInfo<T, C>;
	
	/**
	* Returns a type information for the given reference.
	*/
	@:overload public function getTypeInfo(ref : com.sun.xml.internal.bind.v2.model.core.Ref<T, C>) : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	/**
	* Returns all  {@link ElementInfo}s in the given scope.
	*
	* @param scope
	*      if non-null, this method only returns the local element mapping.
	*/
	@:overload public function getElementMappings(scope : C) : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.bind.v2.model.core.ElementInfo<T, C>>;
	
	/**
	* Returns all the {@link ElementInfo} known to this set.
	*/
	@:overload public function getAllElements() : java.lang.Iterable<com.sun.xml.internal.bind.v2.model.core.ElementInfo<T, C>>;
	
	/**
	* Gets all {@link XmlSchema#xmlns()} found in this context for the given namespace URI.
	*
	* <p>
	* This operation is expected to be only used in schema generator, so it can be slow.
	*
	* @return
	*      A map from prefixes to namespace URIs, which should be declared when generating a schema.
	*      Could be empty but never null.
	*/
	@:overload public function getXmlNs(namespaceUri : String) : java.util.Map<String, String>;
	
	/**
	* Gets {@link XmlSchema#location()} found in this context.
	*
	* <p>
	* This operation is expected to be only used in schema generator, so it can be slow.
	*
	* @return
	*      A map from namespace URI to the value of the location.
	*      If the entry is missing, that means a schema should be generated for that namespace.
	*      If the value is "", that means the schema location is implied
	*      (&lt;xs:schema namespace="..."/> w/o schemaLocation.)
	*/
	@:overload public function getSchemaLocations() : java.util.Map<String, String>;
	
	/**
	* Gets the reasonable {@link XmlNsForm} for the given namespace URI.
	*
	* <p>
	* The spec doesn't define very precisely what the {@link XmlNsForm} value
	* for the given namespace would be, so this method is implemented in rather
	* ad-hoc way. It should work as what most people expect for simple cases.
	*
	* @return never null.
	*/
	@:overload public function getElementFormDefault(nsUri : String) : javax.xml.bind.annotation.XmlNsForm;
	
	/**
	* Gets the reasonable {@link XmlNsForm} for the given namespace URI.
	*
	* <p>
	* The spec doesn't define very precisely what the {@link XmlNsForm} value
	* for the given namespace would be, so this method is implemented in rather
	* ad-hoc way. It should work as what most people expect for simple cases.
	*
	* @return never null.
	*/
	@:overload public function getAttributeFormDefault(nsUri : String) : javax.xml.bind.annotation.XmlNsForm;
	
	/**
	* Dumps this model into XML.
	*
	* For debug only.
	*
	* TODO: not sure if this actually works. We don't really know what are T,C.
	*/
	@:overload @:public public function dump(out : javax.xml.transform.Result) : Void;
	
	
}
