package com.sun.org.apache.xerces.internal.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003,2004 The Apache Software Foundation.
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
/**
* This interface represents the Simple Type Definition schema component. This
* interface provides several query operations for facet components. Users
* can either retrieve the defined facets as XML Schema components, using
* the <code>facets</code> and the <code>multiValueFacets</code> attributes;
* or users can separately query a facet's properties using methods such as
* <code>getLexicalFacetValue</code>, <code>isFixedFacet</code>, etc.
*/
extern interface XSSimpleTypeDefinition extends com.sun.org.apache.xerces.internal.xs.XSTypeDefinition
{
	/**
	* [variety]: one of {atomic, list, union} or absent.
	*/
	@:overload @:public public function getVariety() : java.StdTypes.Int16;
	
	/**
	* If variety is <code>atomic</code> the primitive type definition (a
	* built-in primitive datatype definition or the simple ur-type
	* definition) is available, otherwise <code>null</code>.
	*/
	@:overload @:public public function getPrimitiveType() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/**
	* Returns the closest built-in type category this type represents or
	* derived from. For example, if this simple type is a built-in derived
	* type integer the <code>INTEGER_DV</code> is returned.
	*/
	@:overload @:public public function getBuiltInKind() : java.StdTypes.Int16;
	
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
	* [facets]: all facets defined on this type. The value is a bit
	* combination of FACET_XXX constants of all defined facets.
	*/
	@:overload @:public public function getDefinedFacets() : java.StdTypes.Int16;
	
	/**
	* Convenience method. [Facets]: check whether a facet is defined on this
	* type.
	* @param facetName  The name of the facet.
	* @return  True if the facet is defined, false otherwise.
	*/
	@:overload @:public public function isDefinedFacet(facetName : java.StdTypes.Int16) : Bool;
	
	/**
	* [facets]: all defined facets for this type which are fixed.
	*/
	@:overload @:public public function getFixedFacets() : java.StdTypes.Int16;
	
	/**
	* Convenience method. [Facets]: check whether a facet is defined and
	* fixed on this type.
	* @param facetName  The name of the facet.
	* @return  True if the facet is fixed, false otherwise.
	*/
	@:overload @:public public function isFixedFacet(facetName : java.StdTypes.Int16) : Bool;
	
	/**
	* Convenience method. Returns a value of a single constraining facet for
	* this simple type definition. This method must not be used to retrieve
	* values for <code>enumeration</code> and <code>pattern</code> facets.
	* @param facetName The name of the facet, i.e.
	*   <code>FACET_LENGTH, FACET_TOTALDIGITS</code>.
	*   To retrieve the value for a pattern or
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
	* A list of pattern values if it exists, otherwise an empty
	* <code>StringList</code>.
	*/
	@:overload @:public public function getLexicalPattern() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/**
	*  Fundamental Facet: ordered.
	*/
	@:overload @:public public function getOrdered() : java.StdTypes.Int16;
	
	/**
	* Fundamental Facet: cardinality.
	*/
	@:overload @:public public function getFinite() : Bool;
	
	/**
	* Fundamental Facet: bounded.
	*/
	@:overload @:public public function getBounded() : Bool;
	
	/**
	* Fundamental Facet: numeric.
	*/
	@:overload @:public public function getNumeric() : Bool;
	
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
	
	/**
	* A sequence of [annotations] or an empty <code>XSObjectList</code>.
	*/
	@:overload @:public public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	
}
