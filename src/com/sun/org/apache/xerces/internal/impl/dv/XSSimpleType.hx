package com.sun.org.apache.xerces.internal.impl.dv;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern interface XSSimpleType extends com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition
{
	/**
	* return an ID representing the built-in primitive base type.
	* REVISIT: This method is (currently) for internal use only.
	*          the constants returned from this method are not finalized yet.
	*          the names and values might change in the further.
	*
	* @return   an ID representing the built-in primitive base type
	*/
	@:overload public function getPrimitiveKind() : java.StdTypes.Int16;
	
	/**
	* validate a given string against this simple type.
	*
	* @param content       the string value that needs to be validated
	* @param context       the validation context
	* @param validatedInfo used to store validation result
	*
	* @return              the actual value (QName, Boolean) of the string value
	*/
	@:overload public function validate(content : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Dynamic;
	
	/**
	* validate a given string value, represented by content.toString().
	* note that if content is a StringBuffer, for performance reasons,
	* it's possible that the content of the string buffer is modified.
	*
	* @param content       the string value that needs to be validated
	* @param context       the validation context
	* @param validatedInfo used to store validation result
	*
	* @return              the actual value (QName, Boolean) of the string value
	*/
	@:overload public function validate(content : Dynamic, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Dynamic;
	
	/**
	* Validate an actual value against this simple type.
	*
	* @param context       the validation context
	* @param validatedInfo used to provide the actual value and member types
	* @exception InvalidDatatypeValueException  exception for invalid values.
	*/
	@:overload public function validate(context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, validatedInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Void;
	
	/**
	* If this type is created from restriction, then some facets can be applied
	* to the simple type. <code>XSFacets</code> is used to pass the value of
	* different facets.
	*
	* @param facets        the value of all the facets
	* @param presentFacet  bit combination value of the costraining facet
	*                      constants which are present.
	* @param fixedFacet    bit combination value of the costraining facet
	*                      constants which are fixed.
	* @param context       the validation context
	* @exception InvalidDatatypeFacetException  exception for invalid facet values.
	*/
	@:overload public function applyFacets(facets : com.sun.org.apache.xerces.internal.impl.dv.XSFacets, presentFacet : java.StdTypes.Int16, fixedFacet : java.StdTypes.Int16, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext) : Void;
	
	/**
	* Check whether two actual values are equal.
	*
	* @param value1  the first value
	* @param value2  the second value
	* @return        true if the two value are equal
	*/
	@:overload public function isEqual(value1 : Dynamic, value2 : Dynamic) : Bool;
	
	/**
	* Check whether this type is or is derived from ID.
	* REVISIT: this method makes ID special, which is not a good design.
	*          but since ID is not a primitive, there doesn't seem to be a
	*          clean way of doing it except to define special method like this.
	*
	* @return  whether this simple type is or is derived from ID.
	*/
	@:overload public function isIDType() : Bool;
	
	/**
	* Return the whitespace corresponding to this datatype.
	*
	* @return valid values are WS_PRESERVE, WS_REPLACE, WS_COLLAPSE.
	* @exception DatatypeException
	*                   union datatypes don't have whitespace facet associated with them
	*/
	@:overload public function getWhitespace() : java.StdTypes.Int16;
	
	
}
