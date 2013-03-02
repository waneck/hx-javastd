package com.sun.org.apache.xerces.internal.xpointer;
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
extern class XPointerHandler extends com.sun.org.apache.xerces.internal.xinclude.XIncludeHandler implements com.sun.org.apache.xerces.internal.xpointer.XPointerProcessor
{
	/**
	* <p>
	* This is a pipeline component which extends the XIncludeHandler to perform
	* XPointer specific processing specified in the W3C XPointerFramework and
	* element() Scheme Recommendations.
	* </p>
	*
	* <p>
	* This component analyzes each event in the pipeline, looking for an element
	* that matches a PointerPart in the parent XInclude element's xpointer attribute
	* value.  If the match succeeds, all children are passed by this component.
	* </p>
	*
	* <p>
	* See the <a href="http://www.w3.org/TR/xptr-framework//">XPointer Framework Recommendation</a> for
	* more information on the XPointer Framework and ShortHand Pointers.
	* See the <a href="http://www.w3.org/TR/xptr-element/">XPointer element() Scheme Recommendation</a> for
	* more information on the XPointer element() Scheme.
	* </p>
	*
	* @xerces.internal
	*
	*/
	private var fXPointerParts : java.util.Vector<Dynamic>;
	
	private var fXPointerPart : com.sun.org.apache.xerces.internal.xpointer.XPointerPart;
	
	private var fFoundMatchingPtrPart : Bool;
	
	private var fXPointerErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	private var fErrorHandler : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
	
	private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	private var fIsXPointerResolved : Bool;
	
	private var fFixupBase : Bool;
	
	private var fFixupLang : Bool;
	
	/**
	*
	*/
	@:overload public function new() : Void;
	
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, errorHandler : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler, errorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter) : Void;
	
	/**
	* Parses the XPointer framework expression and delegates scheme specific parsing.
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerProcessor#parseXPointer(java.lang.String)
	*/
	@:overload public function parseXPointer(xpointer : String) : Void;
	
	/**
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerProcessor#resolveXPointer(com.sun.org.apache.xerces.internal.xni.QName, com.sun.org.apache.xerces.internal.xni.XMLAttributes, com.sun.org.apache.xerces.internal.xni.Augmentations, int event)
	*/
	@:overload public function resolveXPointer(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations, event : Int) : Bool;
	
	/**
	* Returns true if the Node fragment is resolved.
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerProcessor#isFragmentResolved()
	*/
	@:overload public function isFragmentResolved() : Bool;
	
	/**
	* Returns true if the XPointer expression resolves to a non-element child
	* of the current resource fragment.
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#isChildFragmentResolved()
	*
	*/
	@:overload public function isChildFragmentResolved() : Bool;
	
	/**
	* Returns true if the XPointer successfully found a sub-resource .
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerProcessor#isFragmentResolved()
	*/
	@:overload public function isXPointerResolved() : Bool;
	
	/**
	* Returns the pointer part used to resolve the document fragment.
	*
	* @return String - The pointer part used to resolve the document fragment.
	*/
	@:overload public function getXPointerPart() : com.sun.org.apache.xerces.internal.xpointer.XPointerPart;
	
	/**
	* Initializes error handling objects
	*
	*/
	@:overload private function initErrorReporter() : Void;
	
	/**
	* Initializes the XPointer Processor;
	*/
	@:overload private function init() : Void;
	
	/**
	* Returns a Vector of XPointerPart objects
	*
	* @return A Vector of XPointerPart objects.
	*/
	@:overload public function getPointerParts() : java.util.Vector<Dynamic>;
	
	/**
	* If the comment is a child of a matched element, then pass else return.
	*
	* @param text   The text in the comment.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by application to signal an error.
	*/
	@:overload public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Character content.
	*
	* @param text   The content.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an element.
	*
	* @param element The name of the element.
	* @param augs    Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a CDATA section.
	*
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a CDATA section.
	*
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* <p>
	* Sets the value of a property. This method is called by the component
	* manager any time after reset when a property changes value.
	* </p>
	* <strong>Note:</strong> Components should silently ignore properties
	* that do not affect the operation of the component.
	*
	* @param propertyId The property identifier.
	* @param value      The value of the property.
	*
	* @throws XMLConfigurationException Thrown for configuration error.
	*                                  In general, components should
	*                                  only throw this exception if
	*                                  it is <strong>really</strong>
	*                                  a critical error.
	*/
	@:overload public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	
}
/**
* List of XPointer Framework tokens.
*
* @xerces.internal
*
*/
@:native('com$sun$org$apache$xerces$internal$xpointer$XPointerHandler$Tokens') @:internal extern class XPointerHandler_Tokens
{
	
}
/**
*
* The XPointer expression scanner.  Scans the XPointer framework expression.
*
* @xerces.internal
*
*/
@:native('com$sun$org$apache$xerces$internal$xpointer$XPointerHandler$Scanner') @:internal extern class XPointerHandler_Scanner
{
	/**
	* This method adds the specified token to the token list. By
	* default, this method allows all tokens. However, subclasses
	* of the XPathExprScanner can override this method in order
	* to disallow certain tokens from being used in the scanned
	* XPath expression. This is a convenient way of allowing only
	* a subset of XPath.
	*/
	@:overload private function addToken(tokens : com.sun.org.apache.xerces.internal.xpointer.XPointerHandler.XPointerHandler_Tokens, token : Int) : Void;
	
	
}
