package com.sun.org.apache.xerces.internal.jaxp;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2005 The Apache Software Foundation.
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
extern class DocumentBuilderImpl extends javax.xml.parsers.DocumentBuilder implements com.sun.org.apache.xerces.internal.jaxp.JAXPConstants
{
	/**
	* Non-preferred: use the getDOMImplementation() method instead of this
	* one to get a DOM Level 2 DOMImplementation object and then use DOM
	* Level 2 methods to create a DOM Document object.
	*/
	@:overload public function newDocument() : org.w3c.dom.Document;
	
	@:overload public function getDOMImplementation() : org.w3c.dom.DOMImplementation;
	
	@:overload public function parse(is : org.xml.sax.InputSource) : org.w3c.dom.Document;
	
	@:overload public function isNamespaceAware() : Bool;
	
	@:overload public function isValidating() : Bool;
	
	/**
	* Gets the XInclude processing mode for this parser
	* @return the state of XInclude processing mode
	*/
	@:overload public function isXIncludeAware() : Bool;
	
	@:overload public function setEntityResolver(er : org.xml.sax.EntityResolver) : Void;
	
	@:overload public function setErrorHandler(eh : org.xml.sax.ErrorHandler) : Void;
	
	@:overload public function getSchema() : javax.xml.validation.Schema;
	
	@:overload public function reset() : Void;
	
	
}
