package com.sun.org.apache.xerces.internal.jaxp.validation;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
@:internal extern interface DOMDocumentHandler extends com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
{
	/**
	* <p>Sets the <code>DOMResult</code> object which
	* receives the constructed DOM nodes.</p>
	*
	* @param result the object which receives the constructed DOM nodes
	*/
	@:overload @:public public function setDOMResult(result : javax.xml.transform.dom.DOMResult) : Void;
	
	/**
	* A document type declaration.
	*
	* @param node a DocumentType node
	*
	* @exception XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function doctypeDecl(node : org.w3c.dom.DocumentType) : Void;
	
	@:overload @:public public function characters(node : org.w3c.dom.Text) : Void;
	
	@:overload @:public public function cdata(node : org.w3c.dom.CDATASection) : Void;
	
	/**
	* A comment.
	*
	* @param node a Comment node
	*
	* @exception XNIException Thrown by application to signal an error.
	*/
	@:overload @:public public function comment(node : org.w3c.dom.Comment) : Void;
	
	/**
	* A processing instruction. Processing instructions consist of a
	* target name and, optionally, text data. The data is only meaningful
	* to the application.
	* <p>
	* Typically, a processing instruction's data will contain a series
	* of pseudo-attributes. These pseudo-attributes follow the form of
	* element attributes but are <strong>not</strong> parsed or presented
	* to the application as anything other than text. The application is
	* responsible for parsing the data.
	*
	* @param node a ProcessingInstruction node
	*
	* @exception XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function processingInstruction(node : org.w3c.dom.ProcessingInstruction) : Void;
	
	@:overload @:public public function setIgnoringCharacters(ignore : Bool) : Void;
	
	
}
