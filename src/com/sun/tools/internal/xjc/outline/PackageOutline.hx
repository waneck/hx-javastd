package com.sun.tools.internal.xjc.outline;
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
extern interface PackageOutline
{
	/**
	* The exposed package this context is representing.
	*
	* <p>
	* An exposed package is a package visible to users, a package
	* supposed to be used by client applications. Sometime
	* we have another parallel package that's not visible to users.
	*/
	@:overload public function _package() : com.sun.codemodel.internal.JPackage;
	
	/**
	* Generated ObjectFactory from package.
	*
	* This method allows a caller to obtain a reference to such
	* ObjectFactory from its package.
	*
	* Must not be null.
	*/
	@:overload public function objectFactory() : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Generates an ObjectFactory class for this package.
	*/
	@:overload public function objectFactoryGenerator() : com.sun.tools.internal.xjc.generator.bean.ObjectFactoryGenerator;
	
	/**
	* Gets {@link ClassOutline}s whose {@link ClassOutline#_package()}
	* points to this object.
	*
	* @return can be empty but never null.
	*/
	@:overload public function getClasses() : java.util.Set<com.sun.tools.internal.xjc.outline.ClassOutline>;
	
	/**
	* The namespace URI most commonly used in classes in this package.
	* This should be used as the namespace URI for {@link XmlSchema#namespace()}.
	*
	* <p>
	* Null if no default
	*/
	@:overload public function getMostUsedNamespaceURI() : String;
	
	/**
	* The element form default for this package.
	* <p>
	* The value is computed by examining what would yield the smallest generated code.
	*/
	@:overload public function getElementFormDefault() : javax.xml.bind.annotation.XmlNsForm;
	
	/**
	* The attribute form default for this package.
	* <p>
	* The value is computed by examining what would yield the smallest generated code.
	*/
	@:overload public function getAttributeFormDefault() : javax.xml.bind.annotation.XmlNsForm;
	
	
}
