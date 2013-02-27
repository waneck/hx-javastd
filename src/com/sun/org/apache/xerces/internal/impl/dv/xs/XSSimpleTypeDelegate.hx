package com.sun.org.apache.xerces.internal.impl.dv.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Licensed to the Apache Software Foundation (ASF) under one or more
* contributor license agreements.  See the NOTICE file distributed with
* this work for additional information regarding copyright ownership.
* The ASF licenses this file to You under the Apache License, Version 2.0
* (the "License"); you may not use this file except in compliance with
* the License.  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XSSimpleTypeDelegate implements com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType
{
	/**
	* Base class for XSSimpleType wrapper implementations.
	*
	* @xerces.internal
	*
	* @version $Id: XSSimpleTypeDelegate.java,v 1.3 2010-11-01 04:39:47 joehw Exp $
	*/
	private var type(default, null) : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
	@:overload public function new(type : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType) : Void;
	
	@:overload public function getWrappedXSSimpleType() : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload public function getBounded() : Bool;
	
	@:overload public function getBuiltInKind() : java.StdTypes.Int16;
	
	@:overload public function getDefinedFacets() : java.StdTypes.Int16;
	
	@:overload public function getFacets() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload public function getFinite() : Bool;
	
	@:overload public function getFixedFacets() : java.StdTypes.Int16;
	
	@:overload public function getItemType() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	@:overload public function getLexicalEnumeration() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	@:overload public function getLexicalFacetValue(facetName : java.StdTypes.Int16) : String;
	
	@:overload public function getLexicalPattern() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	@:overload public function getMemberTypes() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload public function getMultiValueFacets() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload public function getNumeric() : Bool;
	
	@:overload public function getOrdered() : java.StdTypes.Int16;
	
	@:overload public function getPrimitiveType() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	@:overload public function getVariety() : java.StdTypes.Int16;
	
	@:overload public function isDefinedFacet(facetName : java.StdTypes.Int16) : Bool;
	
	@:overload public function isFixedFacet(facetName : java.StdTypes.Int16) : Bool;
	
	@:overload public function derivedFrom(namespace : String, name : String, derivationMethod : java.StdTypes.Int16) : Bool;
	
	@:overload public function derivedFromType(ancestorType : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, derivationMethod : java.StdTypes.Int16) : Bool;
	
	@:overload public function getAnonymous() : Bool;
	
	@:overload public function getBaseType() : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	@:overload public function getFinal() : java.StdTypes.Int16;
	
	@:overload public function getTypeCategory() : java.StdTypes.Int16;
	
	@:overload public function isFinal(restriction : java.StdTypes.Int16) : Bool;
	
	@:overload public function getName() : String;
	
	@:overload public function getNamespace() : String;
	
	@:overload public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	@:overload public function getType() : java.StdTypes.Int16;
	
	@:overload public function applyFacets(facets : com.sun.org.apache.xerces.internal.impl.dv.XSFacets, presentFacet : java.StdTypes.Int16, fixedFacet : java.StdTypes.Int16, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Void;
	
	@:overload public function getPrimitiveKind() : java.StdTypes.Int16;
	
	@:overload public function getWhitespace() : java.StdTypes.Int16;
	
	@:overload public function isEqual(value1 : Dynamic, value2 : Dynamic) : Bool;
	
	@:overload public function isIDType() : Bool;
	
	@:overload public function validate(context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Void;
	
	@:overload public function validate(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Dynamic;
	
	@:overload public function validate(content : Dynamic, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
