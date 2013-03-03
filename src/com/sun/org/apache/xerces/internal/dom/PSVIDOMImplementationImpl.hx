package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern class PSVIDOMImplementationImpl extends com.sun.org.apache.xerces.internal.dom.CoreDOMImplementationImpl
{
	/** NON-DOM: Obtain and return the single shared object */
	@:overload @:public @:static public static function getDOMImplementation() : org.w3c.dom.DOMImplementation;
	
	/**
	* Test if the DOM implementation supports a specific "feature" --
	* currently meaning language and level thereof.
	*
	* @param feature      The package name of the feature to test.
	* In Level 1, supported values are "HTML" and "XML" (case-insensitive).
	* At this writing, com.sun.org.apache.xerces.internal.dom supports only XML.
	*
	* @param version      The version number of the feature being tested.
	* This is interpreted as "Version of the DOM API supported for the
	* specified Feature", and in Level 1 should be "1.0"
	*
	* @return    true iff this implementation is compatable with the specified
	* feature and version.
	*/
	@:overload @:public override public function hasFeature(feature : String, version : String) : Bool;
	
	/**
	* Introduced in DOM Level 2. <p>
	*
	* Creates an XML Document object of the specified type with its document
	* element.
	*
	* @param namespaceURI     The namespace URI of the document
	*                         element to create, or null.
	* @param qualifiedName    The qualified name of the document
	*                         element to create.
	* @param doctype          The type of document to be created or null.<p>
	*
	*                         When doctype is not null, its
	*                         Node.ownerDocument attribute is set to
	*                         the document being created.
	* @return Document        A new Document object.
	* @throws DOMException    WRONG_DOCUMENT_ERR: Raised if doctype has
	*                         already been used with a different document.
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload @:public override public function createDocument(namespaceURI : String, qualifiedName : String, doctype : org.w3c.dom.DocumentType) : org.w3c.dom.Document;
	
	
}
