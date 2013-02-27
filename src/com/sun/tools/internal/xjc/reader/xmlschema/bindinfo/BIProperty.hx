package com.sun.tools.internal.xjc.reader.xmlschema.bindinfo;
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
extern class BIProperty extends com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.AbstractDeclarationImpl
{
	@:overload public function new(loc : org.xml.sax.Locator, _propName : String, _javadoc : String, _baseType : BIProperty_BaseTypeBean, collectionType : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.CollectionTypeAttribute, isConst : Null<Bool>, optionalProperty : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.OptionalPropertyMode, genElemProp : Null<Bool>) : Void;
	
	@:overload private function new() : Void;
	
	@:overload override public function getChildren() : java.util.Collection<com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDeclaration>;
	
	@:overload override public function setParent(parent : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo) : Void;
	
	/**
	* Returns the customized property name.
	*
	* This method honors the "enableJavaNamingConvention" customization
	* and formats the property name accordingly if necessary.
	*
	* Thus the caller should <em>NOT</em> apply the XML-to-Java name
	* conversion algorithm to the value returned from this method.
	*
	* @param forConstant
	*      If the property name is intended for a constant property name,
	*      set to true. This will change the result
	*
	* @return
	*      This method can return null if the customization doesn't
	*      specify the name.
	*/
	@:overload public function getPropertyName(forConstant : Bool) : String;
	
	/**
	* Gets the associated javadoc.
	*
	* @return
	*      null if none is specfieid.
	*/
	@:overload public function getJavadoc() : String;
	
	@:overload public function getBaseType() : com.sun.codemodel.internal.JType;
	
	@:overload public function getOptionalPropertyMode() : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.OptionalPropertyMode;
	
	/**
	* Gets the inherited value of the "fixedAttrToConstantProperty" customization.
	*
	* <p>
	* Note that returning true from this method doesn't necessarily mean
	* that a property needs to be mapped to a constant property.
	* It just means that it's mapped to a constant property
	* <b>if an attribute use carries a fixed value.</b>
	*
	* <p>
	* I don't like this semantics but that's what the spec implies.
	*/
	@:overload public function isConstantProperty() : Bool;
	
	@:overload public function createValueProperty(defaultName : String, forConstant : Bool, source : com.sun.xml.internal.xsom.XSComponent, tu : com.sun.tools.internal.xjc.model.TypeUse, typeName : javax.xml.namespace.QName) : com.sun.tools.internal.xjc.model.CValuePropertyInfo;
	
	@:overload public function createAttributeProperty(use : com.sun.xml.internal.xsom.XSAttributeUse, tu : com.sun.tools.internal.xjc.model.TypeUse) : com.sun.tools.internal.xjc.model.CAttributePropertyInfo;
	
	/**
	*
	*
	* @param defaultName
	*      If the name is not customized, this name will be used
	*      as the default. Note that the name conversion <b>MUST</b>
	*      be applied before this method is called if necessary.
	* @param source
	*      Source schema component from which a field is built.
	*/
	@:overload public function createElementProperty(defaultName : String, forConstant : Bool, source : com.sun.xml.internal.xsom.XSParticle, types : com.sun.tools.internal.xjc.reader.RawTypeSet) : com.sun.tools.internal.xjc.model.CElementPropertyInfo;
	
	@:overload public function createDummyExtendedMixedReferenceProperty(defaultName : String, source : com.sun.xml.internal.xsom.XSComponent, types : com.sun.tools.internal.xjc.reader.RawTypeSet) : com.sun.tools.internal.xjc.model.CReferencePropertyInfo;
	
	@:overload public function createContentExtendedMixedReferenceProperty(defaultName : String, source : com.sun.xml.internal.xsom.XSComponent, types : com.sun.tools.internal.xjc.reader.RawTypeSet) : com.sun.tools.internal.xjc.model.CReferencePropertyInfo;
	
	@:overload public function createReferenceProperty(defaultName : String, forConstant : Bool, source : com.sun.xml.internal.xsom.XSComponent, types : com.sun.tools.internal.xjc.reader.RawTypeSet, isMixed : Bool, dummy : Bool, content : Bool, isMixedExtended : Bool) : com.sun.tools.internal.xjc.model.CReferencePropertyInfo;
	
	@:overload public function createElementOrReferenceProperty(defaultName : String, forConstant : Bool, source : com.sun.xml.internal.xsom.XSParticle, types : com.sun.tools.internal.xjc.reader.RawTypeSet) : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	@:overload override public function markAsAcknowledged() : Void;
	
	/**
	* Finds a BIProperty which this object should delegate to.
	*
	* @return
	*      always return non-null for normal BIProperties.
	*      If this object is contained in the BIGlobalBinding, then
	*      this method returns null to indicate that there's no more default.
	*/
	@:overload private function getDefault() : BIProperty;
	
	/**
	* Finds a property customization that describes how the given
	* component should be mapped to a property (if it's mapped to
	* a property at all.)
	*
	* <p>
	* Consider an attribute use that does NOT carry a property
	* customization. This schema component is nonetheless considered
	* to carry a (sort of) implicit property customization, whose values
	* are defaulted.
	*
	* <p>
	* This method can be think of the method that returns this implied
	* property customization.
	*
	* <p>
	* Note that this doesn't mean the given component needs to be
	* mapped to a property. But if it does map to a property, it needs
	* to follow this customization.
	*
	* I think this semantics is next to non-sense but I couldn't think
	* of any other way to follow the spec.
	*
	* @param c
	*      A customization effective on this component will be returned.
	*      Can be null just to get the global customization.
	* @return
	*      Always return non-null valid object.
	*/
	@:overload public static function getCustomization(c : com.sun.xml.internal.xsom.XSComponent) : BIProperty;
	
	@:overload override public function getName() : javax.xml.namespace.QName;
	
	/** Name of this declaration. */
	public static var NAME(default, null) : javax.xml.namespace.QName;
	
	@:overload public function getConv() : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;
	
	
}
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$BIProperty$BaseTypeBean') @:internal extern class BIProperty_BaseTypeBean
{
	
}
