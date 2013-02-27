package com.sun.org.apache.xerces.internal.impl;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLDTDScannerImpl extends com.sun.org.apache.xerces.internal.impl.XMLScanner implements com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent implements com.sun.org.apache.xerces.internal.impl.XMLEntityHandler
{
	/** Scanner state: end of input. */
	private static var SCANNER_STATE_END_OF_INPUT(default, null) : Int;
	
	/** Scanner state: text declaration. */
	private static var SCANNER_STATE_TEXT_DECL(default, null) : Int;
	
	/** Scanner state: markup declaration. */
	private static var SCANNER_STATE_MARKUP_DECL(default, null) : Int;
	
	/** DTD handler. */
	public var fDTDHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/** DTD content model handler. */
	private var fDTDContentModelHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
	
	/** Scanner state. */
	private var fScannerState : Int;
	
	/** Standalone. */
	private var fStandalone : Bool;
	
	/** Seen external DTD. */
	private var fSeenExternalDTD : Bool;
	
	/** Seen external parameter entity. */
	private var fSeenExternalPE : Bool;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/** Constructor for he use of non-XMLComponentManagers. */
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, errorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter, entityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager) : Void;
	
	/**
	* Sets the input source.
	*
	* @param inputSource The input source or null.
	*
	* @throws IOException Thrown on i/o error.
	*/
	@:overload public function setInputSource(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* Scans the external subset of the document.
	*
	* @param complete True if the scanner should scan the document
	*                 completely, pushing all events to the registered
	*                 document handler. A value of false indicates that
	*                 that the scanner should only scan the next portion
	*                 of the document and return. A scanner instance is
	*                 permitted to completely scan a document if it does
	*                 not support this "pull" scanning model.
	*
	* @return True if there is more to scan, false otherwise.
	*/
	@:overload public function scanDTDExternalSubset(complete : Bool) : Bool;
	
	/**
	* Scans the internal subset of the document.
	*
	* @param complete True if the scanner should scan the document
	*                 completely, pushing all events to the registered
	*                 document handler. A value of false indicates that
	*                 that the scanner should only scan the next portion
	*                 of the document and return. A scanner instance is
	*                 permitted to completely scan a document if it does
	*                 not support this "pull" scanning model.
	* @param standalone True if the document was specified as standalone.
	*                   This value is important for verifying certain
	*                   well-formedness constraints.
	* @param hasExternalDTD True if the document has an external DTD.
	*                       This allows the scanner to properly notify
	*                       the handler of the end of the DTD in the
	*                       absence of an external subset.
	*
	* @return True if there is more to scan, false otherwise.
	*/
	@:overload public function scanDTDInternalSubset(complete : Bool, standalone : Bool, hasExternalSubset : Bool) : Bool;
	
	/**
	* reset
	*
	* @param componentManager
	*/
	@:overload override public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	@:overload override public function reset() : Void;
	
	@:overload override public function reset(props : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Returns a list of feature identifiers that are recognized by
	* this component. This method may return null if no features
	* are recognized by this component.
	*/
	@:overload override public function getRecognizedFeatures() : java.NativeArray<String>;
	
	/**
	* Returns a list of property identifiers that are recognized by
	* this component. This method may return null if no properties
	* are recognized by this component.
	*/
	@:overload override public function getRecognizedProperties() : java.NativeArray<String>;
	
	/**
	* Returns the default state for a feature, or null if this
	* component does not want to report a default value for this
	* feature.
	*
	* @param featureId The feature identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload override public function getFeatureDefault(featureId : String) : Null<Bool>;
	
	/**
	* Returns the default state for a property, or null if this
	* component does not want to report a default value for this
	* property.
	*
	* @param propertyId The property identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload override public function getPropertyDefault(propertyId : String) : Dynamic;
	
	/**
	* setDTDHandler
	*
	* @param dtdHandler
	*/
	@:overload public function setDTDHandler(dtdHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler) : Void;
	
	/**
	* getDTDHandler
	*
	* @return the XMLDTDHandler
	*/
	@:overload public function getDTDHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/**
	* setDTDContentModelHandler
	*
	* @param dtdContentModelHandler
	*/
	@:overload public function setDTDContentModelHandler(dtdContentModelHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler) : Void;
	
	/**
	* getDTDContentModelHandler
	*
	* @return XMLDTDContentModelHandler
	*/
	@:overload public function getDTDContentModelHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
	
	/**
	* This method notifies of the start of an entity. The DTD has the
	* pseudo-name of "[dtd]" parameter entity names start with '%'; and
	* general entities are just specified by their name.
	*
	* @param name     The name of the entity.
	* @param identifier The resource identifier.
	* @param encoding The auto-detected IANA encoding name of the entity
	*                 stream. This value will be null in those situations
	*                 where the entity encoding is not auto-detected (e.g.
	*                 internal entities or a document entity that is
	*                 parsed from a java.io.Reader).
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function startEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the end of an entity. The DTD has the pseudo-name
	* of "[dtd]" parameter entity names start with '%'; and general entities
	* are just specified by their name.
	*
	* @param name The name of the entity.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function endEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Sets the scanner state.
	*
	* @param state The new scanner state.
	*/
	@:overload @:final private function setScannerState(state : Int) : Void;
	
	@:overload @:final private function scanningInternalSubset() : Bool;
	
	/**
	* start a parameter entity dealing with the textdecl if there is any
	*
	* @param name The name of the parameter entity to start (without the '%')
	* @param literal Whether this is happening within a literal
	*/
	@:overload private function startPE(name : String, literal : Bool) : Void;
	
	/**
	* Dispatch an XML "event".
	*
	* @param complete True if this method is intended to scan
	*                 and dispatch as much as possible.
	*
	* @return True if a TextDecl was scanned.
	*
	* @throws IOException  Thrown on i/o error.
	* @throws XNIException Thrown on parse error.
	*
	*/
	@:overload @:final private function scanTextDecl() : Bool;
	
	/**
	* Scans a processing data. This is needed to handle the situation
	* where a document starts with a processing instruction whose
	* target name <em>starts with</em> "xml". (e.g. xmlfoo)
	*
	* @param target The PI target
	* @param data The string to fill in with the data
	*/
	@:overload @:final private function scanPIData(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString) : Void;
	
	/**
	* Scans a comment.
	* <p>
	* <pre>
	* [15] Comment ::= '&lt!--' ((Char - '-') | ('-' (Char - '-')))* '-->'
	* </pre>
	* <p>
	* <strong>Note:</strong> Called after scanning past '&lt;!--'
	*/
	@:overload @:final private function scanComment() : Void;
	
	/**
	* Scans an element declaration
	* <p>
	* <pre>
	* [45]    elementdecl    ::=    '&lt;!ELEMENT' S Name S contentspec S? '>'
	* [46]    contentspec    ::=    'EMPTY' | 'ANY' | Mixed | children
	* </pre>
	* <p>
	* <strong>Note:</strong> Called after scanning past '&lt;!ELEMENT'
	*/
	@:overload @:final private function scanElementDecl() : Void;
	
	/**
	* Scans an attlist declaration
	* <p>
	* <pre>
	* [52]  AttlistDecl    ::=   '&lt;!ATTLIST' S Name AttDef* S? '>'
	* [53]  AttDef         ::=   S Name S AttType S DefaultDecl
	* </pre>
	* <p>
	* <strong>Note:</strong> Called after scanning past '&lt;!ATTLIST'
	*/
	@:overload @:final private function scanAttlistDecl() : Void;
	
	/**
	* Scans an attribute default declaration
	* <p>
	* <pre>
	* [60] DefaultDecl ::= '#REQUIRED' | '#IMPLIED' | (('#FIXED' S)? AttValue)
	* </pre>
	*
	* @param name The name of the attribute being scanned.
	* @param defaultVal The string to fill in with the default value.
	*/
	@:overload @:final private function scanAttDefaultDecl(elName : String, atName : String, type : String, defaultVal : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedDefaultVal : com.sun.org.apache.xerces.internal.xni.XMLString) : String;
	
	/**
	* Scans an entity value.
	*
	* @param value The string to fill in with the value.
	* @param nonNormalizedValue The string to fill in with the
	*                           non-normalized value.
	*
	* <strong>Note:</strong> This method uses fString, fStringBuffer (through
	* the use of scanCharReferenceValue), and fStringBuffer2, anything in them
	* at the time of calling is lost.
	*/
	@:overload @:final private function scanEntityValue(value : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedValue : com.sun.org.apache.xerces.internal.xni.XMLString) : Void;
	
	/**
	* Dispatch an XML "event".
	*
	* @param complete True if this method is intended to scan
	*                 and dispatch as much as possible.
	*
	* @return True if there is more to scan.
	*
	* @throws IOException  Thrown on i/o error.
	* @throws XNIException Thrown on parse error.
	*
	*/
	@:overload @:final private function scanDecls(complete : Bool) : Bool;
	
	@:overload public function getGrammar() : com.sun.xml.internal.stream.dtd.nonvalidating.DTDGrammar;
	
	
}
