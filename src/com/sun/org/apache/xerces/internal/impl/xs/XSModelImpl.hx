package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2005 The Apache Software Foundation.
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
extern class XSModelImpl extends java.util.AbstractList<Dynamic> implements com.sun.org.apache.xerces.internal.xs.XSModel implements com.sun.org.apache.xerces.internal.xs.XSNamespaceItemList
{
	/**
	* Construct an XSModelImpl, by storing some grammars and grammars imported
	* by them to this object.
	*
	* @param grammars   the array of schema grammars
	*/
	@:overload @:public public function new(grammars : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar>) : Void;
	
	@:overload @:public public function new(grammars : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar>, s4sVersion : java.StdTypes.Int16) : Void;
	
	/**
	* Convenience method. Returns a list of all namespaces that belong to
	* this schema.
	* @return A list of all namespaces that belong to this schema or
	*   <code>null</code> if all components don't have a targetNamespace.
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
	@:overload @:public @:synchronized public function getComponents(objectType : java.StdTypes.Int16) : com.sun.org.apache.xerces.internal.xs.XSNamedMap;
	
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
	@:overload @:public @:synchronized public function getComponentsByNamespace(objectType : java.StdTypes.Int16, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSNamedMap;
	
	/**
	* Convenience method. Returns a top-level simple or complex type
	* definition.
	* @param name The name of the definition.
	* @param namespace The namespace of the definition, otherwise null.
	* @return An <code>XSTypeDefinition</code> or null if such definition
	*   does not exist.
	*/
	@:overload @:public public function getTypeDefinition(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/**
	* Convenience method. Returns a top-level simple or complex type
	* definition.
	* @param name The name of the definition.
	* @param namespace The namespace of the definition, otherwise null.
	* @param loc The schema location where the component was defined
	* @return An <code>XSTypeDefinition</code> or null if such definition
	*   does not exist.
	*/
	@:overload @:public public function getTypeDefinition(name : String, namespace : String, loc : String) : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/**
	* Convenience method. Returns a top-level attribute declaration.
	* @param name The name of the declaration.
	* @param namespace The namespace of the definition, otherwise null.
	* @return A top-level attribute declaration or null if such declaration
	*   does not exist.
	*/
	@:overload @:public public function getAttributeDeclaration(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeDeclaration;
	
	/**
	* Convenience method. Returns a top-level attribute declaration.
	* @param name The name of the declaration.
	* @param namespace The namespace of the definition, otherwise null.
	* @param loc The schema location where the component was defined
	* @return A top-level attribute declaration or null if such declaration
	*   does not exist.
	*/
	@:overload @:public public function getAttributeDeclaration(name : String, namespace : String, loc : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeDeclaration;
	
	/**
	* Convenience method. Returns a top-level element declaration.
	* @param name The name of the declaration.
	* @param namespace The namespace of the definition, otherwise null.
	* @return A top-level element declaration or null if such declaration
	*   does not exist.
	*/
	@:overload @:public public function getElementDeclaration(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSElementDeclaration;
	
	/**
	* Convenience method. Returns a top-level element declaration.
	* @param name The name of the declaration.
	* @param namespace The namespace of the definition, otherwise null.
	* @param loc The schema location where the component was defined
	* @return A top-level element declaration or null if such declaration
	*   does not exist.
	*/
	@:overload @:public public function getElementDeclaration(name : String, namespace : String, loc : String) : com.sun.org.apache.xerces.internal.xs.XSElementDeclaration;
	
	/**
	* Convenience method. Returns a top-level attribute group definition.
	* @param name The name of the definition.
	* @param namespace The namespace of the definition, otherwise null.
	* @return A top-level attribute group definition or null if such
	*   definition does not exist.
	*/
	@:overload @:public public function getAttributeGroup(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeGroupDefinition;
	
	/**
	* Convenience method. Returns a top-level attribute group definition.
	* @param name The name of the definition.
	* @param namespace The namespace of the definition, otherwise null.
	* @param loc The schema location where the component was defined
	* @return A top-level attribute group definition or null if such
	*   definition does not exist.
	*/
	@:overload @:public public function getAttributeGroup(name : String, namespace : String, loc : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeGroupDefinition;
	
	/**
	* Convenience method. Returns a top-level model group definition.
	*
	* @param name      The name of the definition.
	* @param namespace The namespace of the definition, otherwise null.
	* @return A top-level model group definition definition or null if such
	*         definition does not exist.
	*/
	@:overload @:public public function getModelGroupDefinition(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSModelGroupDefinition;
	
	/**
	* Convenience method. Returns a top-level model group definition.
	*
	* @param name      The name of the definition.
	* @param namespace The namespace of the definition, otherwise null.
	* @param loc The schema location where the component was defined
	* @return A top-level model group definition definition or null if such
	*         definition does not exist.
	*/
	@:overload @:public public function getModelGroupDefinition(name : String, namespace : String, loc : String) : com.sun.org.apache.xerces.internal.xs.XSModelGroupDefinition;
	
	/**
	* @see org.apache.xerces.xs.XSModel#getNotationDeclaration(String, String)
	*/
	@:overload @:public public function getNotationDeclaration(name : String, namespace : String) : com.sun.org.apache.xerces.internal.xs.XSNotationDeclaration;
	
	@:overload @:public public function getNotationDeclaration(name : String, namespace : String, loc : String) : com.sun.org.apache.xerces.internal.xs.XSNotationDeclaration;
	
	/**
	*  [annotations]: a set of annotations if it exists, otherwise an empty
	* <code>XSObjectList</code>.
	*/
	@:overload @:public @:synchronized public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* REVISIT: to expose identity constraints from XSModel.
	* For now, we only expose whether there are any IDCs.
	* We also need to add these methods to the public
	* XSModel interface.
	*/
	@:overload @:public public function hasIDConstraints() : Bool;
	
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
	
	/**
	* The number of <code>XSNamespaceItem</code>s in the list. The range of
	* valid child object indices is 0 to <code>length-1</code> inclusive.
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Returns the <code>index</code>th item in the collection or
	* <code>null</code> if <code>index</code> is greater than or equal to
	* the number of objects in the list. The index starts at 0.
	* @param index  index into the collection.
	* @return  The <code>XSNamespaceItem</code> at the <code>index</code>th
	*   position in the <code>XSNamespaceItemList</code>, or
	*   <code>null</code> if the index specified is not valid.
	*/
	@:overload @:public public function item(index : Int) : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	@:overload @:public override public function get(index : Int) : Dynamic;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function listIterator() : java.util.ListIterator<Dynamic>;
	
	@:overload @:public override public function listIterator(index : Int) : java.util.ListIterator<Dynamic>;
	
	@:overload @:public override public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload @:public override public function toArray(a : java.NativeArray<Dynamic>) : java.NativeArray<Dynamic>;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xs$XSModelImpl$XSNamespaceItemListIterator') @:internal extern class XSModelImpl_XSNamespaceItemListIterator implements java.util.ListIterator<Dynamic>
{
	@:overload @:public public function new(index : Int) : Void;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function hasPrevious() : Bool;
	
	@:overload @:public public function previous() : Dynamic;
	
	@:overload @:public public function nextIndex() : Int;
	
	@:overload @:public public function previousIndex() : Int;
	
	@:overload @:public public function remove() : Void;
	
	@:overload @:public public function set(o : Dynamic) : Void;
	
	@:overload @:public public function add(o : Dynamic) : Void;
	
	
}
