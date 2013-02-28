package com.sun.org.apache.xerces.internal.impl;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLDocumentScannerImpl extends com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl
{
	/** Scanner state: XML declaration. */
	@:native('SCANNER_STATE_XML_DECL') private static var _SCANNER_STATE_XML_DECL(default, null) : Int;
	
	/** Scanner state: prolog. */
	private static var SCANNER_STATE_PROLOG(default, null) : Int;
	
	/** Scanner state: trailing misc. */
	private static var SCANNER_STATE_TRAILING_MISC(default, null) : Int;
	
	/** Scanner state: DTD internal declarations. */
	private static var SCANNER_STATE_DTD_INTERNAL_DECLS(default, null) : Int;
	
	/** Scanner state: open DTD external subset. */
	private static var SCANNER_STATE_DTD_EXTERNAL(default, null) : Int;
	
	/** Scanner state: DTD external declarations. */
	private static var SCANNER_STATE_DTD_EXTERNAL_DECLS(default, null) : Int;
	
	/** Scanner state: NO MORE ELEMENTS. */
	private static var SCANNER_STATE_NO_SUCH_ELEMENT_EXCEPTION(default, null) : Int;
	
	/** Property identifier document scanner: */
	private static var DOCUMENT_SCANNER(default, null) : String;
	
	/** Feature identifier: load external DTD. */
	private static var LOAD_EXTERNAL_DTD(default, null) : String;
	
	/** Feature identifier: load external DTD. */
	private static var DISALLOW_DOCTYPE_DECL_FEATURE(default, null) : String;
	
	/** Property identifier: DTD scanner. */
	private static var DTD_SCANNER(default, null) : String;
	
	private static var VALIDATION_MANAGER(default, null) : String;
	
	/** property identifier:  NamespaceContext */
	private static var NAMESPACE_CONTEXT(default, null) : String;
	
	/** DTD scanner. */
	private var fDTDScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
	
	/** Validation manager . */
	private var fValidationManager : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	private var fDTDDecl : com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
	
	private var fReadingDTD : Bool;
	
	private var fAddedListener : Bool;
	
	/** Doctype name. */
	private var fDoctypeName : String;
	
	/** Doctype declaration public identifier. */
	private var fDoctypePublicId : String;
	
	/** Doctype declaration system identifier. */
	private var fDoctypeSystemId : String;
	
	/** Namespace support. */
	private var fNamespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext;
	
	/** Load external DTD. */
	private var fLoadExternalDTD : Bool;
	
	/** Seen doctype declaration. */
	private var fSeenDoctypeDecl : Bool;
	
	private var fScanEndElement : Bool;
	
	/** XML declaration driver. */
	private var fXMLDeclDriver : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver;
	
	/** Prolog driver. */
	private var fPrologDriver : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver;
	
	/** DTD driver. */
	private var fDTDDriver : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver;
	
	/** Trailing miscellaneous section driver. */
	private var fTrailingMiscDriver : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver;
	
	private var fStartPos : Int;
	
	private var fEndPos : Int;
	
	private var fSeenInternalSubset : Bool;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/**
	* Sets the input source.
	*
	* @param inputSource The input source.
	*
	* @throws IOException Thrown on i/o error.
	*/
	@:overload override public function setInputSource(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**return the state of the scanner */
	@:overload public function getScannetState() : Int;
	
	@:overload override public function reset(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Resets the component. The component can query the component manager
	* about any features and properties that affect the operation of the
	* component.
	*
	* @param componentManager The component manager.
	*
	* @throws SAXException Thrown by component on initialization error.
	*                      For example, if a feature or property is
	*                      required for the operation of the component, the
	*                      component manager may throw a
	*                      SAXNotRecognizedException or a
	*                      SAXNotSupportedException.
	*/
	@:overload override public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* Returns a list of feature identifiers that are recognized by
	* this component. This method may return null if no features
	* are recognized by this component.
	*/
	@:overload override public function getRecognizedFeatures() : java.NativeArray<String>;
	
	/**
	* Sets the state of a feature. This method is called by the component
	* manager any time after reset when a feature changes state.
	* <p>
	* <strong>Note:</strong> Components should silently ignore features
	* that do not affect the operation of the component.
	*
	* @param featureId The feature identifier.
	* @param state     The state of the feature.
	*
	* @throws SAXNotRecognizedException The component should not throw
	*                                   this exception.
	* @throws SAXNotSupportedException The component should not throw
	*                                  this exception.
	*/
	@:overload override public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Returns a list of property identifiers that are recognized by
	* this component. This method may return null if no properties
	* are recognized by this component.
	*/
	@:overload override public function getRecognizedProperties() : java.NativeArray<String>;
	
	/**
	* Sets the value of a property. This method is called by the component
	* manager any time after reset when a property changes value.
	* <p>
	* <strong>Note:</strong> Components should silently ignore properties
	* that do not affect the operation of the component.
	*
	* @param propertyId The property identifier.
	* @param value      The value of the property.
	*
	* @throws SAXNotRecognizedException The component should not throw
	*                                   this exception.
	* @throws SAXNotSupportedException The component should not throw
	*                                  this exception.
	*/
	@:overload override public function setProperty(propertyId : String, value : Dynamic) : Void;
	
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
	
	@:overload public function getDTDDecl() : com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
	
	@:overload public function getCharacterEncodingScheme() : String;
	
	/** return the next state on the input
	*
	* @return int
	*/
	@:overload override public function next() : Int;
	
	@:overload public function getNamespaceContext() : com.sun.org.apache.xerces.internal.xni.NamespaceContext;
	
	/** Creates a content driver. */
	@:overload override private function createContentDriver() : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver;
	
	/** Scans a doctype declaration. */
	@:overload private function scanDoctypeDecl(supportDTD : Bool) : Bool;
	
	/** Set the scanner state after scanning DTD */
	@:overload private function setEndDTDScanState() : Void;
	
	/** Returns the scanner state name. */
	@:overload override private function getScannerStateName(state : Int) : String;
	
	/**
	* receives callbacks from {@link XMLEntityReader } when buffer
	* is being changed.
	* @param refreshPosition
	*/
	@:overload override public function refresh(refreshPosition : Int) : Void;
	
	
}
/**
* Driver to handle XMLDecl scanning.
*
* This class has been modified as per the new design which is more suited to
* efficiently build pull parser. Lots of performance improvements have been done and
* the code has been added to support stax functionality/features.
*
* @author Neeraj Bajaj, Sun Microsystems.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLDocumentScannerImpl$XMLDeclDriver') extern class XMLDocumentScannerImpl_XMLDeclDriver implements com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver
{
	@:overload public function next() : Int;
	
	
}
/**
* Driver to handle prolog scanning.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLDocumentScannerImpl$PrologDriver') extern class XMLDocumentScannerImpl_PrologDriver implements com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver
{
	/**
	* Drives the parser to the next state/event on the input. Parser is guaranteed
	* to stop at the next state/event.
	*
	* Internally XML document is divided into several states. Each state represents
	* a sections of XML document. When this functions returns normally, it has read
	* the section of XML document and returns the state corresponding to section of
	* document which has been read. For optimizations, a particular driver
	* can read ahead of the section of document (state returned) just read and
	* can maintain a different internal state.
	*
	* @return state representing the section of document just read.
	*
	* @throws IOException  Thrown on i/o error.
	* @throws XNIException Thrown on parse error.
	*/
	@:overload public function next() : Int;
	
	
}
/**
* Driver to handle the internal and external DTD subsets.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLDocumentScannerImpl$DTDDriver') extern class XMLDocumentScannerImpl_DTDDriver implements com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver
{
	@:overload public function next() : Int;
	
	/**
	* Dispatch an XML "event".
	*
	* @param complete True if this driver is intended to scan
	*                 and dispatch as much as possible.
	*
	* @return True if there is more to dispatch either from this
	*          or a another driver.
	*
	* @throws IOException  Thrown on i/o error.
	* @throws XNIException Thrown on parse error.
	*/
	@:overload public function dispatch(complete : Bool) : Bool;
	
	
}
/**
* Driver to handle content scanning.
*
* @author Andy Clark, IBM
* @author Eric Ye, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLDocumentScannerImpl$ContentDriver') extern class XMLDocumentScannerImpl_ContentDriver extends com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_FragmentContentDriver
{
	/**
	* Scan for DOCTYPE hook. This method is a hook for subclasses
	* to add code to handle scanning for a the "DOCTYPE" string
	* after the string "<!" has been scanned.
	*
	* @return True if the "DOCTYPE" was scanned; false if "DOCTYPE"
	*          was not scanned.
	*/
	@:overload override private function scanForDoctypeHook() : Bool;
	
	/**
	* Element depth iz zero. This methos is a hook for subclasses
	* to add code to handle when the element depth hits zero. When
	* scanning a document fragment, an element depth of zero is
	* normal. However, when scanning a full XML document, the
	* scanner must handle the trailing miscellanous section of
	* the document after the end of the document's root element.
	*
	* @return True if the caller should stop and return true which
	*          allows the scanner to switch to a new scanning
	*          driver. A return value of false indicates that
	*          the content driver should continue as normal.
	*/
	@:overload override private function elementDepthIsZeroHook() : Bool;
	
	/**
	* Scan for root element hook. This method is a hook for
	* subclasses to add code that handles scanning for the root
	* element. When scanning a document fragment, there is no
	* "root" element. However, when scanning a full XML document,
	* the scanner must handle the root element specially.
	*
	* @return True if the caller should stop and return true which
	*          allows the scanner to switch to a new scanning
	*          driver. A return value of false indicates that
	*          the content driver should continue as normal.
	*/
	@:overload override private function scanRootElementHook() : Bool;
	
	/**
	* End of file hook. This method is a hook for subclasses to
	* add code that handles the end of file. The end of file in
	* a document fragment is OK if the markup depth is zero.
	* However, when scanning a full XML document, an end of file
	* is always premature.
	*/
	@:overload override private function endOfFileHook(e : java.io.EOFException) : Void;
	
	@:overload private function resolveExternalSubsetAndRead() : Void;
	
	
}
/**
* Driver to handle trailing miscellaneous section scanning.
*
* @author Andy Clark, IBM
* @author Eric Ye, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLDocumentScannerImpl$TrailingMiscDriver') extern class XMLDocumentScannerImpl_TrailingMiscDriver implements com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver
{
	@:overload public function next() : Int;
	
	
}
