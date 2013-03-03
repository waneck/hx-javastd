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
* This interface represents an XML Schema.
*/
extern interface XSModel
{
	/**
	* Convenience method. Returns a list of all namespaces that belong to
	* this schema. The value <code>null</code> is not a valid namespace
	* name, but if there are components that do not have a target namespace
	* , <code>null</code> is included in this list.
	*/
	@:overload @:public public function getNamespaces() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/**
	* A set of namespace schema information information items (of type
	* <code>XSNamespaceItem</code>), one for each namespace name which
	* appears as the target namespace of any schema component in the schema
	* used for that assessment, and one for absent if any schema component
	* in the schema had no target namespace. For more information see
	* schema information.
	*/
	@:overload @:public public function getNamespaceItems() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItemList;
	
	/**
	* Returns a list of top-level components, i.e. element declarations,
	* attribute declarations, etc.
	* @param objectType The type of the declaration, i.e.
	*   <code>ELEMENT_DECLARATION</code>. Note that
	*   <code>XSTypeDefinition.SIMPLE_TYPE</code> and
	*   <code>XSTypeDefinition.COMPLEX_TYPE</code> can also be used as the
	*   <code>objectType</code> to retrieve only complex types or simple
	*   types, instead of all types.
	* @return  A list of top-level definitions of the specified type in
	*   <code>objectType</code> or an empty <code>XSNamedMap</code> if no
	*   such definitions exist.
	*/
	@:overload @:public public function getComponents(objectType : java.StdTypes.Int16) : com.sun.org.apache.xerces.internal.xs.XSNamedMap;
	
	/**
	* Convenience method. Returns a list of top-level component declarations
	* that are defined within the specified namespace, i.e. element
	* declarations, attribute declarations, etc.
	* @param objectType The type of the declaration, i.e.
	*   <code>ELEMENT_DECLARATION</code>.
	* @param namespace The namespace to which the declaration belongs or
	*   <code>null</code> (for components with no target namespace).
	* @return  A list of top-level definitions of the specified type in
	*   <code>objectType</code> and defined in the specified
	*   <code>namespace</code> or an empty <code>XSNamedMap</code>.
	*/
	@:overload @:public public function getComponentsByNamespace(objectType : java.StdTypes.Int16, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSNamedMap;
	
	/**
	*  [annotations]: a set of annotations if it exists, otherwise an empty
	* <code>XSObjectList</code>.
	*/
	@:overload @:public public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* Convenience method. Returns a top-level element declaration.
	* @param name The name of the declaration.
	* @param namespace The namespace of the declaration, otherwise
	*   <code>null</code>.
	* @return A top-level element declaration or <code>null</code> if such a
	*   declaration does not exist.
	*/
	@:overload @:public public function getElementDeclaration(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSElementDeclaration;
	
	/**
	* Convenience method. Returns a top-level attribute declaration.
	* @param name The name of the declaration.
	* @param namespace The namespace of the declaration, otherwise
	*   <code>null</code>.
	* @return A top-level attribute declaration or <code>null</code> if such
	*   a declaration does not exist.
	*/
	@:overload @:public public function getAttributeDeclaration(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeDeclaration;
	
	/**
	* Convenience method. Returns a top-level simple or complex type
	* definition.
	* @param name The name of the definition.
	* @param namespace The namespace of the declaration, otherwise
	*   <code>null</code>.
	* @return An <code>XSTypeDefinition</code> or <code>null</code> if such
	*   a definition does not exist.
	*/
	@:overload @:public public function getTypeDefinition(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/**
	* Convenience method. Returns a top-level attribute group definition.
	* @param name The name of the definition.
	* @param namespace The namespace of the definition, otherwise
	*   <code>null</code>.
	* @return A top-level attribute group definition or <code>null</code> if
	*   such a definition does not exist.
	*/
	@:overload @:public public function getAttributeGroup(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeGroupDefinition;
	
	/**
	* Convenience method. Returns a top-level model group definition.
	* @param name The name of the definition.
	* @param namespace The namespace of the definition, otherwise
	*   <code>null</code>.
	* @return A top-level model group definition or <code>null</code> if
	*   such a definition does not exist.
	*/
	@:overload @:public public function getModelGroupDefinition(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSModelGroupDefinition;
	
	/**
	* Convenience method. Returns a top-level notation declaration.
	* @param name The name of the declaration.
	* @param namespace The namespace of the declaration, otherwise
	*   <code>null</code>.
	* @return A top-level notation declaration or <code>null</code> if such
	*   a declaration does not exist.
	*/
	@:overload @:public public function getNotationDeclaration(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSNotationDeclaration;
	
	/**
	* Convenience method. Returns a list containing the members of the
	* substitution group for the given <code>XSElementDeclaration</code>
	* or an empty <code>XSObjectList</code> if the substitution group
	* contains no members.
	* @param head The substitution group head.
	* @return A list containing the members of the substitution group
	*  for the given <code>XSElementDeclaration</code> or an empty
	*  <code>XSObjectList</code> if the substitution group contains
	*  no members.
	*/
	@:overload @:public public function getSubstitutionGroup(head : com.sun.org.apache.xerces.internal.xs.XSElementDeclaration) : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	
}
