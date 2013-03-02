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
@:internal extern class ElementSchemePointer implements com.sun.org.apache.xerces.internal.xpointer.XPointerPart
{
	private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	private var fErrorHandler : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
	
	@:overload public function new() : Void;
	
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, errorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter) : Void;
	
	/**
	* Parses the XPointer expression and tokenizes it into Strings
	* delimited by whitespace.
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerProcessor#parseXPointer(java.lang.String)
	*/
	@:overload public function parseXPointer(xpointer : String) : Void;
	
	/**
	* Returns the scheme name i.e element
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#getSchemeName()
	*/
	@:overload public function getSchemeName() : String;
	
	/**
	* Returns the scheme data
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#getSchemeData()
	*/
	@:overload public function getSchemeData() : String;
	
	/**
	* Sets the scheme name
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#setSchemeName(java.lang.String)
	*/
	@:overload public function setSchemeName(schemeName : String) : Void;
	
	/**
	* Sets the scheme data
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#setSchemeData(java.lang.String)
	*/
	@:overload public function setSchemeData(schemeData : String) : Void;
	
	/**
	* Responsible for resolving the element() scheme XPointer.  If a ShortHand
	* Pointer is present and it is successfully resolved and if a child
	* sequence is present, the child sequence is resolved relative to it.
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerProcessor#resolveXPointer(com.sun.org.apache.xerces.internal.xni.QName, com.sun.org.apache.xerces.internal.xni.XMLAttributes, com.sun.org.apache.xerces.internal.xni.Augmentations, int event)
	*/
	@:overload public function resolveXPointer(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations, event : Int) : Bool;
	
	/**
	* Matches the current element position in the document tree with the
	* element position specified in the element XPointer scheme.
	*
	* @param event
	* @return boolean - true if the current element position in the document
	* tree matches theelement position specified in the element XPointer
	* scheme.
	*/
	@:overload private function matchChildSequence(element : com.sun.org.apache.xerces.internal.xni.QName, event : Int) : Bool;
	
	/**
	* Matches the current position of the element being visited by checking
	* its position and previous elements against the element XPointer expression.
	* If a match is found it return true else false.
	*
	* @return boolean
	*/
	@:overload private function checkMatch() : Bool;
	
	/**
	* Returns true if the node matches or is a child of a matching element()
	* scheme XPointer.
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
	* Reports an XPointer error
	*/
	@:overload private function reportError(key : String, arguments : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Initializes error handling objects
	*/
	@:overload private function initErrorReporter() : Void;
	
	/**
	* Initializes the element scheme processor
	*/
	@:overload private function init() : Void;
	
	
}
/**
* List of XPointer Framework tokens.
*
* @xerces.internal
*
* @author Neil Delima, IBM
* @version $Id: ElementSchemePointer.java,v 1.4 2009/06/11 23:51:50 joehw Exp $
*
*/
@:native('com$sun$org$apache$xerces$internal$xpointer$ElementSchemePointer$Tokens') @:internal extern class ElementSchemePointer_Tokens
{
	
}
/**
*
* The XPointer expression scanner.  Scans the XPointer framework expression.
*
* @xerces.internal
*
* @version $Id: ElementSchemePointer.java,v 1.4 2009/06/11 23:51:50 joehw Exp $
*/
@:native('com$sun$org$apache$xerces$internal$xpointer$ElementSchemePointer$Scanner') @:internal extern class ElementSchemePointer_Scanner
{
	/**
	* This method adds the specified token to the token list. By
	* default, this method allows all tokens. However, subclasses
	* of the XPathExprScanner can override this method in order
	* to disallow certain tokens from being used in the scanned
	* XPath expression. This is a convenient way of allowing only
	* a subset of XPath.
	*/
	@:overload private function addToken(tokens : com.sun.org.apache.xerces.internal.xpointer.ElementSchemePointer.ElementSchemePointer_Tokens, token : Int) : Void;
	
	
}
