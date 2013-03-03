package com.sun.tools.internal.xjc.generator.bean;
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
extern class PackageOutlineImpl implements com.sun.tools.internal.xjc.outline.PackageOutline
{
	/**
	* The namespace URI most commonly used in classes in this package.
	* This should be used as the namespace URI for {@link XmlSchema#namespace()}.
	*
	* <p>
	* Null if no default
	*
	* @see #calcDefaultValues().
	*/
	@:overload @:public public function getMostUsedNamespaceURI() : String;
	
	/**
	* The attribute form default for this package.
	* <p>
	* The value is computed by examining what would yield the smallest generated code.
	*/
	@:overload @:public public function getAttributeFormDefault() : javax.xml.bind.annotation.XmlNsForm;
	
	/**
	* The element form default for this package.
	* <p>
	* The value is computed by examining what would yield the smallest generated code.
	*/
	@:overload @:public public function getElementFormDefault() : javax.xml.bind.annotation.XmlNsForm;
	
	@:overload @:public public function _package() : com.sun.codemodel.internal.JPackage;
	
	@:overload @:public public function objectFactoryGenerator() : com.sun.tools.internal.xjc.generator.bean.ObjectFactoryGenerator;
	
	@:overload @:public public function getClasses() : java.util.Set<com.sun.tools.internal.xjc.generator.bean.ClassOutlineImpl>;
	
	@:overload @:public public function objectFactory() : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload @:protected private function new(outline : com.sun.tools.internal.xjc.generator.bean.BeanGenerator, model : com.sun.tools.internal.xjc.model.Model, _pkg : com.sun.codemodel.internal.JPackage) : Void;
	
	/**
	* Compute the most common namespace URI in this package
	* (to put into {@link XmlSchema#namespace()} and what value
	* we should put into {@link XmlSchema#elementFormDefault()}.
	*
	* This method is called after {@link #classes} field is filled up.
	*/
	@:overload @:public public function calcDefaultValues() : Void;
	
	
}
