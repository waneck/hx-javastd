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
extern class XMLDocumentFragmentScannerImpl extends com.sun.org.apache.xerces.internal.impl.XMLScanner implements com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent implements com.sun.org.apache.xerces.internal.impl.XMLEntityHandler implements com.sun.xml.internal.stream.XMLBufferListener
{
	/**
	*
	* This class is responsible for scanning the structure and content
	* of document fragments.
	*
	* This class has been modified as per the new design which is more suited to
	* efficiently build pull parser. Lot of improvements have been done and
	* the code has been added to support stax functionality/features.
	*
	* @author Neeraj Bajaj SUN Microsystems
	* @author K.Venugopal SUN Microsystems
	* @author Glenn Marcy, IBM
	* @author Andy Clark, IBM
	* @author Arnaud  Le Hors, IBM
	* @author Eric Ye, IBM
	* @author Sunitha Reddy, SUN Microsystems
	* @version $Id: XMLDocumentFragmentScannerImpl.java,v 1.19 2010-11-02 19:54:55 joehw Exp $
	*
	*/
	@:protected private var fElementAttributeLimit : Int;
	
	/** External subset resolver. **/
	@:protected private var fExternalSubsetResolver : com.sun.org.apache.xerces.internal.impl.ExternalSubsetResolver;
	
	/** Scanner state: start of markup. */
	@:protected @:static @:final private static var SCANNER_STATE_START_OF_MARKUP(default, null) : Int;
	
	/** Scanner state: content. */
	@:protected @:static @:final private static var SCANNER_STATE_CONTENT(default, null) : Int;
	
	/** Scanner state: processing instruction. */
	@:protected @:static @:final private static var SCANNER_STATE_PI(default, null) : Int;
	
	/** Scanner state: DOCTYPE. */
	@:protected @:static @:final private static var SCANNER_STATE_DOCTYPE(default, null) : Int;
	
	/** Scanner state: XML Declaration */
	@:protected @:static @:final private static var SCANNER_STATE_XML_DECL(default, null) : Int;
	
	/** Scanner state: root element. */
	@:protected @:static @:final private static var SCANNER_STATE_ROOT_ELEMENT(default, null) : Int;
	
	/** Scanner state: comment. */
	@:protected @:static @:final private static var SCANNER_STATE_COMMENT(default, null) : Int;
	
	/** Scanner state: reference. */
	@:protected @:static @:final private static var SCANNER_STATE_REFERENCE(default, null) : Int;
	
	@:protected @:static @:final private static var SCANNER_STATE_ATTRIBUTE(default, null) : Int;
	
	@:protected @:static @:final private static var SCANNER_STATE_ATTRIBUTE_VALUE(default, null) : Int;
	
	/** Scanner state: end of input. */
	@:protected @:static @:final private static var SCANNER_STATE_END_OF_INPUT(default, null) : Int;
	
	/** Scanner state: terminated. */
	@:protected @:static @:final private static var SCANNER_STATE_TERMINATED(default, null) : Int;
	
	/** Scanner state: CDATA section. */
	@:protected @:static @:final private static var SCANNER_STATE_CDATA(default, null) : Int;
	
	/** Scanner state: Text declaration. */
	@:protected @:static @:final private static var SCANNER_STATE_TEXT_DECL(default, null) : Int;
	
	/** Scanner state: Text declaration. */
	@:protected @:static @:final private static var SCANNER_STATE_CHARACTER_DATA(default, null) : Int;
	
	@:protected @:static @:final private static var SCANNER_STATE_START_ELEMENT_TAG(default, null) : Int;
	
	@:protected @:static @:final private static var SCANNER_STATE_END_ELEMENT_TAG(default, null) : Int;
	
	@:protected @:static @:final private static var SCANNER_STATE_CHAR_REFERENCE(default, null) : Int;
	
	@:protected @:static @:final private static var SCANNER_STATE_BUILT_IN_REFS(default, null) : Int;
	
	/** Feature identifier: notify built-in refereces. */
	@:protected @:static @:final private static var NOTIFY_BUILTIN_REFS(default, null) : String;
	
	/** Property identifier: entity resolver. */
	@:protected @:static @:final private static var ENTITY_RESOLVER(default, null) : String;
	
	@:protected @:static @:final private static var cdata(default, null) : java.NativeArray<java.StdTypes.Char16>;
	
	@:protected @:static @:final private static var xmlDecl(default, null) : java.NativeArray<java.StdTypes.Char16>;
	
	@:protected @:static @:final private static var endTag(default, null) : java.NativeArray<java.StdTypes.Char16>;
	
	/** Debug content driver scanning. */
	@:protected @:static @:final private static var DEBUG_START_END_ELEMENT(default, null) : Bool;
	
	/** Debug driver next */
	@:protected @:static @:final private static var DEBUG_NEXT(default, null) : Bool;
	
	/** Debug driver next */
	@:protected @:static @:final private static var DEBUG(default, null) : Bool;
	
	@:protected @:static @:final private static var DEBUG_COALESCE(default, null) : Bool;
	
	/** Document handler. */
	@:protected private var fDocumentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	@:protected private var fScannerLastState : Int;
	
	/** Entity Storage */
	@:protected private var fEntityStore : com.sun.xml.internal.stream.XMLEntityStorage;
	
	/** Entity stack. */
	@:protected private var fEntityStack : java.NativeArray<Int>;
	
	/** Markup depth. */
	@:protected private var fMarkupDepth : Int;
	
	@:protected private var fEmptyElement : Bool;
	
	@:protected private var fReadingAttributes : Bool;
	
	/** Scanner state. */
	@:protected private var fScannerState : Int;
	
	/** SubScanner state: inside scanContent method. */
	@:protected private var fInScanContent : Bool;
	
	@:protected private var fLastSectionWasCData : Bool;
	
	@:protected private var fLastSectionWasEntityReference : Bool;
	
	@:protected private var fLastSectionWasCharacterData : Bool;
	
	/** has external dtd */
	@:protected private var fHasExternalDTD : Bool;
	
	/** Standalone. */
	@:protected private var fStandaloneSet : Bool;
	
	@:protected private var fStandalone : Bool;
	
	@:protected private var fVersion : String;
	
	/** Current element. */
	@:protected private var fCurrentElement : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** Element stack. */
	@:protected private var fElementStack : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_ElementStack;
	
	@:protected private var fElementStack2 : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_ElementStack2;
	
	/** Document system identifier.
	* REVISIT:  So what's this used for?  - NG
	* protected String fDocumentSystemId;
	******/
	@:protected private var fPITarget : String;
	
	@:protected private var fPIData : com.sun.org.apache.xerces.internal.xni.XMLString;
	
	/** Notify built-in references. */
	@:protected private var fNotifyBuiltInRefs : Bool;
	
	@:protected private var fSupportDTD : Bool;
	
	@:protected private var fReplaceEntityReferences : Bool;
	
	@:protected private var fSupportExternalEntities : Bool;
	
	@:protected private var fReportCdataEvent : Bool;
	
	@:protected private var fIsCoalesce : Bool;
	
	@:protected private var fDeclaredEncoding : String;
	
	/** Xerces Feature: Disallow doctype declaration. */
	@:protected private var fDisallowDoctype : Bool;
	
	/** Active driver. */
	@:protected private var fDriver : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver;
	
	/** Content driver. */
	@:protected private var fContentDriver : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver;
	
	/** Element QName. */
	@:protected private var fElementQName : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** Attribute QName. */
	@:protected private var fAttributeQName : com.sun.org.apache.xerces.internal.xni.QName;
	
	/**
	* CHANGED: Using XMLAttributesIteratorImpl instead of XMLAttributesImpl. This class
	* implements Iterator interface so we can directly give Attributes in the form of
	* iterator.
	*/
	@:protected private var fAttributes : com.sun.org.apache.xerces.internal.util.XMLAttributesIteratorImpl;
	
	/** String. */
	@:protected private var fTempString : com.sun.org.apache.xerces.internal.xni.XMLString;
	
	/** String. */
	@:protected private var fTempString2 : com.sun.org.apache.xerces.internal.xni.XMLString;
	
	/** Making the buffer accesible to derived class -- String buffer. */
	@:protected private var fStringBuffer : com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
	
	/** Making the buffer accesible to derived class -- String buffer. */
	@:protected private var fStringBuffer2 : com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
	
	/** Making the buffer accesible to derived class -- stores PI data */
	@:protected private var fContentBuffer : com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
	
	@:protected private var fScanToEnd : Bool;
	
	@:protected private var dtdGrammarUtil : com.sun.xml.internal.stream.dtd.DTDGrammarUtil;
	
	@:protected private var fAddDefaultAttr : Bool;
	
	@:protected private var foundBuiltInRefs : Bool;
	
	@:protected private var fSecurityManager : com.sun.org.apache.xerces.internal.util.SecurityManager;
	
	@:protected private var fElementRawname : String;
	
	@:protected private var fShouldSkip : Bool;
	
	@:protected private var fAdd : Bool;
	
	@:protected private var fSkip : Bool;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/**
	* Sets the input source.
	*
	* @param inputSource The input source.
	*
	* @throws IOException Thrown on i/o error.
	*/
	@:overload @:public public function setInputSource(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/* public boolean scanDocument(boolean complete)
	throws IOException, XNIException {

	// keep dispatching "events"
	fEntityManager.setEntityHandler(this);

	return true;

	} // scanDocument(boolean):boolean
	*/
	@:overload @:public public function scanDocument(complete : Bool) : Bool;
	
	@:overload @:public public function getElementQName() : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** return the next state on the input
	* @return int
	*/
	@:overload @:public public function next() : Int;
	
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
	@:overload @:public override public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	@:overload @:public override public function reset(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Returns a list of feature identifiers that are recognized by
	* this component. This method may return null if no features
	* are recognized by this component.
	*/
	@:overload @:public override public function getRecognizedFeatures() : java.NativeArray<String>;
	
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
	@:overload @:public override public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Returns a list of property identifiers that are recognized by
	* this component. This method may return null if no properties
	* are recognized by this component.
	*/
	@:overload @:public override public function getRecognizedProperties() : java.NativeArray<String>;
	
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
	@:overload @:public override public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Returns the default state for a feature, or null if this
	* component does not want to report a default value for this
	* feature.
	*
	* @param featureId The feature identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload @:public override public function getFeatureDefault(featureId : String) : Null<Bool>;
	
	/**
	* Returns the default state for a property, or null if this
	* component does not want to report a default value for this
	* property.
	*
	* @param propertyId The property identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload @:public override public function getPropertyDefault(propertyId : String) : Dynamic;
	
	/**
	* setDocumentHandler
	*
	* @param documentHandler
	*/
	@:overload @:public public function setDocumentHandler(documentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler) : Void;
	
	/** Returns the document handler */
	@:overload @:public public function getDocumentHandler() : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
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
	@:overload @:public override public function startEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the end of an entity. The DTD has the pseudo-name
	* of "[dtd]" parameter entity names start with '%'; and general entities
	* are just specified by their name.
	*
	* @param name The name of the entity.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public override public function endEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/** Creates a content Driver. */
	@:overload @:protected private function createContentDriver() : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver;
	
	/**
	* Scans an XML or text declaration.
	* <p>
	* <pre>
	* [23] XMLDecl ::= '&lt;?xml' VersionInfo EncodingDecl? SDDecl? S? '?>'
	* [24] VersionInfo ::= S 'version' Eq (' VersionNum ' | " VersionNum ")
	* [80] EncodingDecl ::= S 'encoding' Eq ('"' EncName '"' |  "'" EncName "'" )
	* [81] EncName ::= [A-Za-z] ([A-Za-z0-9._] | '-')*
	* [32] SDDecl ::= S 'standalone' Eq (("'" ('yes' | 'no') "'")
	*                 | ('"' ('yes' | 'no') '"'))
	*
	* [77] TextDecl ::= '&lt;?xml' VersionInfo? EncodingDecl S? '?>'
	* </pre>
	*
	* @param scanningTextDecl True if a text declaration is to
	*                         be scanned instead of an XML
	*                         declaration.
	*/
	@:overload @:protected private function scanXMLDeclOrTextDecl(scanningTextDecl : Bool) : Void;
	
	@:overload @:public public function getPITarget() : String;
	
	@:overload @:public public function getPIData() : com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
	
	@:overload @:public public function getCharacterData() : com.sun.org.apache.xerces.internal.xni.XMLString;
	
	/**
	* Scans a processing data. This is needed to handle the situation
	* where a document starts with a processing instruction whose
	* target name <em>starts with</em> "xml". (e.g. xmlfoo)
	*
	* @param target The PI target
	* @param data The XMLStringBuffer to fill in with the data
	*/
	@:overload @:protected override private function scanPIData(target : String, data : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Void;
	
	/**
	* Scans a comment.
	* <p>
	* <pre>
	* [15] Comment ::= '&lt!--' ((Char - '-') | ('-' (Char - '-')))* '-->'
	* </pre>
	* <p>
	* <strong>Note:</strong> Called after scanning past '&lt;!--'
	*/
	@:overload @:protected private function scanComment() : Void;
	
	@:overload @:public public function getComment() : String;
	
	@:overload @:protected private function skipElement() : Bool;
	
	/**
	* Scans a start element. This method will handle the binding of
	* namespace information and notifying the handler of the start
	* of the element.
	* <p>
	* <pre>
	* [44] EmptyElemTag ::= '&lt;' Name (S Attribute)* S? '/>'
	* [40] STag ::= '&lt;' Name (S Attribute)* S? '>'
	* </pre>
	* <p>
	* <strong>Note:</strong> This method assumes that the leading
	* '&lt;' character has been consumed.
	* <p>
	* <strong>Note:</strong> This method uses the fElementQName and
	* fAttributes variables. The contents of these variables will be
	* destroyed. The caller should copy important information out of
	* these variables before calling this method.
	* NB: Content in fAttributes is valid only till the state of the parser is XMLEvent.START_ELEMENT
	*
	* @return True if element is empty. (i.e. It matches
	*          production [44].
	*/
	@:overload @:protected private function scanStartElement() : Bool;
	
	/**
	* Looks for the close of start tag, i.e. if it finds '>' or '/>'
	* Characters are consumed.
	*/
	@:overload @:protected private function seekCloseOfStartTag() : Bool;
	
	@:overload @:public public function hasAttributes() : Bool;
	
	/** return the attribute iterator implementation */
	@:overload @:public public function getAttributeIterator() : com.sun.org.apache.xerces.internal.util.XMLAttributesIteratorImpl;
	
	/** return if standalone is set */
	@:overload @:public public function standaloneSet() : Bool;
	
	/** return if the doucment is standalone */
	@:overload @:public public function isStandAlone() : Bool;
	
	/**
	* Scans an attribute name value pair.
	* <p>
	* <pre>
	* [41] Attribute ::= Name Eq AttValue
	* </pre>
	* <p>
	* <strong>Note:</strong> This method assumes that the next
	* character on the stream is the first character of the attribute
	* name.
	* <p>
	* <strong>Note:</strong> This method uses the fAttributeQName and
	* fQName variables. The contents of these variables will be
	* destroyed.
	*
	* @param attributes The attributes list for the scanned attribute.
	*/
	@:overload @:protected private function scanAttribute(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	/**
	* Scans element content.
	*
	* @return Returns the next character on the stream.
	*/
	@:overload @:protected private function scanContent(content : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Int;
	
	/**
	* Scans a CDATA section.
	* <p>
	* <strong>Note:</strong> This method uses the fTempString and
	* fStringBuffer variables.
	*
	* @param complete True if the CDATA section is to be scanned
	*                 completely.
	*
	* @return True if CDATA is completely scanned.
	*/
	@:overload @:protected private function scanCDATASection(contentBuffer : com.sun.org.apache.xerces.internal.util.XMLStringBuffer, complete : Bool) : Bool;
	
	/**
	* Scans an end element.
	* <p>
	* <pre>
	* [42] ETag ::= '&lt;/' Name S? '>'
	* </pre>
	* <p>
	* <strong>Note:</strong> This method uses the fElementQName variable.
	* The contents of this variable will be destroyed. The caller should
	* copy the needed information out of this variable before calling
	* this method.
	*
	* @return The element depth.
	*/
	@:overload @:protected private function scanEndElement() : Int;
	
	/**
	* Scans a character reference.
	* <p>
	* <pre>
	* [66] CharRef ::= '&#' [0-9]+ ';' | '&#x' [0-9a-fA-F]+ ';'
	* </pre>
	*/
	@:overload @:protected private function scanCharReference() : Void;
	
	/**
	* Scans an entity reference.
	*
	* @return returns true if the new entity is started. If it was built-in entity
	*         'false' is returned.
	* @throws IOException  Thrown if i/o error occurs.
	* @throws XNIException Thrown if handler throws exception upon
	*                      notification.
	*/
	@:overload @:protected private function scanEntityReference(content : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Void;
	
	/**
	* Sets the scanner state.
	*
	* @param state The new scanner state.
	*/
	@:overload @:protected @:final private function setScannerState(state : Int) : Void;
	
	/**
	* Sets the Driver.
	*
	* @param Driver The new Driver.
	*/
	@:overload @:protected @:final private function setDriver(driver : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver) : Void;
	
	/** Returns the scanner state name. */
	@:overload @:protected private function getScannerStateName(state : Int) : String;
	
	@:overload @:public public function getEntityName() : String;
	
	/** Returns the driver name. */
	@:overload @:public public function getDriverName(driver : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver) : String;
	
	@:protected private var fUsebuffer : Bool;
	
	/** this function gets an XMLString (which is used to store the attribute value) from the special pool
	*  maintained for attributes.
	*  fAttributeCacheUsedCount tracks the number of attributes that has been consumed from the pool.
	*  if all the attributes has been consumed, it adds a new XMLString inthe pool and returns the same
	*  XMLString.
	*
	* @return XMLString XMLString used to store an attribute value.
	*/
	@:overload @:protected private function getString() : com.sun.org.apache.xerces.internal.xni.XMLString;
	
	/**
	* Implements XMLBufferListener interface.
	*/
	@:overload @:public public function refresh() : Void;
	
	/**
	* receives callbacks from {@link XMLEntityReader } when buffer
	* is being changed.
	* @param refreshPosition
	*/
	@:overload @:public public function refresh(refreshPosition : Int) : Void;
	
	
}
/**
* @author Neeraj Bajaj, Sun Microsystems.
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLDocumentFragmentScannerImpl$Element') extern class XMLDocumentFragmentScannerImpl_Element
{
	/** Symbol. */
	@:public public var qname : com.sun.org.apache.xerces.internal.xni.QName;
	
	@:public public var fRawname : java.NativeArray<java.StdTypes.Char16>;
	
	/** The next Element entry. */
	@:public public var next : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Element;
	
	/**
	* Constructs a new Element from the given QName and next Element
	* reference.
	*/
	@:overload @:public public function new(qname : com.sun.org.apache.xerces.internal.xni.QName, next : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Element) : Void;
	
	
}
/**
* Element stack.
*
* @author Neeraj Bajaj, Sun Microsystems.
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLDocumentFragmentScannerImpl$ElementStack2') extern class XMLDocumentFragmentScannerImpl_ElementStack2
{
	/** The stack data. */
	@:protected private var fQName : java.NativeArray<com.sun.org.apache.xerces.internal.xni.QName>;
	
	@:protected private var fDepth : Int;
	
	@:protected private var fCount : Int;
	
	@:protected private var fPosition : Int;
	
	@:protected private var fMark : Int;
	
	@:protected private var fLastDepth : Int;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function resize() : Void;
	
	/** Check if the element scanned during the start element
	*matches the stored element.
	*
	*@return true if the match suceeds.
	*/
	@:overload @:public public function matchElement(element : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
	/**
	* This function doesn't increase depth. The function in this function is
	*broken down into two functions for efficiency. <@see>matchElement</see>.
	* This function just returns the pointer to the object and its values are set.
	*
	*@return QName reference to the next element in the list
	*/
	@:overload @:public public function nextElement() : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** Note that this function is considerably different than nextElement()
	* This function just returns the previously stored elements
	*/
	@:overload @:public public function getNext() : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** returns the current depth
	*/
	@:overload @:public public function popElement() : Int;
	
	/** Clears the stack without throwing away existing QName objects. */
	@:overload @:public public function clear() : Void;
	
	
}
/**
* Element stack. This stack operates without synchronization, error
* checking, and it re-uses objects instead of throwing popped items
* away.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLDocumentFragmentScannerImpl$ElementStack') extern class XMLDocumentFragmentScannerImpl_ElementStack
{
	/** The stack data. */
	@:protected private var fElements : java.NativeArray<com.sun.org.apache.xerces.internal.xni.QName>;
	
	@:protected private var fInt : java.NativeArray<Int>;
	
	@:protected private var fDepth : Int;
	
	@:protected private var fCount : Int;
	
	@:protected private var fPosition : Int;
	
	@:protected private var fMark : Int;
	
	@:protected private var fLastDepth : Int;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/**
	* Pushes an element on the stack.
	* <p>
	* <strong>Note:</strong> The QName values are copied into the
	* stack. In other words, the caller does <em>not</em> orphan
	* the element to the stack. Also, the QName object returned
	* is <em>not</em> orphaned to the caller. It should be
	* considered read-only.
	*
	* @param element The element to push onto the stack.
	*
	* @return Returns the actual QName object that stores the
	*/
	@:overload @:public public function pushElement(element : com.sun.org.apache.xerces.internal.xni.QName) : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** Note that this function is considerably different than nextElement()
	* This function just returns the previously stored elements
	*/
	@:overload @:public public function getNext() : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** This function should be called only when element was skipped sucessfully.
	* 1. Increase the depth - because element was sucessfully skipped.
	*2. Store the position of the element token in array  "last opened tag" at depth.
	*3. increase the position counter so as to point to the next element in the array
	*/
	@:overload @:public public function push() : Void;
	
	/** Check if the element scanned during the start element
	*matches the stored element.
	*
	*@return true if the match suceeds.
	*/
	@:overload @:public public function matchElement(element : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
	/**
	* Returns the next element on the stack.
	*
	* @return Returns the actual QName object. Callee should
	* use this object to store the details of next element encountered.
	*/
	@:overload @:public public function nextElement() : com.sun.org.apache.xerces.internal.xni.QName;
	
	/**
	* Pops an element off of the stack by setting the values of
	* the specified QName.
	* <p>
	* <strong>Note:</strong> The object returned is <em>not</em>
	* orphaned to the caller. Therefore, the caller should consider
	* the object to be read-only.
	*/
	@:overload @:public public function popElement() : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** Reposition the stack. fInt [] contains all the opened tags at particular depth.
	* Transfer all the opened tags starting from depth '2' to the current depth and reposition them
	*as per the depth.
	*/
	@:overload @:public public function reposition() : Void;
	
	/** Clears the stack without throwing away existing QName objects. */
	@:overload @:public public function clear() : Void;
	
	/**
	* This function is as a result of optimization done for endElement --
	* we dont need to set the value for every end element encouterd.
	* For Well formedness checks we can have the same QName object that was pushed.
	* the values will be set only if application need to know about the endElement
	* -- neeraj.bajaj@sun.com
	*/
	@:overload @:public public function getLastPoppedElement() : com.sun.org.apache.xerces.internal.xni.QName;
	
	
}
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
*
* @author Neeraj Bajaj, Sun Microsystems
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLDocumentFragmentScannerImpl$Driver') extern interface XMLDocumentFragmentScannerImpl_Driver
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
	@:overload @:public public function next() : Int;
	
	
}
/**
* Driver to handle content scanning. This driver is capable of reading
* the fragment of XML document. When it has finished reading fragment
* of XML documents, it can pass the job of reading to another driver.
*
* This class has been modified as per the new design which is more suited to
* efficiently build pull parser. Lot of performance improvements have been done and
* the code has been added to support stax functionality/features.
*
* @author Neeraj Bajaj, Sun Microsystems
*
*
* @author Andy Clark, IBM
* @author Eric Ye, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLDocumentFragmentScannerImpl$FragmentContentDriver') extern class XMLDocumentFragmentScannerImpl_FragmentContentDriver implements com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver
{
	/**
	*
	* SCANNER_STATE_CONTENT and SCANNER_STATE_START_OF_MARKUP are two super states of the parser.
	* At any point of time when in doubt over the current state of the parser, the state should be
	* set to SCANNER_STATE_CONTENT. Parser will automatically revive itself and will set state of
	* the parser to one of its sub state.
	* sub states are defined in the parser on the basis of different XML component like
	* SCANNER_STATE_ENTITY_REFERENCE , SCANNER_STATE_START_ELEMENT, SCANNER_STATE_CDATA etc..
	* These sub states help the parser to have fine control over the parsing. These are the
	* different milepost, parser stops at each sub state (milepost). Based on this state it is
	* decided if paresr needs to stop at next milepost ??
	*
	*/
	@:overload @:public public function decideSubState() : Void;
	
	/**
	* Drives the parser to the next state/event on the input. Parser is guaranteed
	* to stop at the next state/event. Internally XML document
	* is divided into several states. Each state represents a sections of XML
	* document. When this functions returns normally, it has read the section
	* of XML document and returns the state corresponding to section of
	* document which has been read. For optimizations, a particular driver
	* can read ahead of the section of document (state returned) just read and
	* can maintain a different internal state.
	*
	* State returned corresponds to Stax states.
	*
	* @return state representing the section of document just read.
	*
	* @throws IOException  Thrown on i/o error.
	* @throws XNIException Thrown on parse error.
	*/
	@:overload @:public public function next() : Int;
	
	/**
	* Scan for DOCTYPE hook. This method is a hook for subclasses
	* to add code to handle scanning for a the "DOCTYPE" string
	* after the string "<!" has been scanned.
	*
	* @return True if the "DOCTYPE" was scanned; false if "DOCTYPE"
	*          was not scanned.
	*/
	@:overload @:protected private function scanForDoctypeHook() : Bool;
	
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
	@:overload @:protected private function elementDepthIsZeroHook() : Bool;
	
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
	@:overload @:protected private function scanRootElementHook() : Bool;
	
	/**
	* End of file hook. This method is a hook for subclasses to
	* add code that handles the end of file. The end of file in
	* a document fragment is OK if the markup depth is zero.
	* However, when scanning a full XML document, an end of file
	* is always premature.
	*/
	@:overload @:protected private function endOfFileHook(e : java.io.EOFException) : Void;
	
	
}
