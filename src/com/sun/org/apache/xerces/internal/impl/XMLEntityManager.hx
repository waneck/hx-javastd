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
extern class XMLEntityManager implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent implements com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver
{
	/** Default buffer size (2048). */
	@:public @:static @:final public static var DEFAULT_BUFFER_SIZE(default, null) : Int;
	
	/** Default buffer size before we've finished with the XMLDecl:  */
	@:public @:static @:final public static var DEFAULT_XMLDECL_BUFFER_SIZE(default, null) : Int;
	
	/** Default internal entity buffer size (1024). */
	@:public @:static @:final public static var DEFAULT_INTERNAL_BUFFER_SIZE(default, null) : Int;
	
	/** Feature identifier: validation. */
	@:protected @:static @:final private static var VALIDATION(default, null) : String;
	
	/**
	* standard uri conformant (strict uri).
	* http://apache.org/xml/features/standard-uri-conformant
	*/
	@:protected private var fStrictURI : Bool;
	
	/** Feature identifier: external general entities. */
	@:protected @:static @:final private static var EXTERNAL_GENERAL_ENTITIES(default, null) : String;
	
	/** Feature identifier: external parameter entities. */
	@:protected @:static @:final private static var EXTERNAL_PARAMETER_ENTITIES(default, null) : String;
	
	/** Feature identifier: allow Java encodings. */
	@:protected @:static @:final private static var ALLOW_JAVA_ENCODINGS(default, null) : String;
	
	/** Feature identifier: warn on duplicate EntityDef */
	@:protected @:static @:final private static var WARN_ON_DUPLICATE_ENTITYDEF(default, null) : String;
	
	/** Property identifier: symbol table. */
	@:protected @:static @:final private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error reporter. */
	@:protected @:static @:final private static var ERROR_REPORTER(default, null) : String;
	
	/** Feature identifier: standard uri conformant */
	@:protected @:static @:final private static var STANDARD_URI_CONFORMANT(default, null) : String;
	
	/** Property identifier: entity resolver. */
	@:protected @:static @:final private static var ENTITY_RESOLVER(default, null) : String;
	
	@:protected @:static @:final private static var STAX_ENTITY_RESOLVER(default, null) : String;
	
	@:protected @:static @:final private static var VALIDATION_MANAGER(default, null) : String;
	
	/** property identifier: buffer size. */
	@:protected @:static @:final private static var BUFFER_SIZE(default, null) : String;
	
	/** property identifier: security manager. */
	@:protected @:static @:final private static var SECURITY_MANAGER(default, null) : String;
	
	@:protected @:static @:final private static var PARSER_SETTINGS(default, null) : String;
	
	/** warn on duplicate Entity declaration.
	*  http://apache.org/xml/features/warn-on-duplicate-entitydef
	*/
	@:protected private var fWarnDuplicateEntityDef : Bool;
	
	/**
	* Validation. This feature identifier is:
	* http://xml.org/sax/features/validation
	*/
	@:protected private var fValidation : Bool;
	
	/**
	* External general entities. This feature identifier is:
	* http://xml.org/sax/features/external-general-entities
	*/
	@:protected private var fExternalGeneralEntities : Bool;
	
	/**
	* External parameter entities. This feature identifier is:
	* http://xml.org/sax/features/external-parameter-entities
	*/
	@:protected private var fExternalParameterEntities : Bool;
	
	/**
	* Allow Java encoding names. This feature identifier is:
	* http://apache.org/xml/features/allow-java-encodings
	*/
	@:protected private var fAllowJavaEncodings : Bool;
	
	/**
	* Symbol table. This property identifier is:
	* http://apache.org/xml/properties/internal/symbol-table
	*/
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/**
	* Error reporter. This property identifier is:
	* http://apache.org/xml/properties/internal/error-reporter
	*/
	@:protected private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/**
	* Entity resolver. This property identifier is:
	* http://apache.org/xml/properties/internal/entity-resolver
	*/
	@:protected private var fEntityResolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
	
	/** Stax Entity Resolver. This property identifier is XMLInputFactory.ENTITY_RESOLVER */
	@:protected private var fStaxEntityResolver : com.sun.xml.internal.stream.StaxEntityResolverWrapper;
	
	/** Property Manager. This is used from Stax */
	@:protected private var fPropertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager;
	
	/**
	* Validation manager. This property identifier is:
	* http://apache.org/xml/properties/internal/validation-manager
	*/
	@:protected private var fValidationManager : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	/**
	* Buffer size. We get this value from a property. The default size
	* is used if the input buffer size property is not specified.
	* REVISIT: do we need a property for internal entity buffer size?
	*/
	@:protected private var fBufferSize : Int;
	
	@:protected private var fSecurityManager : com.sun.org.apache.xerces.internal.util.SecurityManager;
	
	/**
	* True if the document entity is standalone. This should really
	* only be set by the document source (e.g. XMLDocumentScanner).
	*/
	@:protected private var fStandalone : Bool;
	
	@:protected private var fInExternalSubset : Bool;
	
	/** Entity handler. */
	@:protected private var fEntityHandler : com.sun.org.apache.xerces.internal.impl.XMLEntityHandler;
	
	/** Current entity scanner */
	@:protected private var fEntityScanner : com.sun.org.apache.xerces.internal.impl.XMLEntityScanner;
	
	/** XML 1.0 entity scanner. */
	@:protected private var fXML10EntityScanner : com.sun.org.apache.xerces.internal.impl.XMLEntityScanner;
	
	/** XML 1.1 entity scanner. */
	@:protected private var fXML11EntityScanner : com.sun.org.apache.xerces.internal.impl.XMLEntityScanner;
	
	/** entity expansion limit (contains useful data if and only if
	fSecurityManager is non-null) */
	@:protected private var fEntityExpansionLimit : Int;
	
	/** count of entities expanded: */
	@:protected private var fEntityExpansionCount : Int;
	
	/** Entities. */
	@:protected private var fEntities : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** Entity stack. */
	@:protected private var fEntityStack : java.util.Stack<Dynamic>;
	
	/** Current entity. */
	@:protected private var fCurrentEntity : com.sun.xml.internal.stream.Entity.Entity_ScannedEntity;
	
	@:protected private var fEntityStorage : com.sun.xml.internal.stream.XMLEntityStorage;
	
	@:protected @:final private var defaultEncoding(default, null) : java.NativeArray<Dynamic>;
	
	/**
	* If this constructor is used to create the object, reset() should be invoked on this object
	*/
	@:overload @:public public function new() : Void;
	
	/** Default constructor. */
	@:overload @:public public function new(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Adds an internal entity declaration.
	* <p>
	* <strong>Note:</strong> This method ignores subsequent entity
	* declarations.
	* <p>
	* <strong>Note:</strong> The name should be a unique symbol. The
	* SymbolTable can be used for this purpose.
	*
	* @param name The name of the entity.
	* @param text The text of the entity.
	*
	* @see SymbolTable
	*/
	@:overload @:public public function addInternalEntity(name : String, text : String) : Void;
	
	/**
	* Adds an external entity declaration.
	* <p>
	* <strong>Note:</strong> This method ignores subsequent entity
	* declarations.
	* <p>
	* <strong>Note:</strong> The name should be a unique symbol. The
	* SymbolTable can be used for this purpose.
	*
	* @param name         The name of the entity.
	* @param publicId     The public identifier of the entity.
	* @param literalSystemId     The system identifier of the entity.
	* @param baseSystemId The base system identifier of the entity.
	*                     This is the system identifier of the entity
	*                     where <em>the entity being added</em> and
	*                     is used to expand the system identifier when
	*                     the system identifier is a relative URI.
	*                     When null the system identifier of the first
	*                     external entity on the stack is used instead.
	*
	* @see SymbolTable
	*/
	@:overload @:public public function addExternalEntity(name : String, publicId : String, literalSystemId : String, baseSystemId : String) : Void;
	
	/**
	* Adds an unparsed entity declaration.
	* <p>
	* <strong>Note:</strong> This method ignores subsequent entity
	* declarations.
	* <p>
	* <strong>Note:</strong> The name should be a unique symbol. The
	* SymbolTable can be used for this purpose.
	*
	* @param name     The name of the entity.
	* @param publicId The public identifier of the entity.
	* @param systemId The system identifier of the entity.
	* @param notation The name of the notation.
	*
	* @see SymbolTable
	*/
	@:overload @:public public function addUnparsedEntity(name : String, publicId : String, systemId : String, baseSystemId : String, notation : String) : Void;
	
	/** get the entity storage object from entity manager */
	@:overload @:public public function getEntityStore() : com.sun.xml.internal.stream.XMLEntityStorage;
	
	/** return the entity responsible for reading the entity */
	@:overload @:public public function getEntityScanner() : com.sun.org.apache.xerces.internal.impl.XMLEntityScanner;
	
	@:overload @:public public function setScannerVersion(version : java.StdTypes.Int16) : Void;
	
	/**
	* This method uses the passed-in XMLInputSource to make
	* fCurrentEntity usable for reading.
	* @param name  name of the entity (XML is it's the document entity)
	* @param xmlInputSource    the input source, with sufficient information
	*      to begin scanning characters.
	* @param literal        True if this entity is started within a
	*                       literal value.
	* @param isExternal    whether this entity should be treated as an internal or external entity.
	* @throws IOException  if anything can't be read
	*  XNIException    If any parser-specific goes wrong.
	* @return the encoding of the new entity or null if a character stream was employed
	*/
	@:overload @:public public function setupCurrentEntity(name : String, xmlInputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource, literal : Bool, isExternal : Bool) : String;
	
	/**
	* Checks whether an entity given by name is external.
	*
	* @param entityName The name of the entity to check.
	* @return True if the entity is external, false otherwise
	* (including when the entity is not declared).
	*/
	@:overload @:public public function isExternalEntity(entityName : String) : Bool;
	
	/**
	* Checks whether the declaration of an entity given by name is
	* // in the external subset.
	*
	* @param entityName The name of the entity to check.
	* @return True if the entity was declared in the external subset, false otherwise
	*           (including when the entity is not declared).
	*/
	@:overload @:public public function isEntityDeclInExternalSubset(entityName : String) : Bool;
	
	/**
	* Sets whether the document entity is standalone.
	*
	* @param standalone True if document entity is standalone.
	*/
	@:overload @:public public function setStandalone(standalone : Bool) : Void;
	
	/** Returns true if the document entity is standalone. */
	@:overload @:public public function isStandalone() : Bool;
	
	@:overload @:public public function isDeclaredEntity(entityName : String) : Bool;
	
	@:overload @:public public function isUnparsedEntity(entityName : String) : Bool;
	
	@:overload @:public public function getCurrentResourceIdentifier() : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
	
	/**
	* Sets the entity handler. When an entity starts and ends, the
	* entity handler is notified of the change.
	*
	* @param entityHandler The new entity handler.
	*/
	@:overload @:public public function setEntityHandler(entityHandler : com.sun.org.apache.xerces.internal.impl.XMLEntityHandler) : Void;
	
	@:overload @:public public function resolveEntityAsPerStax(resourceIdentifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier) : com.sun.xml.internal.stream.StaxXMLInputSource;
	
	/**
	* Resolves the specified public and system identifiers. This
	* method first attempts to resolve the entity based on the
	* EntityResolver registered by the application. If no entity
	* resolver is registered or if the registered entity handler
	* is unable to resolve the entity, then default entity
	* resolution will occur.
	*
	* @param publicId     The public identifier of the entity.
	* @param systemId     The system identifier of the entity.
	* @param baseSystemId The base system identifier of the entity.
	*                     This is the system identifier of the current
	*                     entity and is used to expand the system
	*                     identifier when the system identifier is a
	*                     relative URI.
	*
	* @return Returns an input source that wraps the resolved entity.
	*         This method will never return null.
	*
	* @throws IOException  Thrown on i/o error.
	* @throws XNIException Thrown by entity resolver to signal an error.
	*/
	@:overload @:public public function resolveEntity(resourceIdentifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier) : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	/**
	* Starts a named entity.
	*
	* @param entityName The name of the entity to start.
	* @param literal    True if this entity is started within a literal
	*                   value.
	*
	* @throws IOException  Thrown on i/o error.
	* @throws XNIException Thrown by entity handler to signal an error.
	*/
	@:overload @:public public function startEntity(entityName : String, literal : Bool) : Void;
	
	/**
	* Starts the document entity. The document entity has the "[xml]"
	* pseudo-name.
	*
	* @param xmlInputSource The input source of the document entity.
	*
	* @throws IOException  Thrown on i/o error.
	* @throws XNIException Thrown by entity handler to signal an error.
	*/
	@:overload @:public public function startDocumentEntity(xmlInputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* Starts the DTD entity. The DTD entity has the "[dtd]"
	* pseudo-name.
	*
	* @param xmlInputSource The input source of the DTD entity.
	*
	* @throws IOException  Thrown on i/o error.
	* @throws XNIException Thrown by entity handler to signal an error.
	*/
	@:overload @:public public function startDTDEntity(xmlInputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	@:overload @:public public function startExternalSubset() : Void;
	
	@:overload @:public public function endExternalSubset() : Void;
	
	/**
	* Starts an entity.
	* <p>
	* This method can be used to insert an application defined XML
	* entity stream into the parsing stream.
	*
	* @param name           The name of the entity.
	* @param xmlInputSource The input source of the entity.
	* @param literal        True if this entity is started within a
	*                       literal value.
	* @param isExternal    whether this entity should be treated as an internal or external entity.
	*
	* @throws IOException  Thrown on i/o error.
	* @throws XNIException Thrown by entity handler to signal an error.
	*/
	@:overload @:public public function startEntity(name : String, xmlInputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource, literal : Bool, isExternal : Bool) : Void;
	
	/**
	* Return the current entity being scanned. Current entity is SET using startEntity function.
	* @return Entity.ScannedEntity
	*/
	@:overload @:public public function getCurrentEntity() : com.sun.xml.internal.stream.Entity.Entity_ScannedEntity;
	
	/**
	* Return the top level entity handled by this manager, or null
	* if no entity was added.
	*/
	@:overload @:public public function getTopLevelEntity() : com.sun.xml.internal.stream.Entity.Entity_ScannedEntity;
	
	/**
	* Close all opened InputStreams and Readers opened by this parser.
	*/
	@:overload @:public public function closeReaders() : Void;
	
	@:overload @:public public function endEntity() : Void;
	
	@:overload @:public public function reset(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
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
	@:overload @:public public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	@:overload @:public public function reset() : Void;
	
	/**
	* Returns a list of feature identifiers that are recognized by
	* this component. This method may return null if no features
	* are recognized by this component.
	*/
	@:overload @:public public function getRecognizedFeatures() : java.NativeArray<String>;
	
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
	@:overload @:public public function setFeature(featureId : String, state : Bool) : Void;
	
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
	@:overload @:public public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Returns a list of property identifiers that are recognized by
	* this component. This method may return null if no properties
	* are recognized by this component.
	*/
	@:overload @:public public function getRecognizedProperties() : java.NativeArray<String>;
	
	/**
	* Returns the default state for a feature, or null if this
	* component does not want to report a default value for this
	* feature.
	*
	* @param featureId The feature identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload @:public public function getFeatureDefault(featureId : String) : Null<Bool>;
	
	/**
	* Returns the default state for a property, or null if this
	* component does not want to report a default value for this
	* property.
	*
	* @param propertyId The property identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload @:public public function getPropertyDefault(propertyId : String) : Dynamic;
	
	/**
	* Expands a system id and returns the system id as a URI, if
	* it can be expanded. A return value of null means that the
	* identifier is already expanded. An exception thrown
	* indicates a failure to expand the id.
	*
	* @param systemId The systemId to be expanded.
	*
	* @return Returns the URI string representing the expanded system
	*         identifier. A null value indicates that the given
	*         system identifier is already expanded.
	*
	*/
	@:overload @:public @:static public static function expandSystemId(systemId : String) : String;
	
	/**
	* Absolutizes a URI using the current value
	* of the "user.dir" property as the base URI. If
	* the URI is already absolute, this is a no-op.
	*
	* @param uri the URI to absolutize
	*/
	@:overload @:public @:static public static function absolutizeAgainstUserDir(uri : com.sun.org.apache.xerces.internal.util.URI) : Void;
	
	/**
	* Expands a system id and returns the system id as a URI, if
	* it can be expanded. A return value of null means that the
	* identifier is already expanded. An exception thrown
	* indicates a failure to expand the id.
	*
	* @param systemId The systemId to be expanded.
	*
	* @return Returns the URI string representing the expanded system
	*         identifier. A null value indicates that the given
	*         system identifier is already expanded.
	*
	*/
	@:overload @:public @:static public static function expandSystemId(systemId : String, baseSystemId : String) : String;
	
	/**
	* Expands a system id and returns the system id as a URI, if
	* it can be expanded. A return value of null means that the
	* identifier is already expanded. An exception thrown
	* indicates a failure to expand the id.
	*
	* @param systemId The systemId to be expanded.
	*
	* @return Returns the URI string representing the expanded system
	*         identifier. A null value indicates that the given
	*         system identifier is already expanded.
	*
	*/
	@:overload @:public @:static public static function expandSystemId(systemId : String, baseSystemId : String, strict : Bool) : String;
	
	/**
	* Attempt to set whether redirects will be followed for an <code>HttpURLConnection</code>.
	* This may fail on earlier JDKs which do not support setting this preference.
	*/
	@:overload @:public @:static public static function setInstanceFollowRedirects(urlCon : java.net.HttpURLConnection, followRedirects : Bool) : Void;
	
	/**
	* Returns the IANA encoding name that is auto-detected from
	* the bytes specified, with the endian-ness of that encoding where appropriate.
	*
	* @param b4    The first four bytes of the input.
	* @param count The number of bytes actually read.
	* @return a 2-element array:  the first element, an IANA-encoding string,
	*  the second element a Boolean which is true iff the document is big endian, false
	*  if it's little-endian, and null if the distinction isn't relevant.
	*/
	@:overload @:protected private function getEncodingName(b4 : java.NativeArray<java.StdTypes.Int8>, count : Int) : java.NativeArray<Dynamic>;
	
	/**
	* Creates a reader capable of reading the given input stream in
	* the specified encoding.
	*
	* @param inputStream  The input stream.
	* @param encoding     The encoding name that the input stream is
	*                     encoded using. If the user has specified that
	*                     Java encoding names are allowed, then the
	*                     encoding name may be a Java encoding name;
	*                     otherwise, it is an ianaEncoding name.
	* @param isBigEndian   For encodings (like uCS-4), whose names cannot
	*                      specify a byte order, this tells whether the order is bigEndian.  null menas
	*                      unknown or not relevant.
	*
	* @return Returns a reader.
	*/
	@:overload @:protected private function createReader(inputStream : java.io.InputStream, encoding : String, isBigEndian : Null<Bool>) : java.io.Reader;
	
	/**
	* Return the public identifier for the current document event.
	* <p>
	* The return value is the public identifier of the document
	* entity or of the external parsed entity in which the markup
	* triggering the event appears.
	*
	* @return A string containing the public identifier, or
	*         null if none is available.
	*/
	@:overload @:public public function getPublicId() : String;
	
	/**
	* Return the expanded system identifier for the current document event.
	* <p>
	* The return value is the expanded system identifier of the document
	* entity or of the external parsed entity in which the markup
	* triggering the event appears.
	* <p>
	* If the system identifier is a URL, the parser must resolve it
	* fully before passing it to the application.
	*
	* @return A string containing the expanded system identifier, or null
	*         if none is available.
	*/
	@:overload @:public public function getExpandedSystemId() : String;
	
	/**
	* Return the literal system identifier for the current document event.
	* <p>
	* The return value is the literal system identifier of the document
	* entity or of the external parsed entity in which the markup
	* triggering the event appears.
	* <p>
	* @return A string containing the literal system identifier, or null
	*         if none is available.
	*/
	@:overload @:public public function getLiteralSystemId() : String;
	
	/**
	* Return the line number where the current document event ends.
	* <p>
	* <strong>Warning:</strong> The return value from the method
	* is intended only as an approximation for the sake of error
	* reporting; it is not intended to provide sufficient information
	* to edit the character content of the original XML document.
	* <p>
	* The return value is an approximation of the line number
	* in the document entity or external parsed entity where the
	* markup triggering the event appears.
	* <p>
	* If possible, the SAX driver should provide the line position
	* of the first character after the text associated with the document
	* event.  The first line in the document is line 1.
	*
	* @return The line number, or -1 if none is available.
	*/
	@:overload @:public public function getLineNumber() : Int;
	
	/**
	* Return the column number where the current document event ends.
	* <p>
	* <strong>Warning:</strong> The return value from the method
	* is intended only as an approximation for the sake of error
	* reporting; it is not intended to provide sufficient information
	* to edit the character content of the original XML document.
	* <p>
	* The return value is an approximation of the column number
	* in the document entity or external parsed entity where the
	* markup triggering the event appears.
	* <p>
	* If possible, the SAX driver should provide the line position
	* of the first character after the text associated with the document
	* event.
	* <p>
	* If possible, the SAX driver should provide the line position
	* of the first character after the text associated with the document
	* event.  The first column in each line is column 1.
	*
	* @return The column number, or -1 if none is available.
	*/
	@:overload @:public public function getColumnNumber() : Int;
	
	/**
	* Fixes a platform dependent filename to standard URI form.
	*
	* @param str The string to fix.
	*
	* @return Returns the fixed URI string.
	*/
	@:overload @:protected @:static private static function fixURI(str : String) : String;
	
	/**
	* Escape invalid URI characters.
	*
	* Passed a URI that contains invalid characters (like spaces, non-ASCII Unicode characters, and the like),
	* this function percent encodes the invalid characters per the URI specification (i.e., as a sequence of
	* %-encoded UTF-8 octets).
	*
	* N.B. There are two problems. If the URI contains a '%' character, that might be an indication that
	* the URI has already been escaped by the author, or it might be an invalid '%'. In the former case,
	* it's important not to escape it, or we'll wind up with invalid, doubly-escaped '%'s. In the latter,
	* the URI is broken if we don't encode it. Similarly, a '#' character might be the start of a fragment
	* identifier or it might be an invalid '#'.
	*
	* Given that the former is vastly more likely than the latter in each case (most users are familiar with
	* the magic status of '%' and '#' and they occur relatively infrequently in filenames, and if the user parses
	* a proper Java File, we will already have %-escaped the URI), we simply assume that %'s and #'s are legit.
	*
	* Very rarely, we may be wrong. If so, tell the user to fix the clearly broken URI.
	*/
	@:overload @:protected @:static private static function escapeNonUSAscii(str : String) : String;
	
	@:overload @:public public function test() : Void;
	
	
}
/**
* Buffer used in entity manager to reuse character arrays instead
* of creating new ones every time.
*
* @xerces.internal
*
* @author Ankit Pasricha, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLEntityManager$CharacterBuffer') @:internal extern class XMLEntityManager_CharacterBuffer
{
	@:overload @:public public function new(isExternal : Bool, size : Int) : Void;
	
	
}
/**
* Stores a number of character buffers and provides it to the entity
* manager to use when an entity is seen.
*
* @xerces.internal
*
* @author Ankit Pasricha, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLEntityManager$CharacterBufferPool') @:internal extern class XMLEntityManager_CharacterBufferPool
{
	@:overload @:public public function new(externalBufferSize : Int, internalBufferSize : Int) : Void;
	
	@:overload @:public public function new(poolSize : Int, externalBufferSize : Int, internalBufferSize : Int) : Void;
	
	/** Retrieves buffer from pool. **/
	@:overload @:public public function getBuffer(external : Bool) : com.sun.org.apache.xerces.internal.impl.XMLEntityManager.XMLEntityManager_CharacterBuffer;
	
	/** Returns buffer to pool. **/
	@:overload @:public public function returnToPool(buffer : com.sun.org.apache.xerces.internal.impl.XMLEntityManager.XMLEntityManager_CharacterBuffer) : Void;
	
	/** Sets the size of external buffers and dumps the old pool. **/
	@:overload @:public public function setExternalBufferSize(bufferSize : Int) : Void;
	
	
}
/**
* This class wraps the byte inputstreams we're presented with.
* We need it because java.io.InputStreams don't provide
* functionality to reread processed bytes, and they have a habit
* of reading more than one character when you call their read()
* methods.  This means that, once we discover the true (declared)
* encoding of a document, we can neither backtrack to read the
* whole doc again nor start reading where we are with a new
* reader.
*
* This class allows rewinding an inputStream by allowing a mark
* to be set, and the stream reset to that position.  <strong>The
* class assumes that it needs to read one character per
* invocation when it's read() method is inovked, but uses the
* underlying InputStream's read(char[], offset length) method--it
* won't buffer data read this way!</strong>
*
* @xerces.internal
*
* @author Neil Graham, IBM
* @author Glenn Marcy, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLEntityManager$RewindableInputStream') extern class XMLEntityManager_RewindableInputStream extends java.io.InputStream
{
	@:overload @:public public function new(is : java.io.InputStream) : Void;
	
	@:overload @:public public function setStartOffset(offset : Int) : Void;
	
	@:overload @:public public function rewind() : Void;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload @:public override public function available() : Int;
	
	@:overload @:public override public function mark(howMuch : Int) : Void;
	
	@:overload @:public override public function reset() : Void;
	
	@:overload @:public override public function markSupported() : Bool;
	
	@:overload @:public override public function close() : Void;
	
	
}
