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
extern class ModelBuilder<T, C, F, M>
{
	@:public @:final public var reader(default, null) : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<T, C, F, M>;
	
	@:public @:final public var nav(default, null) : com.sun.xml.internal.bind.v2.model.nav.Navigator<T, C, F, M>;
	
	/**
	* JAXB doesn't want to use namespaces unless we are told to, but WS-I BP
	* conformace requires JAX-RPC to always use a non-empty namespace URI.
	* (see http://www.ws-i.org/Profiles/BasicProfile-1.0-2004-04-16.html#WSDLTYPES R2105)
	*
	* <p>
	* To work around this issue, we allow the use of the empty namespaces to be
	* replaced by a particular designated namespace URI.
	*
	* <p>
	* This field keeps the value of that replacing namespace URI.
	* When there's no replacement, this field is set to "".
	*/
	@:public @:final public var defaultNsUri(default, null) : String;
	
	/**
	* Set to true if the model includes {@link XmlAttachmentRef}. JAX-WS
	* needs to know this information.
	*/
	@:public public var hasSwaRef : Bool;
	
	@:overload @:public public function new(reader : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<T, C, F, M>, navigator : com.sun.xml.internal.bind.v2.model.nav.Navigator<T, C, F, M>, subclassReplacements : java.util.Map<C, C>, defaultNamespaceRemap : String) : Void;
	
	@:overload @:protected private function createTypeInfoSet() : com.sun.xml.internal.bind.v2.model.impl.TypeInfoSetImpl<T, C, F, M>;
	
	/**
	* Builds a JAXB {@link ClassInfo} model from a given class declaration
	* and adds that to this model owner.
	*
	* <p>
	* Return type is either {@link ClassInfo} or {@link LeafInfo} (for types like
	* {@link String} or {@link Enum}-derived ones)
	*/
	@:overload @:public public function getClassInfo(clazz : C, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	/**
	* For limited cases where the caller needs to search for a super class.
	* This is necessary because we don't want {@link #subclassReplacements}
	* to kick in for the super class search, which will cause infinite recursion.
	*/
	@:overload @:public public function getClassInfo(clazz : C, searchForSuperClass : Bool, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	/**
	* Have the builder recognize the type (if it hasn't done so yet),
	* and returns a {@link NonElement} that represents it.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public public function getTypeInfo(t : T, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	/**
	* This method is used to add a root reference to a model.
	*/
	@:overload @:public public function getTypeInfo(ref : com.sun.xml.internal.bind.v2.model.core.Ref<T, C>) : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	@:overload @:protected private function createEnumLeafInfo(clazz : C, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : com.sun.xml.internal.bind.v2.model.impl.EnumLeafInfoImpl<T, C, F, M>;
	
	@:overload @:protected private function createClassInfo(clazz : C, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : com.sun.xml.internal.bind.v2.model.impl.ClassInfoImpl<T, C, F, M>;
	
	@:overload @:protected private function createElementInfo(registryInfo : com.sun.xml.internal.bind.v2.model.impl.RegistryInfoImpl<T, C, F, M>, m : M) : com.sun.xml.internal.bind.v2.model.impl.ElementInfoImpl<T, C, F, M>;
	
	@:overload @:protected private function createArrayInfo(upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable, arrayType : T) : com.sun.xml.internal.bind.v2.model.impl.ArrayInfoImpl<T, C, F, M>;
	
	/**
	* Visits a class with {@link XmlRegistry} and records all the element mappings
	* in it.
	*/
	@:overload @:public public function addRegistry(registryClass : C, upstream : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : com.sun.xml.internal.bind.v2.model.core.RegistryInfo<T, C>;
	
	/**
	* Gets a {@link RegistryInfo} for the given package.
	*
	* @return
	*      null if no registry exists for the package.
	*      unlike other getXXX methods on this class,
	*      this method is side-effect free.
	*/
	@:overload @:public public function getRegistry(packageName : String) : com.sun.xml.internal.bind.v2.model.core.RegistryInfo<T, C>;
	
	/**
	* Called after all the classes are added to the type set
	* to "link" them together.
	*
	* <p>
	* Don't expose implementation classes in the signature.
	*
	* @return
	*      fully built {@link TypeInfoSet} that represents the model,
	*      or null if there was an error.
	*/
	@:overload @:public public function link() : com.sun.xml.internal.bind.v2.model.core.TypeInfoSet<T, C, F, M>;
	
	/**
	* Sets the error handler that receives errors discovered during the model building.
	*
	* @param errorHandler
	*      can be null.
	*/
	@:overload @:public public function setErrorHandler(errorHandler : com.sun.xml.internal.bind.v2.model.core.ErrorHandler) : Void;
	
	@:overload @:public @:final public function reportError(e : com.sun.xml.internal.bind.v2.runtime.IllegalAnnotationException) : Void;
	
	@:overload @:public public function isReplaced(sc : C) : Bool;
	
	
}
