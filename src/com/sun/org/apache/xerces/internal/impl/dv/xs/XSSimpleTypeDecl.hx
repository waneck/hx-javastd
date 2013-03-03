package com.sun.org.apache.xerces.internal.impl.dv.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XSSimpleTypeDecl implements com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType implements org.w3c.dom.TypeInfo
{
	/**
	* @xerces.internal
	*
	* @author Sandy Gao, IBM
	* @author Neeraj Bajaj, Sun Microsystems, inc.
	*
	* @version $Id: XSSimpleTypeDecl.java 3029 2011-04-24 17:50:18Z joehw $
	*/
	@:protected @:static @:final private static var DV_STRING(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_BOOLEAN(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_DECIMAL(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_FLOAT(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_DOUBLE(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_DURATION(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_DATETIME(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_TIME(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_DATE(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_GYEARMONTH(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_GYEAR(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_GMONTHDAY(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_GDAY(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_GMONTH(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_HEXBINARY(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_BASE64BINARY(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_ANYURI(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_QNAME(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_PRECISIONDECIMAL(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_NOTATION(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_ANYSIMPLETYPE(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_ID(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_IDREF(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_ENTITY(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_INTEGER(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_LIST(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_UNION(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_YEARMONTHDURATION(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_DAYTIMEDURATION(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var DV_ANYATOMICTYPE(default, null) : java.StdTypes.Int16;
	
	@:public @:static @:final public static var YEARMONTHDURATION_DT(default, null) : java.StdTypes.Int16;
	
	@:public @:static @:final public static var DAYTIMEDURATION_DT(default, null) : java.StdTypes.Int16;
	
	@:public @:static @:final public static var PRECISIONDECIMAL_DT(default, null) : java.StdTypes.Int16;
	
	@:public @:static @:final public static var ANYATOMICTYPE_DT(default, null) : java.StdTypes.Int16;
	
	@:overload @:protected @:static private static function getGDVs() : java.NativeArray<com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator>;
	
	@:overload @:protected private function setDVs(dvs : java.NativeArray<com.sun.org.apache.xerces.internal.impl.dv.xs.TypeValidator>) : Void;
	
	@:public public var lengthAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:public public var minLengthAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:public public var maxLengthAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:public public var whiteSpaceAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:public public var totalDigitsAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:public public var fractionDigitsAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:public public var patternAnnotations : com.sun.org.apache.xerces.internal.impl.xs.util.XSObjectListImpl;
	
	@:public public var enumerationAnnotations : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:public public var maxInclusiveAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:public public var maxExclusiveAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:public public var minInclusiveAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:public public var minExclusiveAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:protected private function new(base : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl, name : String, validateDV : java.StdTypes.Int16, ordered : java.StdTypes.Int16, bounded : Bool, finite : Bool, numeric : Bool, isImmutable : Bool, builtInKind : java.StdTypes.Int16) : Void;
	
	@:overload @:protected private function new(base : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl, name : String, uri : String, finalSet : java.StdTypes.Int16, isImmutable : Bool, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList, builtInKind : java.StdTypes.Int16) : Void;
	
	@:overload @:protected private function new(base : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl, name : String, uri : String, finalSet : java.StdTypes.Int16, isImmutable : Bool, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : Void;
	
	@:overload @:protected private function new(name : String, uri : String, finalSet : java.StdTypes.Int16, itemType : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl, isImmutable : Bool, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : Void;
	
	@:overload @:protected private function new(name : String, uri : String, finalSet : java.StdTypes.Int16, memberTypes : java.NativeArray<com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl>, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : Void;
	
	@:overload @:protected private function setRestrictionValues(base : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl, name : String, uri : String, finalSet : java.StdTypes.Int16, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl;
	
	@:overload @:protected private function setListValues(name : String, uri : String, finalSet : java.StdTypes.Int16, itemType : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl;
	
	@:overload @:protected private function setUnionValues(name : String, uri : String, finalSet : java.StdTypes.Int16, memberTypes : java.NativeArray<com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl>, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : com.sun.org.apache.xerces.internal.impl.dv.xs.XSSimpleTypeDecl;
	
	@:overload @:public public function getType() : java.StdTypes.Int16;
	
	@:overload @:public public function getTypeCategory() : java.StdTypes.Int16;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getTypeName() : String;
	
	@:overload @:public public function getNamespace() : String;
	
	@:overload @:public public function getFinal() : java.StdTypes.Int16;
	
	@:overload @:public public function isFinal(derivation : java.StdTypes.Int16) : Bool;
	
	@:overload @:public public function getBaseType() : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	@:overload @:public public function getAnonymous() : Bool;
	
	@:overload @:public public function getVariety() : java.StdTypes.Int16;
	
	@:overload @:public public function isIDType() : Bool;
	
	@:overload @:public public function getWhitespace() : java.StdTypes.Int16;
	
	@:overload @:public public function getPrimitiveKind() : java.StdTypes.Int16;
	
	/**
	* Returns the closest built-in type category this type represents or
	* derived from. For example, if this simple type is a built-in derived
	* type integer the <code>INTEGER_DV</code> is returned.
	*/
	@:overload @:public public function getBuiltInKind() : java.StdTypes.Int16;
	
	/**
	* If variety is <code>atomic</code> the primitive type definition (a
	* built-in primitive datatype definition or the simple ur-type
	* definition) is available, otherwise <code>null</code>.
	*/
	@:overload @:public public function getPrimitiveType() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/**
	* If variety is <code>list</code> the item type definition (an atomic or
	* union simple type definition) is available, otherwise
	* <code>null</code>.
	*/
	@:overload @:public public function getItemType() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/**
	* If variety is <code>union</code> the list of member type definitions (a
	* non-empty sequence of simple type definitions) is available,
	* otherwise an empty <code>XSObjectList</code>.
	*/
	@:overload @:public public function getMemberTypes() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* If <restriction> is chosen
	*/
	@:overload @:public public function applyFacets(facets : com.sun.org.apache.xerces.internal.impl.dv.XSFacets, presentFacet : java.StdTypes.Int16, fixedFacet : java.StdTypes.Int16, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Void;
	
	/**
	* validate a value, and return the compiled form
	*/
	@:overload @:public public function validate(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Dynamic;
	
	@:overload @:protected private function getActualEnumValue(lexical : String, ctx : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, info : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo;
	
	/**
	* validate a value, and return the compiled form
	*/
	@:overload @:public public function validateWithInfo(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo;
	
	/**
	* validate a value, and return the compiled form
	*/
	@:overload @:public public function validate(content : Dynamic, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Dynamic;
	
	/**
	* validate an actual value against this DV
	*
	* @param context       the validation context
	* @param validatedInfo used to provide the actual value and member types
	*/
	@:overload @:public public function validate(context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Void;
	
	@:overload @:public public function isEqual(value1 : Dynamic, value2 : Dynamic) : Bool;
	
	@:overload @:public public function isIdentical(value1 : Dynamic, value2 : Dynamic) : Bool;
	
	@:native('normalize') @:overload @:public @:static public static function _normalize(content : String, ws : java.StdTypes.Int16) : String;
	
	@:overload @:protected private function normalize(content : Dynamic, ws : java.StdTypes.Int16) : String;
	
	/**
	*  Fundamental Facet: ordered.
	*/
	@:overload @:public public function getOrdered() : java.StdTypes.Int16;
	
	/**
	* Fundamental Facet: bounded.
	*/
	@:overload @:public public function getBounded() : Bool;
	
	/**
	* Fundamental Facet: cardinality.
	*/
	@:overload @:public public function getFinite() : Bool;
	
	/**
	* Fundamental Facet: numeric.
	*/
	@:overload @:public public function getNumeric() : Bool;
	
	/**
	* Convenience method. [Facets]: check whether a facet is defined on this
	* type.
	* @param facetName  The name of the facet.
	* @return  True if the facet is defined, false otherwise.
	*/
	@:overload @:public public function isDefinedFacet(facetName : java.StdTypes.Int16) : Bool;
	
	/**
	* [facets]: all facets defined on this type. The value is a bit
	* combination of FACET_XXX constants of all defined facets.
	*/
	@:overload @:public public function getDefinedFacets() : java.StdTypes.Int16;
	
	/**
	* Convenience method. [Facets]: check whether a facet is defined and
	* fixed on this type.
	* @param facetName  The name of the facet.
	* @return  True if the facet is fixed, false otherwise.
	*/
	@:overload @:public public function isFixedFacet(facetName : java.StdTypes.Int16) : Bool;
	
	/**
	* [facets]: all defined facets for this type which are fixed.
	*/
	@:overload @:public public function getFixedFacets() : java.StdTypes.Int16;
	
	/**
	* Convenience method. Returns a value of a single constraining facet for
	* this simple type definition. This method must not be used to retrieve
	* values for <code>enumeration</code> and <code>pattern</code> facets.
	* @param facetName The name of the facet, i.e.
	*   <code>FACET_LENGTH, FACET_TOTALDIGITS </code> (see
	*   <code>XSConstants</code>). To retrieve the value for a pattern or
	*   an enumeration, see <code>enumeration</code> and
	*   <code>pattern</code>.
	* @return A value of the facet specified in <code>facetName</code> for
	*   this simple type definition or <code>null</code>.
	*/
	@:overload @:public public function getLexicalFacetValue(facetName : java.StdTypes.Int16) : String;
	
	/**
	* A list of enumeration values if it exists, otherwise an empty
	* <code>StringList</code>.
	*/
	@:overload @:public public function getLexicalEnumeration() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/**
	* A list of actual enumeration values if it exists, otherwise an empty
	* <code>ObjectList</code>.
	*/
	@:overload @:public public function getActualEnumeration() : com.sun.org.apache.xerces.internal.xs.datatypes.ObjectList;
	
	/**
	* A list of enumeration type values (as a list of ShortList objects) if it exists, otherwise returns
	* null
	*/
	@:overload @:public public function getEnumerationItemTypeList() : com.sun.org.apache.xerces.internal.xs.datatypes.ObjectList;
	
	@:overload @:public public function getEnumerationTypeList() : com.sun.org.apache.xerces.internal.xs.ShortList;
	
	/**
	* A list of pattern values if it exists, otherwise an empty
	* <code>StringList</code>.
	*/
	@:overload @:public public function getLexicalPattern() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/**
	* [annotations]: a set of annotations for this simple type component if
	* it exists, otherwise an empty <code>XSObjectList</code>.
	*/
	@:overload @:public public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload @:public public function derivedFromType(ancestor : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, derivation : java.StdTypes.Int16) : Bool;
	
	@:overload @:public public function derivedFrom(ancestorNS : String, ancestorName : String, derivation : java.StdTypes.Int16) : Bool;
	
	/**
	* Checks if a type is derived from another by restriction, given the name
	* and namespace. See:
	* http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407/core.html#TypeInfo-isDerivedFrom
	*
	* @param ancestorNS
	*            The namspace of the ancestor type declaration
	* @param ancestorName
	*            The name of the ancestor type declaration
	* @param derivationMethod
	*            The derivation method
	*
	* @return boolean True if the ancestor type is derived from the reference type by the specifiied derivation method.
	*/
	@:overload @:public public function isDOMDerivedFrom(ancestorNS : String, ancestorName : String, derivationMethod : Int) : Bool;
	
	@:overload @:public public function reset() : Void;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xs.XSObject#getNamespaceItem()
	*/
	@:overload @:public public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	@:overload @:public public function setNamespaceItem(namespaceItem : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem) : Void;
	
	/**
	* @see java.lang.Object#toString()
	*/
	@:overload @:public public function toString() : String;
	
	/**
	*  A list of constraining facets if it exists, otherwise an empty
	* <code>XSObjectList</code>. Note: This method must not be used to
	* retrieve values for <code>enumeration</code> and <code>pattern</code>
	* facets.
	*/
	@:overload @:public public function getFacets() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	*  A list of enumeration and pattern constraining facets if it exists,
	* otherwise an empty <code>XSObjectList</code>.
	*/
	@:overload @:public public function getMultiValueFacets() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload @:public public function getMinInclusiveValue() : Dynamic;
	
	@:overload @:public public function getMinExclusiveValue() : Dynamic;
	
	@:overload @:public public function getMaxInclusiveValue() : Dynamic;
	
	@:overload @:public public function getMaxExclusiveValue() : Dynamic;
	
	@:overload @:public public function setAnonymous(anon : Bool) : Void;
	
	@:overload @:public public function getTypeNamespace() : String;
	
	@:overload @:public public function isDerivedFrom(typeNamespaceArg : String, typeNameArg : String, derivationMethod : Int) : Bool;
	
	
}
/**
* A wrapper of ValidationContext, to provide a way of switching to a
* different Namespace declaration context.
*/
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$XSSimpleTypeDecl$ValidationContextImpl') @:internal extern class XSSimpleTypeDecl_ValidationContextImpl implements com.sun.org.apache.xerces.internal.impl.dv.ValidationContext
{
	@:overload @:public public function needFacetChecking() : Bool;
	
	@:overload @:public public function needExtraChecking() : Bool;
	
	@:overload @:public public function needToNormalize() : Bool;
	
	@:overload @:public public function useNamespaces() : Bool;
	
	@:overload @:public public function isEntityDeclared(name : String) : Bool;
	
	@:overload @:public public function isEntityUnparsed(name : String) : Bool;
	
	@:overload @:public public function isIdDeclared(name : String) : Bool;
	
	@:overload @:public public function addId(name : String) : Void;
	
	@:overload @:public public function addIdRef(name : String) : Void;
	
	@:overload @:public public function getSymbol(symbol : String) : String;
	
	@:overload @:public public function getURI(prefix : String) : String;
	
	@:overload @:public public function getLocale() : java.util.Locale;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$XSSimpleTypeDecl$XSFacetImpl') @:internal extern class XSSimpleTypeDecl_XSFacetImpl implements com.sun.org.apache.xerces.internal.xs.XSFacet
{
	@:overload @:public public function new(kind : java.StdTypes.Int16, value : String, fixed : Bool, annotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation) : Void;
	
	/**
	* Optional. Annotation.
	*/
	@:overload @:public public function getAnnotation() : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	/**
	* Optional. Annotations.
	*/
	@:overload @:public public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSFacet#getFacetKind()
	*/
	@:overload @:public public function getFacetKind() : java.StdTypes.Int16;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSFacet#getLexicalFacetValue()
	*/
	@:overload @:public public function getLexicalFacetValue() : String;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSFacet#isFixed()
	*/
	@:overload @:public public function getFixed() : Bool;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSObject#getName()
	*/
	@:overload @:public public function getName() : String;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSObject#getNamespace()
	*/
	@:overload @:public public function getNamespace() : String;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSObject#getNamespaceItem()
	*/
	@:overload @:public public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSObject#getType()
	*/
	@:overload @:public public function getType() : java.StdTypes.Int16;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$XSSimpleTypeDecl$XSMVFacetImpl') @:internal extern class XSSimpleTypeDecl_XSMVFacetImpl implements com.sun.org.apache.xerces.internal.xs.XSMultiValueFacet
{
	@:overload @:public public function new(kind : java.StdTypes.Int16, values : com.sun.org.apache.xerces.internal.xs.StringList, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSFacet#getFacetKind()
	*/
	@:overload @:public public function getFacetKind() : java.StdTypes.Int16;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSMultiValueFacet#getAnnotations()
	*/
	@:overload @:public public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSMultiValueFacet#getLexicalFacetValues()
	*/
	@:overload @:public public function getLexicalFacetValues() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSObject#getName()
	*/
	@:overload @:public public function getName() : String;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSObject#getNamespace()
	*/
	@:overload @:public public function getNamespace() : String;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSObject#getNamespaceItem()
	*/
	@:overload @:public public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSObject#getType()
	*/
	@:overload @:public public function getType() : java.StdTypes.Int16;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$dv$xs$XSSimpleTypeDecl$AbstractObjectList') @:internal extern class XSSimpleTypeDecl_AbstractObjectList extends java.util.AbstractList<Dynamic> implements com.sun.org.apache.xerces.internal.xs.datatypes.ObjectList
{
	@:overload @:public override public function get(index : Int) : Dynamic;
	
	@:overload @:public override public function size() : Int;
	
	/**
	* Returns an array containing all of the elements in this list in
	* proper sequence (from first to last element); the runtime type of
	* the returned array is that of the specified array.  If the list fits
	* in the specified array, it is returned therein.  Otherwise, a new
	* array is allocated with the runtime type of the specified array and
	* the size of this list.
	*
	* <p>If the list fits in the specified array with room to spare (i.e.,
	* the array has more elements than the list), the element in the array
	* immediately following the end of the list is set to <tt>null</tt>.
	* (This is useful in determining the length of the list <i>only</i> if
	* the caller knows that the list does not contain any null elements.)
	*
	* <p>Like the {@link #toArray()} method, this method acts as bridge between
	* array-based and collection-based APIs.  Further, this method allows
	* precise control over the runtime type of the output array, and may,
	* under certain circumstances, be used to save allocation costs.
	*
	* <p>Suppose <tt>x</tt> is a list known to contain only strings.
	* The following code can be used to dump the list into a newly
	* allocated array of <tt>String</tt>:
	*
	* <pre>
	*     String[] y = x.toArray(new String[0]);</pre>
	*
	* Note that <tt>toArray(new Object[0])</tt> is identical in function to
	* <tt>toArray()</tt>.
	*
	* @param a the array into which the elements of this list are to
	*          be stored, if it is big enough; otherwise, a new array of the
	*          same runtime type is allocated for this purpose.
	* @return an array containing the elements of this list
	* @throws ArrayStoreException if the runtime type of the specified array
	*         is not a supertype of the runtime type of every element in
	*         this list
	* @throws NullPointerException if the specified array is null
	*/
	@:overload @:public override public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	/**
	* Appends the specified element to the end of this list (optional
	* operation).
	*
	* <p>Lists that support this operation may place limitations on what
	* elements may be added to this list.  In particular, some
	* lists will refuse to add null elements, and others will impose
	* restrictions on the type of elements that may be added.  List
	* classes should clearly specify in their documentation any restrictions
	* on what elements may be added.
	*
	* @param e element to be appended to this list
	* @return <tt>true</tt> (as specified by {@link Collection#add})
	* @throws UnsupportedOperationException if the <tt>add</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this list
	* @throws NullPointerException if the specified element is null and this
	*         list does not permit null elements
	* @throws IllegalArgumentException if some property of this element
	*         prevents it from being added to this list
	*/
	@:overload @:public override public function add(e : Dynamic) : Bool;
	
	/**
	* Returns <tt>true</tt> if this list contains all of the elements of the
	* specified collection.
	*
	* @param  c collection to be checked for containment in this list
	* @return <tt>true</tt> if this list contains all of the elements of the
	*         specified collection
	* @throws ClassCastException if the types of one or more elements
	*         in the specified collection are incompatible with this
	*         list
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified collection contains one
	*         or more null elements and this list does not permit null
	*         elements
	*         (<a href="Collection.html#optional-restrictions">optional</a>),
	*         or if the specified collection is null
	* @see #contains(Object)
	*/
	@:overload @:public override public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Retains only the elements in this list that are contained in the
	* specified collection (optional operation).  In other words, removes
	* from this list all of its elements that are not contained in the
	* specified collection.
	*
	* @param c collection containing elements to be retained in this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws UnsupportedOperationException if the <tt>retainAll</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of an element of this list
	*         is incompatible with the specified collection
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if this list contains a null element and the
	*         specified collection does not permit null elements
	*         (<a href="Collection.html#optional-restrictions">optional</a>),
	*         or if the specified collection is null
	* @see #remove(Object)
	* @see #contains(Object)
	*/
	@:overload @:public override public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Removes from this list all of its elements that are contained in the
	* specified collection (optional operation).
	*
	* @param c collection containing elements to be removed from this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws UnsupportedOperationException if the <tt>removeAll</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of an element of this list
	*         is incompatible with the specified collection
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if this list contains a null element and the
	*         specified collection does not permit null elements
	*         (<a href="Collection.html#optional-restrictions">optional</a>),
	*         or if the specified collection is null
	* @see #remove(Object)
	* @see #contains(Object)
	*/
	@:overload @:public override public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Inserts all of the elements in the specified collection into this
	* list at the specified position (optional operation).  Shifts the
	* element currently at that position (if any) and any subsequent
	* elements to the right (increases their indices).  The new elements
	* will appear in this list in the order that they are returned by the
	* specified collection's iterator.  The behavior of this operation is
	* undefined if the specified collection is modified while the
	* operation is in progress.  (Note that this will occur if the specified
	* collection is this list, and it's nonempty.)
	*
	* @param index index at which to insert the first element from the
	*              specified collection
	* @param c collection containing elements to be added to this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws UnsupportedOperationException if the <tt>addAll</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of an element of the specified
	*         collection prevents it from being added to this list
	* @throws NullPointerException if the specified collection contains one
	*         or more null elements and this list does not permit null
	*         elements, or if the specified collection is null
	* @throws IllegalArgumentException if some property of an element of the
	*         specified collection prevents it from being added to this list
	* @throws IndexOutOfBoundsException if the index is out of range
	*         (<tt>index &lt; 0 || index &gt; size()</tt>)
	*/
	@:overload @:public override public function addAll(index : Int, c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Returns a list iterator over the elements in this list (in proper
	* sequence), starting at the specified position in the list.
	* The specified index indicates the first element that would be
	* returned by an initial call to {@link ListIterator#next next}.
	* An initial call to {@link ListIterator#previous previous} would
	* return the element with the specified index minus one.
	*
	* @param index index of the first element to be returned from the
	*        list iterator (by a call to {@link ListIterator#next next})
	* @return a list iterator over the elements in this list (in proper
	*         sequence), starting at the specified position in the list
	* @throws IndexOutOfBoundsException if the index is out of range
	*         ({@code index < 0 || index > size()})
	*/
	@:overload @:public override public function listIterator(index : Int) : java.util.ListIterator<Dynamic>;
	
	/**
	* Appends all of the elements in the specified collection to the end of
	* this list, in the order that they are returned by the specified
	* collection's iterator (optional operation).  The behavior of this
	* operation is undefined if the specified collection is modified while
	* the operation is in progress.  (Note that this will occur if the
	* specified collection is this list, and it's nonempty.)
	*
	* @param c collection containing elements to be added to this list
	* @return <tt>true</tt> if this list changed as a result of the call
	* @throws UnsupportedOperationException if the <tt>addAll</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of an element of the specified
	*         collection prevents it from being added to this list
	* @throws NullPointerException if the specified collection contains one
	*         or more null elements and this list does not permit null
	*         elements, or if the specified collection is null
	* @throws IllegalArgumentException if some property of an element of the
	*         specified collection prevents it from being added to this list
	* @see #add(Object)
	*/
	@:overload @:public override public function addAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* Replaces the element at the specified position in this list with the
	* specified element (optional operation).
	*
	* @param index index of the element to replace
	* @param element element to be stored at the specified position
	* @return the element previously at the specified position
	* @throws UnsupportedOperationException if the <tt>set</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this list
	* @throws NullPointerException if the specified element is null and
	*         this list does not permit null elements
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this list
	* @throws IndexOutOfBoundsException if the index is out of range
	*         (<tt>index &lt; 0 || index &gt;= size()</tt>)
	*/
	@:overload @:public override public function set(index : Int, element : Dynamic) : Dynamic;
	
	/**
	* The number of <code>Object</code>s in the list. The range of
	* valid child object indices is 0 to <code>length-1</code> inclusive.
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Returns the <code>index</code>th item in the collection or
	* <code>null</code> if <code>index</code> is greater than or equal to
	* the number of objects in the list. The index starts at 0.
	* @param index  index into the collection.
	* @return  The <code>Object</code> at the <code>index</code>th
	*   position in the <code>ObjectList</code>, or <code>null</code> if
	*   the index specified is not valid - greater than or equal to the
	*   number of items in the list or less than zero.
	*/
	@:overload @:public public function item(index : Int) : Dynamic;
	
	/**
	* Returns an array containing all of the elements in this list in proper
	* sequence (from first to last element).
	*
	* <p>The returned array will be "safe" in that no references to it are
	* maintained by this list.  (In other words, this method must
	* allocate a new array even if this list is backed by an array).
	* The caller is thus free to modify the returned array.
	*
	* <p>This method acts as bridge between array-based and collection-based
	* APIs.
	*
	* @return an array containing all of the elements in this list in proper
	*         sequence
	* @see Arrays#asList(Object[])
	*/
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns a list iterator over the elements in this list (in proper
	* sequence).
	*
	* @return a list iterator over the elements in this list (in proper
	*         sequence)
	*/
	@:overload @:public override public function listIterator() : java.util.ListIterator<Dynamic>;
	
	/**
	* Returns a view of the portion of this list between the specified
	* <tt>fromIndex</tt>, inclusive, and <tt>toIndex</tt>, exclusive.  (If
	* <tt>fromIndex</tt> and <tt>toIndex</tt> are equal, the returned list is
	* empty.)  The returned list is backed by this list, so non-structural
	* changes in the returned list are reflected in this list, and vice-versa.
	* The returned list supports all of the optional list operations supported
	* by this list.<p>
	*
	* This method eliminates the need for explicit range operations (of
	* the sort that commonly exist for arrays).  Any operation that expects
	* a list can be used as a range operation by passing a subList view
	* instead of a whole list.  For example, the following idiom
	* removes a range of elements from a list:
	* <pre>
	*      list.subList(from, to).clear();
	* </pre>
	* Similar idioms may be constructed for <tt>indexOf</tt> and
	* <tt>lastIndexOf</tt>, and all of the algorithms in the
	* <tt>Collections</tt> class can be applied to a subList.<p>
	*
	* The semantics of the list returned by this method become undefined if
	* the backing list (i.e., this list) is <i>structurally modified</i> in
	* any way other than via the returned list.  (Structural modifications are
	* those that change the size of this list, or otherwise perturb it in such
	* a fashion that iterations in progress may yield incorrect results.)
	*
	* @param fromIndex low endpoint (inclusive) of the subList
	* @param toIndex high endpoint (exclusive) of the subList
	* @return a view of the specified range within this list
	* @throws IndexOutOfBoundsException for an illegal endpoint index value
	*         (<tt>fromIndex &lt; 0 || toIndex &gt; size ||
	*         fromIndex &gt; toIndex</tt>)
	*/
	@:overload @:public override public function subList(fromIndex : Int, toIndex : Int) : java.util.List<Dynamic>;
	
	/**
	* Returns <tt>true</tt> if this list contains no elements.
	*
	* @return <tt>true</tt> if this list contains no elements
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Inserts the specified element at the specified position in this list
	* (optional operation).  Shifts the element currently at that position
	* (if any) and any subsequent elements to the right (adds one to their
	* indices).
	*
	* @param index index at which the specified element is to be inserted
	* @param element element to be inserted
	* @throws UnsupportedOperationException if the <tt>add</tt> operation
	*         is not supported by this list
	* @throws ClassCastException if the class of the specified element
	*         prevents it from being added to this list
	* @throws NullPointerException if the specified element is null and
	*         this list does not permit null elements
	* @throws IllegalArgumentException if some property of the specified
	*         element prevents it from being added to this list
	* @throws IndexOutOfBoundsException if the index is out of range
	*         (<tt>index &lt; 0 || index &gt; size()</tt>)
	*/
	@:overload @:public override public function add(index : Int, element : Dynamic) : Void;
	
	/**
	* Removes the element at the specified position in this list (optional
	* operation).  Shifts any subsequent elements to the left (subtracts one
	* from their indices).  Returns the element that was removed from the
	* list.
	*
	* @param index the index of the element to be removed
	* @return the element previously at the specified position
	* @throws UnsupportedOperationException if the <tt>remove</tt> operation
	*         is not supported by this list
	* @throws IndexOutOfBoundsException if the index is out of range
	*         (<tt>index &lt; 0 || index &gt;= size()</tt>)
	*/
	@:overload @:public override public function remove(index : Int) : Dynamic;
	
	/**
	* Removes the first occurrence of the specified element from this list,
	* if it is present (optional operation).  If this list does not contain
	* the element, it is unchanged.  More formally, removes the element with
	* the lowest index <tt>i</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;o.equals(get(i)))</tt>
	* (if such an element exists).  Returns <tt>true</tt> if this list
	* contained the specified element (or equivalently, if this list changed
	* as a result of the call).
	*
	* @param o element to be removed from this list, if present
	* @return <tt>true</tt> if this list contained the specified element
	* @throws ClassCastException if the type of the specified element
	*         is incompatible with this list
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null and this
	*         list does not permit null elements
	* (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws UnsupportedOperationException if the <tt>remove</tt> operation
	*         is not supported by this list
	*/
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	/**
	* Removes all of the elements from this list (optional operation).
	* The list will be empty after this call returns.
	*
	* @throws UnsupportedOperationException if the <tt>clear</tt> operation
	*         is not supported by this list
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* Returns the index of the last occurrence of the specified element
	* in this list, or -1 if this list does not contain the element.
	* More formally, returns the highest index <tt>i</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;o.equals(get(i)))</tt>,
	* or -1 if there is no such index.
	*
	* @param o element to search for
	* @return the index of the last occurrence of the specified element in
	*         this list, or -1 if this list does not contain the element
	* @throws ClassCastException if the type of the specified element
	*         is incompatible with this list
	*         (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null and this
	*         list does not permit null elements
	*         (<a href="Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload @:public override public function lastIndexOf(o : Dynamic) : Int;
	
	/**
	* Returns an iterator over the elements in this list in proper sequence.
	*
	* @return an iterator over the elements in this list in proper sequence
	*/
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	/**
	* Checks if the <code>Object</code> <code>item</code> is a
	* member of this list.
	* @param item  <code>Object</code> whose presence in this list
	*   is to be tested.
	* @return  True if this list contains the <code>Object</code>
	*   <code>item</code>.
	*/
	@:overload @:public override public function contains(item : Dynamic) : Bool;
	
	/**
	* Returns the index of the first occurrence of the specified element
	* in this list, or -1 if this list does not contain the element.
	* More formally, returns the lowest index <tt>i</tt> such that
	* <tt>(o==null&nbsp;?&nbsp;get(i)==null&nbsp;:&nbsp;o.equals(get(i)))</tt>,
	* or -1 if there is no such index.
	*
	* @param o element to search for
	* @return the index of the first occurrence of the specified element in
	*         this list, or -1 if this list does not contain the element
	* @throws ClassCastException if the type of the specified element
	*         is incompatible with this list
	*         (<a href="Collection.html#optional-restrictions">optional</a>)
	* @throws NullPointerException if the specified element is null and this
	*         list does not permit null elements
	*         (<a href="Collection.html#optional-restrictions">optional</a>)
	*/
	@:overload @:public override public function indexOf(o : Dynamic) : Int;
	
	
}
