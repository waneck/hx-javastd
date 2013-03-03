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
extern class XMLScanner implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
{
	/** Feature identifier: namespaces. */
	@:protected @:static @:final private static var NAMESPACES(default, null) : String;
	
	/** Feature identifier: validation. */
	@:protected @:static @:final private static var VALIDATION(default, null) : String;
	
	/** Feature identifier: notify character references. */
	@:protected @:static @:final private static var NOTIFY_CHAR_REFS(default, null) : String;
	
	@:protected @:static @:final private static var PARSER_SETTINGS(default, null) : String;
	
	/** Property identifier: symbol table. */
	@:protected @:static @:final private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error reporter. */
	@:protected @:static @:final private static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: entity manager. */
	@:protected @:static @:final private static var ENTITY_MANAGER(default, null) : String;
	
	/** Debug attribute normalization. */
	@:protected @:static @:final private static var DEBUG_ATTR_NORMALIZATION(default, null) : Bool;
	
	@:protected private var attributeValueCache : java.util.ArrayList<Dynamic>;
	
	@:protected private var stringBufferCache : java.util.ArrayList<Dynamic>;
	
	@:protected private var fStringBufferIndex : Int;
	
	@:protected private var fAttributeCacheInitDone : Bool;
	
	@:protected private var fAttributeCacheUsedCount : Int;
	
	/**
	* Validation. This feature identifier is:
	* http://xml.org/sax/features/validation
	*/
	@:protected private var fValidation : Bool;
	
	/** Namespaces. */
	@:protected private var fNamespaces : Bool;
	
	/** Character references notification. */
	@:protected private var fNotifyCharRefs : Bool;
	
	/** Internal parser-settings feature */
	@:protected private var fParserSettings : Bool;
	
	@:protected private var fPropertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager;
	
	/** Symbol table. */
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Error reporter. */
	@:protected private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/** Entity manager. */
	@:protected private var fEntityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	/** xxx this should be available from EntityManager Entity storage */
	@:protected private var fEntityStore : com.sun.xml.internal.stream.XMLEntityStorage;
	
	/** event type */
	@:protected private var fEvent : javax.xml.stream.events.XMLEvent;
	
	/** Entity scanner, this alwasy works on last entity that was opened. */
	@:protected private var fEntityScanner : com.sun.org.apache.xerces.internal.impl.XMLEntityScanner;
	
	/** Entity depth. */
	@:protected private var fEntityDepth : Int;
	
	/** Literal value of the last character refence scanned. */
	@:protected private var fCharRefLiteral : String;
	
	/** Scanning attribute. */
	@:protected private var fScanningAttribute : Bool;
	
	/** Report entity boundary. */
	@:protected private var fReportEntity : Bool;
	
	/** Symbol: "version". */
	@:protected @:final @:static private static var fVersionSymbol(default, null) : String;
	
	/** Symbol: "encoding". */
	@:protected @:final @:static private static var fEncodingSymbol(default, null) : String;
	
	/** Symbol: "standalone". */
	@:protected @:final @:static private static var fStandaloneSymbol(default, null) : String;
	
	/** Symbol: "amp". */
	@:protected @:final @:static private static var fAmpSymbol(default, null) : String;
	
	/** Symbol: "lt". */
	@:protected @:final @:static private static var fLtSymbol(default, null) : String;
	
	/** Symbol: "gt". */
	@:protected @:final @:static private static var fGtSymbol(default, null) : String;
	
	/** Symbol: "quot". */
	@:protected @:final @:static private static var fQuotSymbol(default, null) : String;
	
	/** Symbol: "apos". */
	@:protected @:final @:static private static var fAposSymbol(default, null) : String;
	
	@:protected private var fResourceIdentifier : com.sun.org.apache.xerces.internal.util.XMLResourceIdentifierImpl;
	
	/**
	*
	*
	* @param componentManager The component manager.
	*
	* @throws SAXException Throws exception if required features and
	*                      properties cannot be found.
	*/
	@:overload @:public public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	@:overload @:protected private function setPropertyManager(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Sets the value of a property during parsing.
	*
	* @param propertyId
	* @param value
	*/
	@:overload @:public public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/*
	* Sets the feature of the scanner.
	*/
	@:overload @:public public function setFeature(featureId : String, value : Bool) : Void;
	
	/*
	* Gets the state of the feature of the scanner.
	*/
	@:overload @:public public function getFeature(featureId : String) : Bool;
	
	@:overload @:protected private function reset() : Void;
	
	@:overload @:public public function reset(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Scans an XML or text declaration.
	* <p>
	* <pre>
	* [23] XMLDecl ::= '<?xml' VersionInfo EncodingDecl? SDDecl? S? '?>'
	* [24] VersionInfo ::= S 'version' Eq (' VersionNum ' | " VersionNum ")
	* [80] EncodingDecl ::= S 'encoding' Eq ('"' EncName '"' |  "'" EncName "'" )
	* [81] EncName ::= [A-Za-z] ([A-Za-z0-9._] | '-')*
	* [32] SDDecl ::= S 'standalone' Eq (("'" ('yes' | 'no') "'")
	*                 | ('"' ('yes' | 'no') '"'))
	*
	* [77] TextDecl ::= '<?xml' VersionInfo? EncodingDecl S? '?>'
	* </pre>
	*
	* @param scanningTextDecl True if a text declaration is to
	*                         be scanned instead of an XML
	*                         declaration.
	* @param pseudoAttributeValues An array of size 3 to return the version,
	*                         encoding and standalone pseudo attribute values
	*                         (in that order).
	*
	* <strong>Note:</strong> This method uses fString, anything in it
	* at the time of calling is lost.
	*/
	@:overload @:protected private function scanXMLDeclOrTextDecl(scanningTextDecl : Bool, pseudoAttributeValues : java.NativeArray<String>) : Void;
	
	/**
	* Scans a pseudo attribute.
	*
	* @param scanningTextDecl True if scanning this pseudo-attribute for a
	*                         TextDecl; false if scanning XMLDecl. This
	*                         flag is needed to report the correct type of
	*                         error.
	* @param value            The string to fill in with the attribute
	*                         value.
	*
	* @return The name of the attribute
	*
	* <strong>Note:</strong> This method uses fStringBuffer2, anything in it
	* at the time of calling is lost.
	*/
	@:overload @:public public function scanPseudoAttribute(scanningTextDecl : Bool, value : com.sun.org.apache.xerces.internal.xni.XMLString) : String;
	
	/**
	* Scans a processing instruction.
	* <p>
	* <pre>
	* [16] PI ::= '&lt;?' PITarget (S (Char* - (Char* '?>' Char*)))? '?>'
	* [17] PITarget ::= Name - (('X' | 'x') ('M' | 'm') ('L' | 'l'))
	* </pre>
	*/
	@:overload @:protected private function scanPI(data : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Void;
	
	/**
	* Scans a processing data. This is needed to handle the situation
	* where a document starts with a processing instruction whose
	* target name <em>starts with</em> "xml". (e.g. xmlfoo)
	*
	* This method would always read the whole data. We have while loop and data is buffered
	* until delimeter is encountered.
	*
	* @param target The PI target
	* @param data The string to fill in with the data
	*/
	@:overload @:protected private function scanPIData(target : String, data : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Void;
	
	/**
	* Scans a comment.
	* <p>
	* <pre>
	* [15] Comment ::= '&lt!--' ((Char - '-') | ('-' (Char - '-')))* '-->'
	* </pre>
	* <p>
	* <strong>Note:</strong> Called after scanning past '&lt;!--'
	* <strong>Note:</strong> This method uses fString, anything in it
	* at the time of calling is lost.
	*
	* @param text The buffer to fill in with the text.
	*/
	@:overload @:protected private function scanComment(text : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Void;
	
	/**
	* Scans an attribute value and normalizes whitespace converting all
	* whitespace characters to space characters.
	*
	* [10] AttValue ::= '"' ([^<&"] | Reference)* '"' | "'" ([^<&'] | Reference)* "'"
	*
	* @param value The XMLString to fill in with the value.
	* @param nonNormalizedValue The XMLString to fill in with the
	*                           non-normalized value.
	* @param atName The name of the attribute being parsed (for error msgs).
	* @param attributes The attributes list for the scanned attribute.
	* @param attrIndex The index of the attribute to use from the list.
	* @param checkEntities true if undeclared entities should be reported as VC violation,
	*                      false if undeclared entities should be reported as WFC violation.
	*
	* <strong>Note:</strong> This method uses fStringBuffer2, anything in it
	* at the time of calling is lost.
	**/
	@:overload @:protected private function scanAttributeValue(value : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedValue : com.sun.org.apache.xerces.internal.xni.XMLString, atName : String, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, attrIndex : Int, checkEntities : Bool) : Void;
	
	/**
	* Scans External ID and return the public and system IDs.
	*
	* @param identifiers An array of size 2 to return the system id,
	*                    and public id (in that order).
	* @param optionalSystemId Specifies whether the system id is optional.
	*
	* <strong>Note:</strong> This method uses fString and fStringBuffer,
	* anything in them at the time of calling is lost.
	*/
	@:overload @:protected private function scanExternalID(identifiers : java.NativeArray<String>, optionalSystemId : Bool) : Void;
	
	/**
	* Scans public ID literal.
	*
	* [12] PubidLiteral ::= '"' PubidChar* '"' | "'" (PubidChar - "'")* "'"
	* [13] PubidChar::= #x20 | #xD | #xA | [a-zA-Z0-9] | [-'()+,./:=?;!*#@$_%]
	*
	* The returned string is normalized according to the following rule,
	* from http://www.w3.org/TR/REC-xml#dt-pubid:
	*
	* Before a match is attempted, all strings of white space in the public
	* identifier must be normalized to single space characters (#x20), and
	* leading and trailing white space must be removed.
	*
	* @param literal The string to fill in with the public ID literal.
	* @return True on success.
	*
	* <strong>Note:</strong> This method uses fStringBuffer, anything in it at
	* the time of calling is lost.
	*/
	@:overload @:protected private function scanPubidLiteral(literal : com.sun.org.apache.xerces.internal.xni.XMLString) : Bool;
	
	/**
	* Normalize whitespace in an XMLString converting all whitespace
	* characters to space characters.
	*/
	@:overload @:protected private function normalizeWhitespace(value : com.sun.org.apache.xerces.internal.xni.XMLString) : Void;
	
	/**
	* This method notifies of the start of an entity. The document entity
	* has the pseudo-name of "[xml]" the DTD has the pseudo-name of "[dtd]"
	* parameter entity names start with '%'; and general entities are just
	* specified by their name.
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
	@:overload @:public public function startEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the end of an entity. The document entity has
	* the pseudo-name of "[xml]" the DTD has the pseudo-name of "[dtd]"
	* parameter entity names start with '%'; and general entities are just
	* specified by their name.
	*
	* @param name The name of the entity.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function endEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Scans a character reference and append the corresponding chars to the
	* specified buffer.
	*
	* <p>
	* <pre>
	* [66] CharRef ::= '&#' [0-9]+ ';' | '&#x' [0-9a-fA-F]+ ';'
	* </pre>
	*
	* <strong>Note:</strong> This method uses fStringBuffer, anything in it
	* at the time of calling is lost.
	*
	* @param buf the character buffer to append chars to
	* @param buf2 the character buffer to append non-normalized chars to
	*
	* @return the character value or (-1) on conversion failure
	*/
	@:overload @:protected private function scanCharReferenceValue(buf : com.sun.org.apache.xerces.internal.util.XMLStringBuffer, buf2 : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Int;
	
	@:overload @:protected private function isInvalid(value : Int) : Bool;
	
	@:overload @:protected private function isInvalidLiteral(value : Int) : Bool;
	
	@:overload @:protected private function isValidNameChar(value : Int) : Bool;
	
	@:overload @:protected private function isValidNCName(value : Int) : Bool;
	
	@:overload @:protected private function isValidNameStartChar(value : Int) : Bool;
	
	@:overload @:protected private function versionSupported(version : String) : Bool;
	
	/**
	* Scans surrogates and append them to the specified buffer.
	* <p>
	* <strong>Note:</strong> This assumes the current char has already been
	* identified as a high surrogate.
	*
	* @param buf The StringBuffer to append the read surrogates to.
	* @return True if it succeeded.
	*/
	@:overload @:protected private function scanSurrogates(buf : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Bool;
	
	/**
	* Convenience function used in all XML scanners.
	*/
	@:overload @:protected private function reportFatalError(msgId : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Returns the default state for a feature, or null if this
	* component does not want to report a default value for this
	* feature.
	*
	* @param featureId The feature identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload @:public @:public public function getFeatureDefault(featureId : String) : Null<Bool>;
	
	/**
	* Returns the default state for a property, or null if this
	* component does not want to report a default value for this
	* property.
	*
	* @param propertyId The property identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload @:public @:public public function getPropertyDefault(propertyId : String) : Dynamic;
	
	/**
	* Returns a list of property identifiers that are recognized by
	* this component. This method may return null if no properties
	* are recognized by this component.
	*/
	@:overload @:public @:public public function getRecognizedProperties() : java.NativeArray<String>;
	
	/**
	* Returns a list of feature identifiers that are recognized by
	* this component. This method may return null if no features
	* are recognized by this component.
	*/
	@:overload @:public @:public public function getRecognizedFeatures() : java.NativeArray<String>;
	
	
}
