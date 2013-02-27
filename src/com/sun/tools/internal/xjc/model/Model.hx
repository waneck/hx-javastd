package com.sun.tools.internal.xjc.model;
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
extern class Model implements com.sun.xml.internal.bind.v2.model.core.TypeInfoSet<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass, java.lang.Void, java.lang.Void> implements com.sun.tools.internal.xjc.model.CCustomizable
{
	/**
	* If this model was built from XML Schema, this field
	* stores the root object of the parse schema model.
	* Otherwise null.
	*
	* @sine 2.1.1
	*/
	public var schemaComponent(default, null) : com.sun.xml.internal.xsom.XSSchemaSet;
	
	/**
	* @param nc
	*      Usually this should be set in the constructor, but we do allow this parameter
	*      to be initially null, and then set later.
	* @param schemaComponent
	*      The source schema model, if this is built from XSD.
	*/
	@:overload public function new(opts : com.sun.tools.internal.xjc.Options, cm : com.sun.codemodel.internal.JCodeModel, nc : com.sun.xml.internal.bind.api.impl.NameConverter, allocator : com.sun.tools.internal.xjc.api.ClassNameAllocator, schemaComponent : com.sun.xml.internal.xsom.XSSchemaSet) : Void;
	
	@:overload public function setNameConverter(nameConverter : com.sun.xml.internal.bind.api.impl.NameConverter) : Void;
	
	/**
	* Gets the name converter that shall be used to parse XML names into Java names.
	*/
	@:overload @:final public function getNameConverter() : com.sun.xml.internal.bind.api.impl.NameConverter;
	
	@:overload public function isPackageLevelAnnotations() : Bool;
	
	@:overload public function setPackageLevelAnnotations(packageLevelAnnotations : Bool) : Void;
	
	/**
	* This model uses this code model exclusively.
	*/
	public var codeModel(default, null) : com.sun.codemodel.internal.JCodeModel;
	
	/**
	* Command-line options used for building this model.
	*/
	public var options(default, null) : com.sun.tools.internal.xjc.Options;
	
	/**
	* True to generate serializable classes.
	*/
	public var serializable : Bool;
	
	/**
	* serial version UID to be generated.
	*
	* null if not to generate serialVersionUID field.
	*/
	public var serialVersionUID : Null<haxe.Int64>;
	
	/**
	* If non-null, all the generated classes should eventually derive from this class.
	*/
	public var rootClass : com.sun.codemodel.internal.JClass;
	
	/**
	* If non-null, all the generated interfaces should eventually derive from this interface.
	*/
	public var rootInterface : com.sun.codemodel.internal.JClass;
	
	/**
	* Specifies the code generation strategy.
	* Must not be null.
	*/
	public var strategy : com.sun.tools.internal.xjc.generator.bean.ImplStructureStrategy;
	
	/**
	* Default ID/IDREF symbol space. Any ID/IDREF without explicit
	* reference to a symbol space is assumed to use this default
	* symbol space.
	*/
	public var defaultSymbolSpace(default, null) : com.sun.tools.internal.xjc.model.SymbolSpace;
	
	@:overload public function getSymbolSpace(name : String) : com.sun.tools.internal.xjc.model.SymbolSpace;
	
	/**
	* Fully-generate the source code into the given model.
	*
	* @return
	*      null if there was any errors. Otherwise it returns a valid
	*      {@link Outline} object, which captures how the model objects
	*      are mapped to the generated source code.
	*      <p>
	*      Add-ons can use those information to further augment the generated
	*      source code.
	*/
	@:overload public function generateCode(opt : com.sun.tools.internal.xjc.Options, receiver : com.sun.tools.internal.xjc.ErrorReceiver) : com.sun.tools.internal.xjc.outline.Outline;
	
	/**
	* Represents the "top-level binding".
	*
	* <p>
	* This is used to support the use of a schema inside WSDL.
	* For XML Schema, the top-level binding is a map from
	* global element declarations to its representation class.
	*
	* <p>
	* For other schema languages, it should follow the appendicies in
	* WSDL (but in practice no one would use WSDL with a schema language
	* other than XML Schema, so it doesn't really matter.)
	*
	* <p>
	* This needs to be filled by the front-end.
	*/
	@:overload @:final public function createTopLevelBindings() : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.xjc.model.CClassInfo>;
	
	@:overload public function getNavigator() : com.sun.xml.internal.bind.v2.model.nav.Navigator<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass, java.lang.Void, java.lang.Void>;
	
	@:overload public function getTypeInfo(type : com.sun.tools.internal.xjc.model.nav.NType) : com.sun.tools.internal.xjc.model.CNonElement;
	
	@:overload public function getAnyTypeInfo() : com.sun.tools.internal.xjc.model.CBuiltinLeafInfo;
	
	@:overload public function getTypeInfo(ref : com.sun.xml.internal.bind.v2.model.core.Ref<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass>) : com.sun.tools.internal.xjc.model.CNonElement;
	
	@:overload public function beans() : java.util.Map<com.sun.tools.internal.xjc.model.nav.NClass, com.sun.tools.internal.xjc.model.CClassInfo>;
	
	@:overload public function enums() : java.util.Map<com.sun.tools.internal.xjc.model.nav.NClass, com.sun.tools.internal.xjc.model.CEnumLeafInfo>;
	
	@:overload public function typeUses() : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.xjc.model.TypeUse>;
	
	/**
	* No array mapping generation for XJC.
	*/
	@:overload public function arrays() : java.util.Map<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.CArrayInfo>;
	
	@:overload public function builtins() : java.util.Map<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.CBuiltinLeafInfo>;
	
	@:overload public function getClassInfo(t : com.sun.tools.internal.xjc.model.nav.NClass) : com.sun.tools.internal.xjc.model.CClassInfo;
	
	@:overload public function getElementInfo(scope : com.sun.tools.internal.xjc.model.nav.NClass, name : javax.xml.namespace.QName) : com.sun.tools.internal.xjc.model.CElementInfo;
	
	@:overload public function getElementMappings(scope : com.sun.tools.internal.xjc.model.nav.NClass) : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.xjc.model.CElementInfo>;
	
	@:overload public function getAllElements() : java.lang.Iterable<com.sun.tools.internal.xjc.model.CElementInfo>;
	
	/**
	* @deprecated
	*      Always return null. Perhaps you are interested in {@link #schemaComponent}?
	*/
	@:overload public function getSchemaComponent() : com.sun.xml.internal.xsom.XSComponent;
	
	/**
	* @deprecated
	*      No line number available for the "root" component.
	*/
	@:overload public function getLocator() : org.xml.sax.Locator;
	
	/**
	* Gets the global customizations.
	*/
	@:overload public function getCustomizations() : com.sun.tools.internal.xjc.model.CCustomizations;
	
	/**
	* Not implemented in the compile-time model.
	*/
	@:overload public function getXmlNs(namespaceUri : String) : java.util.Map<String, String>;
	
	@:overload public function getSchemaLocations() : java.util.Map<String, String>;
	
	@:overload public function getElementFormDefault(nsUri : String) : javax.xml.bind.annotation.XmlNsForm;
	
	@:overload public function getAttributeFormDefault(nsUri : String) : javax.xml.bind.annotation.XmlNsForm;
	
	@:overload public function dump(out : javax.xml.transform.Result) : Void;
	
	@:overload public function getPackage(pkg : com.sun.codemodel.internal.JPackage) : com.sun.tools.internal.xjc.model.CClassInfoParent.CClassInfoParent_Package;
	
	
}
