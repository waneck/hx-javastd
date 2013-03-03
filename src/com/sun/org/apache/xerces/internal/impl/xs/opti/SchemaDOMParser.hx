package com.sun.org.apache.xerces.internal.impl.xs.opti;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
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
extern class SchemaDOMParser extends com.sun.org.apache.xerces.internal.impl.xs.opti.DefaultXMLDocumentHandler
{
	/** Property identifier: error reporter. */
	@:public @:static @:final public static var ERROR_REPORTER(default, null) : String;
	
	/** Feature identifier: generate synthetic annotations. */
	@:public @:static @:final public static var GENERATE_SYNTHETIC_ANNOTATION(default, null) : String;
	
	@:protected private var fLocator : com.sun.org.apache.xerces.internal.xni.XMLLocator;
	
	@:protected private var fNamespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext;
	
	/** Default constructor. */
	@:overload @:public public function new(config : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration) : Void;
	
	@:overload @:public override public function startDocument(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, encoding : String, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the document.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A comment.
	*
	* @param text   The text in the comment.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by application to signal an error.
	*/
	@:overload @:public override public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @param target The target.
	* @param data   The data or null if none specified.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload @:public override public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Character content.
	*
	* @param text   The content.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload @:public override public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of an element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs       Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload @:public override public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An empty element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs       Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload @:public override public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an element.
	*
	* @param element The name of the element.
	* @param augs    Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Ignorable whitespace. For this method to be called, the document
	* source must have some way of determining that the text containing
	* only whitespace characters should be considered ignorable. For
	* example, the validator can determine if a length of whitespace
	* characters in the document are ignorable based on the element
	* content model.
	*
	* @param text   The ignorable whitespace.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload @:public override public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a CDATA section.
	*
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload @:public override public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a CDATA section.
	*
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Returns the DOM document object.
	*/
	@:overload @:public public function getDocument() : org.w3c.dom.Document;
	
	/**
	* Delegates to SchemaParsingConfig.setFeature
	* @param featureId
	* @param state
	*/
	@:overload @:public public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Delegates to SchemaParsingConfig.getFeature
	* @param featureId
	* @return boolean
	*/
	@:overload @:public public function getFeature(featureId : String) : Bool;
	
	/**
	* Delegates to SchemaParsingConfig.setProperty.
	* @param propertyId
	* @param value
	*/
	@:overload @:public public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Delegates to SchemaParsingConfig.getProperty.
	* @param propertyId
	* @return Object
	*/
	@:overload @:public public function getProperty(propertyId : String) : Dynamic;
	
	/**
	* Delegates to SchemaParsingConfig.setEntityResolver.
	* @param er XMLEntityResolver
	*/
	@:overload @:public public function setEntityResolver(er : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver) : Void;
	
	/**
	* Delegates parsing to SchemaParsingConfig
	*
	* @param inputSource
	* @throws IOException
	*/
	@:overload @:public public function parse(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* Reset SchemaParsingConfig
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* ResetNodePool on SchemaParsingConfig
	*/
	@:overload @:public public function resetNodePool() : Void;
	
	
}
/**
* A simple boolean based stack.
*
* @xerces.internal
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$opti$SchemaDOMParser$BooleanStack') @:internal extern class SchemaDOMParser_BooleanStack
{
	@:overload @:public public function new() : Void;
	
	/** Returns the size of the stack. */
	@:overload @:public public function size() : Int;
	
	/** Pushes a value onto the stack. */
	@:overload @:public public function push(value : Bool) : Void;
	
	/** Pops a value off of the stack. */
	@:overload @:public public function pop() : Bool;
	
	/** Clears the stack. */
	@:overload @:public public function clear() : Void;
	
	
}
