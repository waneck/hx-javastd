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
* Describes a multi-value constraining facets: pattern and enumeration.
*/
extern interface XSMultiValueFacet extends com.sun.org.apache.xerces.internal.xs.XSObject
{
	/**
	* The name of the facet, i.e. <code>FACET_ENUMERATION</code> and
	* <code>FACET_PATTERN</code> (see <code>XSSimpleTypeDefinition</code>).
	*/
	@:overload public function getFacetKind() : java.StdTypes.Int16;
	
	/**
	* Values of this facet.
	*/
	@:overload public function getLexicalFacetValues() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/**
	* A sequence of [annotations] or an empty <code>XSObjectList</code>.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	
}