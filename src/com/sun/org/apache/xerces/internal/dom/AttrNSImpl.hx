package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
extern class AttrNSImpl extends com.sun.org.apache.xerces.internal.dom.AttrImpl
{
	/** DOM2: Namespace URI. */
	private var namespaceURI : String;
	
	/** DOM2: localName. */
	private var localName : String;
	
	/*
	* Default constructor
	*/
	@:overload public function new() : Void;
	
	/**
	* DOM2: Constructor for Namespace implementation.
	*/
	@:overload private function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, namespaceURI : String, qualifiedName : String) : Void;
	
	@:overload public function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, namespaceURI : String, qualifiedName : String, localName : String) : Void;
	
	@:overload private function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, value : String) : Void;
	
	/**
	* NON-DOM: resets this node and sets specified values for the node
	*
	* @param ownerDocument
	* @param namespaceURI
	* @param qualifiedName
	* @param localName
	*/
	@:overload public function setValues(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, namespaceURI : String, qualifiedName : String, localName : String) : Void;
	
	/**
	* Introduced in DOM Level 2. <p>
	*
	* The namespace URI of this node, or null if it is unspecified.<p>
	*
	* This is not a computed value that is the result of a namespace lookup
	* based on an examination of the namespace declarations in scope. It is
	* merely the namespace URI given at creation time.<p>
	*
	* For nodes created with a DOM Level 1 method, such as createElement
	* from the Document interface, this is null.
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload override public function getNamespaceURI() : String;
	
	/**
	* Introduced in DOM Level 2. <p>
	*
	* The namespace prefix of this node, or null if it is unspecified. <p>
	*
	* For nodes created with a DOM Level 1 method, such as createElement
	* from the Document interface, this is null. <p>
	*
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload override public function getPrefix() : String;
	
	/**
	* Introduced in DOM Level 2. <p>
	*
	* Note that setting this attribute changes the nodeName attribute, which
	* holds the qualified name, as well as the tagName and name attributes of
	* the Element and Attr interfaces, when applicable.<p>
	*
	* @param prefix The namespace prefix of this node, or null(empty string) if it is unspecified.
	*
	* @exception INVALID_CHARACTER_ERR
	*                   Raised if the specified
	*                   prefix contains an invalid character.
	* @exception DOMException
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload override public function setPrefix(prefix : String) : Void;
	
	/**
	* Introduced in DOM Level 2. <p>
	*
	* Returns the local part of the qualified name of this node.
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload override public function getLocalName() : String;
	
	/**
	* @see org.w3c.dom.TypeInfo#getTypeName()
	*/
	@:overload override public function getTypeName() : String;
	
	/**
	* Introduced in DOM Level 3. <p>
	* Checks if a type is derived from another by restriction. See:
	* http://www.w3.org/TR/DOM-Level-3-Core/core.html#TypeInfo-isDerivedFrom
	*
	* @param ancestorNS
	*        The namspace of the ancestor type declaration
	* @param ancestorName
	*        The name of the ancestor type declaration
	* @param type
	*        The reference type definition
	*
	* @return boolean True if the type is derived by restriciton for the
	*         reference type
	*/
	@:overload override public function isDerivedFrom(typeNamespaceArg : String, typeNameArg : String, derivationMethod : Int) : Bool;
	
	/**
	* @see org.w3c.dom.TypeInfo#getTypeNamespace()
	*/
	@:overload override public function getTypeNamespace() : String;
	
	
}
