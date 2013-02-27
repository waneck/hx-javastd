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
* The interface represents the namespace schema information information item.
* Each namespace schema information information item corresponds to an XML
* Schema with a unique namespace name.
*/
extern interface XSNamespaceItem
{
	/**
	* [schema namespace]: A namespace name or <code>null</code> if absent.
	*/
	@:overload public function getSchemaNamespace() : String;
	
	/**
	* [schema components]: a list of top-level components, i.e. element
	* declarations, attribute declarations, etc.
	* @param objectType The type of the declaration, i.e.
	*   <code>ELEMENT_DECLARATION</code>. Note that
	*   <code>XSTypeDefinition.SIMPLE_TYPE</code> and
	*   <code>XSTypeDefinition.COMPLEX_TYPE</code> can also be used as the
	*   <code>objectType</code> to retrieve only complex types or simple
	*   types, instead of all types.
	* @return  A list of top-level definition of the specified type in
	*   <code>objectType</code> or an empty <code>XSNamedMap</code> if no
	*   such definitions exist.
	*/
	@:overload public function getComponents(objectType : java.StdTypes.Int16) : com.sun.org.apache.xerces.internal.xs.XSNamedMap;
	
	/**
	*  [annotations]: a set of annotations if it exists, otherwise an empty
	* <code>XSObjectList</code>.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* Convenience method. Returns a top-level element declaration.
	* @param name The name of the declaration.
	* @return A top-level element declaration or <code>null</code> if such a
	*   declaration does not exist.
	*/
	@:overload public function getElementDeclaration(name : String) : com.sun.org.apache.xerces.internal.xs.XSElementDeclaration;
	
	/**
	* Convenience method. Returns a top-level attribute declaration.
	* @param name The name of the declaration.
	* @return A top-level attribute declaration or <code>null</code> if such
	*   a declaration does not exist.
	*/
	@:overload public function getAttributeDeclaration(name : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeDeclaration;
	
	/**
	* Convenience method. Returns a top-level simple or complex type
	* definition.
	* @param name The name of the definition.
	* @return An <code>XSTypeDefinition</code> or <code>null</code> if such
	*   a definition does not exist.
	*/
	@:overload public function getTypeDefinition(name : String) : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/**
	* Convenience method. Returns a top-level attribute group definition.
	* @param name The name of the definition.
	* @return A top-level attribute group definition or <code>null</code> if
	*   such a definition does not exist.
	*/
	@:overload public function getAttributeGroup(name : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeGroupDefinition;
	
	/**
	* Convenience method. Returns a top-level model group definition.
	* @param name The name of the definition.
	* @return A top-level model group definition definition or
	*   <code>null</code> if such a definition does not exist.
	*/
	@:overload public function getModelGroupDefinition(name : String) : com.sun.org.apache.xerces.internal.xs.XSModelGroupDefinition;
	
	/**
	* Convenience method. Returns a top-level notation declaration.
	* @param name The name of the declaration.
	* @return A top-level notation declaration or <code>null</code> if such
	*   a declaration does not exist.
	*/
	@:overload public function getNotationDeclaration(name : String) : com.sun.org.apache.xerces.internal.xs.XSNotationDeclaration;
	
	/**
	* [document location] - a list of location URIs for the documents that
	* contributed to the <code>XSModel</code>.
	*/
	@:overload public function getDocumentLocations() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	
}
