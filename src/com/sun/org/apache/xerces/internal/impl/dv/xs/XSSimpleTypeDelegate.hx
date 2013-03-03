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
	@:protected @:final private var type(default, null) : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
	@:overload @:public public function new(type : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType) : Void;
	
	@:overload @:public public function getWrappedXSSimpleType() : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
	@:overload @:public public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload @:public public function getBounded() : Bool;
	
	@:overload @:public public function getBuiltInKind() : java.StdTypes.Int16;
	
	@:overload @:public public function getDefinedFacets() : java.StdTypes.Int16;
	
	@:overload @:public public function getFacets() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload @:public public function getFinite() : Bool;
	
	@:overload @:public public function getFixedFacets() : java.StdTypes.Int16;
	
	@:overload @:public public function getItemType() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	@:overload @:public public function getLexicalEnumeration() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	@:overload @:public public function getLexicalFacetValue(facetName : java.StdTypes.Int16) : String;
	
	@:overload @:public public function getLexicalPattern() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	@:overload @:public public function getMemberTypes() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload @:public public function getMultiValueFacets() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload @:public public function getNumeric() : Bool;
	
	@:overload @:public public function getOrdered() : java.StdTypes.Int16;
	
	@:overload @:public public function getPrimitiveType() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	@:overload @:public public function getVariety() : java.StdTypes.Int16;
	
	@:overload @:public public function isDefinedFacet(facetName : java.StdTypes.Int16) : Bool;
	
	@:overload @:public public function isFixedFacet(facetName : java.StdTypes.Int16) : Bool;
	
	@:overload @:public public function derivedFrom(namespace : String, name : String, derivationMethod : java.StdTypes.Int16) : Bool;
	
	@:overload @:public public function derivedFromType(ancestorType : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, derivationMethod : java.StdTypes.Int16) : Bool;
	
	@:overload @:public public function getAnonymous() : Bool;
	
	@:overload @:public public function getBaseType() : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	@:overload @:public public function getFinal() : java.StdTypes.Int16;
	
	@:overload @:public public function getTypeCategory() : java.StdTypes.Int16;
	
	@:overload @:public public function isFinal(restriction : java.StdTypes.Int16) : Bool;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getNamespace() : String;
	
	@:overload @:public public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	@:overload @:public public function getType() : java.StdTypes.Int16;
	
	@:overload @:public public function applyFacets(facets : com.sun.org.apache.xerces.internal.impl.dv.XSFacets, presentFacet : java.StdTypes.Int16, fixedFacet : java.StdTypes.Int16, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Void;
	
	@:overload @:public public function getPrimitiveKind() : java.StdTypes.Int16;
	
	@:overload @:public public function getWhitespace() : java.StdTypes.Int16;
	
	@:overload @:public public function isEqual(value1 : Dynamic, value2 : Dynamic) : Bool;
	
	@:overload @:public public function isIDType() : Bool;
	
	@:overload @:public public function validate(context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Void;
	
	@:overload @:public public function validate(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Dynamic;
	
	@:overload @:public public function validate(content : Dynamic, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Dynamic;
	
	@:overload @:public public function toString() : String;
	
	
}
