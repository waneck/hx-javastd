package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
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
extern class CoreDOMImplementationImpl implements org.w3c.dom.DOMImplementation implements org.w3c.dom.ls.DOMImplementationLS
{
	/** NON-DOM: Obtain and return the single shared object */
	@:overload @:public @:static public static function getDOMImplementation() : org.w3c.dom.DOMImplementation;
	
	/**
	* Test if the DOM implementation supports a specific "feature" --
	* currently meaning language and level thereof.
	*
	* @param feature The package name of the feature to test.
	* In Level 1, supported values are "HTML" and "XML" (case-insensitive).
	* At this writing, com.sun.org.apache.xerces.internal.dom supports only XML.
	*
	* @param version The version number of the feature being tested.
	* This is interpreted as "Version of the DOM API supported for the
	* specified Feature", and in Level 1 should be "1.0"
	*
	* @return true iff this implementation is compatable with the specified
	* feature and version.
	*/
	@:overload @:public public function hasFeature(feature : String, version : String) : Bool;
	
	/**
	* Introduced in DOM Level 2. <p>
	*
	* Creates an empty DocumentType node.
	*
	* @param qualifiedName The qualified name of the document type to be created.
	* @param publicID The document type public identifier.
	* @param systemID The document type system identifier.
	* @since WD-DOM-Level-2-19990923
	*/
	@:overload @:public public function createDocumentType(qualifiedName : String, publicID : String, systemID : String) : org.w3c.dom.DocumentType;
	
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
	@:overload @:public public function createDocument(namespaceURI : String, qualifiedName : String, doctype : org.w3c.dom.DocumentType) : org.w3c.dom.Document;
	
	/**
	* DOM Level 3 WD - Experimental.
	*/
	@:overload @:public public function getFeature(feature : String, version : String) : Dynamic;
	
	/**
	* DOM Level 3 LS CR - Experimental.
	* Create a new <code>LSParser</code>. The newly constructed parser may
	* then be configured by means of its <code>DOMConfiguration</code>
	* object, and used to parse documents by means of its <code>parse</code>
	*  method.
	* @param mode  The <code>mode</code> argument is either
	*   <code>MODE_SYNCHRONOUS</code> or <code>MODE_ASYNCHRONOUS</code>, if
	*   <code>mode</code> is <code>MODE_SYNCHRONOUS</code> then the
	*   <code>LSParser</code> that is created will operate in synchronous
	*   mode, if it's <code>MODE_ASYNCHRONOUS</code> then the
	*   <code>LSParser</code> that is created will operate in asynchronous
	*   mode.
	* @param schemaType  An absolute URI representing the type of the schema
	*   language used during the load of a <code>Document</code> using the
	*   newly created <code>LSParser</code>. Note that no lexical checking
	*   is done on the absolute URI. In order to create a
	*   <code>LSParser</code> for any kind of schema types (i.e. the
	*   LSParser will be free to use any schema found), use the value
	*   <code>null</code>.
	* <p ><b>Note:</b>    For W3C XML Schema [<a href='http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/'>XML Schema Part 1</a>]
	*   , applications must use the value
	*   <code>"http://www.w3.org/2001/XMLSchema"</code>. For XML DTD [<a href='http://www.w3.org/TR/2000/REC-xml-20001006'>XML 1.0</a>],
	*   applications must use the value
	*   <code>"http://www.w3.org/TR/REC-xml"</code>. Other Schema languages
	*   are outside the scope of the W3C and therefore should recommend an
	*   absolute URI in order to use this method.
	* @return  The newly created <code>LSParser</code> object. This
	*   <code>LSParser</code> is either synchronous or asynchronous
	*   depending on the value of the <code>mode</code> argument.
	* <p ><b>Note:</b>    By default, the newly created <code>LSParser</code>
	*    does not contain a <code>DOMErrorHandler</code>, i.e. the value of
	*   the "<a href='http://www.w3.org/TR/2003/WD-DOM-Level-3-Core-20030609/core.html#parameter-error-handler'>
	*   error-handler</a>" configuration parameter is <code>null</code>. However, implementations
	*   may provide a default error handler at creation time. In that case,
	*   the initial value of the <code>"error-handler"</code> configuration
	*   parameter on the new created <code>LSParser</code> contains a
	*   reference to the default error handler.
	* @exception DOMException
	*    NOT_SUPPORTED_ERR: Raised if the requested mode or schema type is
	*   not supported.
	*/
	@:overload @:public public function createLSParser(mode : java.StdTypes.Int16, schemaType : String) : org.w3c.dom.ls.LSParser;
	
	/**
	* DOM Level 3 LS CR - Experimental.
	* Create a new <code>LSSerializer</code> object.
	* @return The newly created <code>LSSerializer</code> object.
	* <p ><b>Note:</b>    By default, the newly created
	* <code>LSSerializer</code> has no <code>DOMErrorHandler</code>,
	* i.e. the value of the <code>"error-handler"</code> configuration
	* parameter is <code>null</code>. However, implementations may
	* provide a default error handler at creation time. In that case, the
	* initial value of the <code>"error-handler"</code> configuration
	* parameter on the new created <code>LSSerializer</code> contains a
	* reference to the default error handler.
	*/
	@:overload @:public public function createLSSerializer() : org.w3c.dom.ls.LSSerializer;
	
	/**
	* DOM Level 3 LS CR - Experimental.
	* Create a new empty input source.
	* @return  The newly created input object.
	*/
	@:overload @:public public function createLSInput() : org.w3c.dom.ls.LSInput;
	
	/** NON-DOM:  increment document/doctype counter */
	@:overload @:protected @:synchronized private function assignDocumentNumber() : Int;
	
	/** NON-DOM:  increment document/doctype counter */
	@:overload @:protected @:synchronized private function assignDocTypeNumber() : Int;
	
	/* DOM Level 3 LS CR - Experimental.
	*
	* Create a new empty output destination object where
	* <code>LSOutput.characterStream</code>,
	* <code>LSOutput.byteStream</code>, <code>LSOutput.systemId</code>,
	* <code>LSOutput.encoding</code> are null.

	* @return  The newly created output object.
	*/
	@:overload @:public public function createLSOutput() : org.w3c.dom.ls.LSOutput;
	
	
}
