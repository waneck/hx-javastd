package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
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
extern class XMLSchemaValidator implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent implements com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentFilter implements com.sun.org.apache.xerces.internal.impl.xs.identity.FieldActivator implements com.sun.org.apache.xerces.internal.impl.RevalidationHandler
{
	/** Feature identifier: validation. */
	private static var VALIDATION(default, null) : String;
	
	/** Feature identifier: validation. */
	private static var SCHEMA_VALIDATION(default, null) : String;
	
	/** Feature identifier: schema full checking*/
	private static var SCHEMA_FULL_CHECKING(default, null) : String;
	
	/** Feature identifier: dynamic validation. */
	private static var DYNAMIC_VALIDATION(default, null) : String;
	
	/** Feature identifier: expose schema normalized value */
	private static var NORMALIZE_DATA(default, null) : String;
	
	/** Feature identifier: send element default value via characters() */
	private static var SCHEMA_ELEMENT_DEFAULT(default, null) : String;
	
	/** Feature identifier: augment PSVI */
	private static var SCHEMA_AUGMENT_PSVI(default, null) : String;
	
	/** Feature identifier: whether to recognize java encoding names */
	private static var ALLOW_JAVA_ENCODINGS(default, null) : String;
	
	/** Feature identifier: standard uri conformant feature. */
	private static var STANDARD_URI_CONFORMANT_FEATURE(default, null) : String;
	
	/** Feature: generate synthetic annotations */
	private static var GENERATE_SYNTHETIC_ANNOTATIONS(default, null) : String;
	
	/** Feature identifier: validate annotations. */
	private static var VALIDATE_ANNOTATIONS(default, null) : String;
	
	/** Feature identifier: honour all schemaLocations */
	private static var HONOUR_ALL_SCHEMALOCATIONS(default, null) : String;
	
	/** Feature identifier: use grammar pool only */
	private static var USE_GRAMMAR_POOL_ONLY(default, null) : String;
	
	/** Feature identifier: whether to continue parsing a schema after a fatal error is encountered */
	private static var CONTINUE_AFTER_FATAL_ERROR(default, null) : String;
	
	private static var PARSER_SETTINGS(default, null) : String;
	
	/** Feature identifier: namespace growth */
	private static var NAMESPACE_GROWTH(default, null) : String;
	
	/** Feature identifier: tolerate duplicates */
	private static var TOLERATE_DUPLICATES(default, null) : String;
	
	private static var REPORT_WHITESPACE(default, null) : String;
	
	/** Property identifier: symbol table. */
	public static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error reporter. */
	public static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: entity resolver. */
	public static var ENTITY_RESOLVER(default, null) : String;
	
	/** Property identifier: grammar pool. */
	public static var XMLGRAMMAR_POOL(default, null) : String;
	
	private static var VALIDATION_MANAGER(default, null) : String;
	
	private static var ENTITY_MANAGER(default, null) : String;
	
	/** Property identifier: schema location. */
	private static var SCHEMA_LOCATION(default, null) : String;
	
	/** Property identifier: no namespace schema location. */
	private static var SCHEMA_NONS_LOCATION(default, null) : String;
	
	/** Property identifier: JAXP schema source. */
	private static var JAXP_SCHEMA_SOURCE(default, null) : String;
	
	/** Property identifier: JAXP schema language. */
	private static var JAXP_SCHEMA_LANGUAGE(default, null) : String;
	
	/** Property identifier: Schema DV Factory */
	private static var SCHEMA_DV_FACTORY(default, null) : String;
	
	private static var USE_SERVICE_MECHANISM(default, null) : String;
	
	private static var ID_CONSTRAINT_NUM(default, null) : Int;
	
	/** current PSVI element info */
	private var fCurrentPSVI : com.sun.org.apache.xerces.internal.impl.xs.ElementPSVImpl;
	
	private var fAugmentations(default, null) : com.sun.org.apache.xerces.internal.util.AugmentationsImpl;
	
	/**
	* Map which is used to catch instance documents that try
	* and match a field several times in the same scope.
	*/
	private var fMayMatchFieldMap(default, null) : java.util.HashMap<Dynamic, Dynamic>;
	
	private var fDefaultValue : com.sun.org.apache.xerces.internal.xni.XMLString;
	
	private var fDynamicValidation : Bool;
	
	private var fSchemaDynamicValidation : Bool;
	
	private var fDoValidation : Bool;
	
	private var fFullChecking : Bool;
	
	private var fNormalizeData : Bool;
	
	private var fSchemaElementDefault : Bool;
	
	private var fAugPSVI : Bool;
	
	private var fIdConstraint : Bool;
	
	private var fUseGrammarPoolOnly : Bool;
	
	private var fNamespaceGrowth : Bool;
	
	private var fEntityRef : Bool;
	
	private var fInCDATA : Bool;
	
	private var fSawOnlyWhitespaceInElementContent : Bool;
	
	/** Symbol table. */
	private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Error reporter. */
	private var fXSIErrorReporter(default, null) : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_XSIErrorReporter;
	
	/** Entity resolver */
	private var fEntityResolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
	
	private var fValidationManager : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	private var fValidationState : com.sun.org.apache.xerces.internal.impl.validation.ValidationState;
	
	private var fGrammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	private var fExternalSchemas : String;
	
	private var fExternalNoNamespaceSchema : String;
	
	private var fJaxpSchemaSource : Dynamic;
	
	/** Schema Grammar Description passed,  to give a chance to application to supply the Grammar */
	private var fXSDDescription(default, null) : com.sun.org.apache.xerces.internal.impl.xs.XSDDescription;
	
	private var fLocationPairs(default, null) : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** Document handler. */
	private var fDocumentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	private var fDocumentSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	/**
	* Returns a list of feature identifiers that are recognized by
	* this component. This method may return null if no features
	* are recognized by this component.
	*/
	@:overload public function getRecognizedFeatures() : java.NativeArray<String>;
	
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
	@:overload public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Returns a list of property identifiers that are recognized by
	* this component. This method may return null if no properties
	* are recognized by this component.
	*/
	@:overload public function getRecognizedProperties() : java.NativeArray<String>;
	
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
	@:overload public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Returns the default state for a feature, or null if this
	* component does not want to report a default value for this
	* feature.
	*
	* @param featureId The feature identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload public function getFeatureDefault(featureId : String) : Null<Bool>;
	
	/**
	* Returns the default state for a property, or null if this
	* component does not want to report a default value for this
	* property.
	*
	* @param propertyId The property identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload public function getPropertyDefault(propertyId : String) : Dynamic;
	
	/** Sets the document handler to receive information about the document. */
	@:overload public function setDocumentHandler(documentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler) : Void;
	
	/** Returns the document handler */
	@:overload public function getDocumentHandler() : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	/** Sets the document source */
	@:overload public function setDocumentSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource) : Void;
	
	/** Returns the document source */
	@:overload public function getDocumentSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	/**
	* The start of the document.
	*
	* @param locator The system identifier of the entity if the entity
	*                 is external, null otherwise.
	* @param encoding The auto-detected IANA encoding name of the entity
	*                 stream. This value will be null in those situations
	*                 where the entity encoding is not auto-detected (e.g.
	*                 internal entities or a document entity that is
	*                 parsed from a java.io.Reader).
	* @param namespaceContext
	*                 The namespace context in effect at the
	*                 start of this document.
	*                 This object represents the current context.
	*                 Implementors of this class are responsible
	*                 for copying the namespace bindings from the
	*                 the current context (and its parent contexts)
	*                 if that information is important.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startDocument(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, encoding : String, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of an XMLDecl line in the document. If
	* present, this method will be called immediately following the
	* startDocument call.
	*
	* @param version    The XML version.
	* @param encoding   The IANA encoding name of the document, or null if
	*                   not specified.
	* @param standalone The standalone value, or null if not specified.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function xmlDecl(version : String, encoding : String, standalone : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of the DOCTYPE line in the document.
	*
	* @param rootElement The name of the root element.
	* @param publicId    The public identifier if an external DTD or null
	*                    if the external DTD is specified using SYSTEM.
	* @param systemId    The system identifier if an external DTD, null
	*                    otherwise.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function doctypeDecl(rootElement : String, publicId : String, systemId : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of an element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An empty element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Character content.
	*
	* @param text The content.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
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
	* @param text The ignorable whitespace.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an element.
	*
	* @param element The name of the element.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a CDATA section.
	*
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a CDATA section.
	*
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the document.
	*
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function characterData(data : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Bool;
	
	@:overload public function elementDefault(data : String) : Void;
	
	/**
	* This method notifies the start of a general entity.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
	*
	* @param name     The name of the general entity.
	* @param identifier The resource identifier.
	* @param encoding The auto-detected IANA encoding name of the entity
	*                 stream. This value will be null in those situations
	*                 where the entity encoding is not auto-detected (e.g.
	*                 internal entities or a document entity that is
	*                 parsed from a java.io.Reader).
	* @param augs     Additional information that may include infoset augmentations
	*
	* @exception XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startGeneralEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of a TextDecl line in an entity. If present,
	* this method will be called immediately following the startEntity call.
	* <p>
	* <strong>Note:</strong> This method will never be called for the
	* document entity; it is only called for external general entities
	* referenced in document content.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
	*
	* @param version  The XML version, or null if not specified.
	* @param encoding The IANA encoding name of the entity.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function textDecl(version : String, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A comment.
	*
	* @param text The text in the comment.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by application to signal an error.
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
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* This method notifies the end of a general entity.
	* <p>
	* <strong>Note:</strong> This method is not called for entity references
	* appearing as part of attribute values.
	*
	* @param name   The name of the entity.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @exception XNIException
	*                   Thrown by handler to signal an error.
	*/
	@:overload public function endGeneralEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Stack of active XPath matchers for identity constraints. All
	* active XPath matchers are notified of startElement
	* and endElement callbacks in order to perform their matches.
	* <p>
	* For each element with identity constraints, the selector of
	* each identity constraint is activated. When the selector matches
	* its XPath, then all the fields of the identity constraint are
	* activated.
	* <p>
	* <strong>Note:</strong> Once the activation scope is left, the
	* XPath matchers are automatically removed from the stack of
	* active matchers and no longer receive callbacks.
	*/
	private var fMatcherStack : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_XPathMatcherStack;
	
	/** Cache of value stores for identity constraint fields. */
	private var fValueStoreCache : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_ValueStoreCache;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/*
	* Resets the component. The component can query the component manager
	* about any features and properties that affect the operation of the
	* component.
	*
	* @param componentManager The component manager.
	*
	* @throws SAXException Thrown by component on finitialization error.
	*                      For example, if a feature or property is
	*                      required for the operation of the component, the
	*                      component manager may throw a
	*                      SAXNotRecognizedException or a
	*                      SAXNotSupportedException.
	*/
	@:overload public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* Start the value scope for the specified identity constraint. This
	* method is called when the selector matches in order to initialize
	* the value store.
	*
	* @param identityConstraint The identity constraint.
	*/
	@:overload public function startValueScopeFor(identityConstraint : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint, initialDepth : Int) : Void;
	
	/**
	* Request to activate the specified field. This method returns the
	* matcher for the field.
	*
	* @param field The field to activate.
	*/
	@:overload public function activateField(field : com.sun.org.apache.xerces.internal.impl.xs.identity.Field, initialDepth : Int) : com.sun.org.apache.xerces.internal.impl.xs.identity.XPathMatcher;
	
	/**
	* Ends the value scope for the specified identity constraint.
	*
	* @param identityConstraint The identity constraint.
	*/
	@:overload public function endValueScopeFor(identityConstraint : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint, initialDepth : Int) : Void;
	
	/**
	* Sets whether the given field is permitted to match a value.
	* This should be used to catch instance documents that try
	* and match a field several times in the same scope.
	*
	* @param field The field that may be permitted to be matched.
	* @param state Boolean indiciating whether the field may be matched.
	*/
	@:overload public function setMayMatch(field : com.sun.org.apache.xerces.internal.impl.xs.identity.Field, state : Null<Bool>) : Void;
	
	/**
	* Returns whether the given field is permitted to match a value.
	*
	* @param field The field that may be permitted to be matched.
	* @return Boolean indicating whether the field may be matched.
	*/
	@:overload public function mayMatch(field : com.sun.org.apache.xerces.internal.impl.xs.identity.Field) : Null<Bool>;
	
	
}
/**
* A wrapper of the standard error reporter. We'll store all schema errors
* in this wrapper object, so that we can get all errors (error codes) of
* a specific element. This is useful for PSVI.
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$XMLSchemaValidator$XSIErrorReporter') extern class XMLSchemaValidator_XSIErrorReporter
{
	@:overload public function reset(errorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter) : Void;
	
	@:overload public function pushContext() : Void;
	
	@:overload public function popContext() : java.NativeArray<String>;
	
	@:overload public function mergeContext() : java.NativeArray<String>;
	
	@:overload public function reportError(domain : String, key : String, arguments : java.NativeArray<Dynamic>, severity : java.StdTypes.Int16) : Void;
	
	@:overload public function reportError(location : com.sun.org.apache.xerces.internal.xni.XMLLocator, domain : String, key : String, arguments : java.NativeArray<Dynamic>, severity : java.StdTypes.Int16) : Void;
	
	
}
/**
* Stack of XPath matchers for identity constraints.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$XMLSchemaValidator$XPathMatcherStack') extern class XMLSchemaValidator_XPathMatcherStack
{
	/** Active matchers. */
	private var fMatchers : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.identity.XPathMatcher>;
	
	/** Count of active matchers. */
	private var fMatchersCount : Int;
	
	/** Offset stack for contexts. */
	private var fContextStack : com.sun.org.apache.xerces.internal.util.IntStack;
	
	@:overload public function new() : Void;
	
	/** Resets the XPath matcher stack. */
	@:overload public function clear() : Void;
	
	/** Returns the size of the stack. */
	@:overload public function size() : Int;
	
	/** Returns the count of XPath matchers. */
	@:overload public function getMatcherCount() : Int;
	
	/** Adds a matcher. */
	@:overload public function addMatcher(matcher : com.sun.org.apache.xerces.internal.impl.xs.identity.XPathMatcher) : Void;
	
	/** Returns the XPath matcher at the specified index. */
	@:overload public function getMatcherAt(index : Int) : com.sun.org.apache.xerces.internal.impl.xs.identity.XPathMatcher;
	
	/** Pushes a new context onto the stack. */
	@:overload public function pushContext() : Void;
	
	/** Pops a context off of the stack. */
	@:overload public function popContext() : Void;
	
	
}
/**
* Value store implementation base class. There are specific subclasses
* for handling unique, key, and keyref.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$XMLSchemaValidator$ValueStoreBase') extern class XMLSchemaValidator_ValueStoreBase implements com.sun.org.apache.xerces.internal.impl.xs.identity.ValueStore
{
	/** Identity constraint. */
	private var fIdentityConstraint : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint;
	
	private var fFieldCount : Int;
	
	private var fFields : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.identity.Field>;
	
	/** current data */
	private var fLocalValues : java.NativeArray<Dynamic>;
	
	private var fLocalValueTypes : java.NativeArray<java.StdTypes.Int16>;
	
	private var fLocalItemValueTypes : java.NativeArray<com.sun.org.apache.xerces.internal.xs.ShortList>;
	
	/** Current data value count. */
	private var fValuesCount : Int;
	
	/** global data */
	public var fValues(default, null) : java.util.Vector<Dynamic>;
	
	public var fValueTypes : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_ShortVector;
	
	public var fItemValueTypes : java.util.Vector<Dynamic>;
	
	/** Constructs a value store for the specified identity constraint. */
	@:overload private function new(identityConstraint : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint) : Void;
	
	@:overload public function clear() : Void;
	
	@:overload public function append(newVal : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_ValueStoreBase) : Void;
	
	/** Start scope for value store. */
	@:overload public function startValueScope() : Void;
	
	/** Ends scope for value store. */
	@:overload public function endValueScope() : Void;
	
	@:overload public function endDocumentFragment() : Void;
	
	/**
	* Signals the end of the document. This is where the specific
	* instances of value stores can verify the integrity of the
	* identity constraints.
	*/
	@:overload public function endDocument() : Void;
	
	/* reports an error if an element is matched
	* has nillable true and is matched by a key.
	*/
	@:overload public function reportError(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Adds the specified value to the value store.
	*
	* @param field The field associated to the value. This reference
	*              is used to ensure that each field only adds a value
	*              once within a selection scope.
	* @param actualValue The value to add.
	*/
	@:overload public function addValue(field : com.sun.org.apache.xerces.internal.impl.xs.identity.Field, actualValue : Dynamic, valueType : java.StdTypes.Int16, itemValueType : com.sun.org.apache.xerces.internal.xs.ShortList) : Void;
	
	/**
	* Returns true if this value store contains the locally scoped value stores
	*/
	@:overload public function contains() : Bool;
	
	/**
	* Returns -1 if this value store contains the specified
	* values, otherwise the index of the first field in the
	* key sequence.
	*/
	@:overload public function contains(vsb : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_ValueStoreBase) : Int;
	
	@:overload private function checkDuplicateValues() : Void;
	
	/** Returns a string of the specified values. */
	@:overload private function toString(values : java.NativeArray<Dynamic>) : String;
	
	/** Returns a string of the specified values. */
	@:overload private function toString(values : java.util.Vector<Dynamic>, start : Int, length : Int) : String;
	
	/** Returns a string representation of this object. */
	@:overload public function toString() : String;
	
	
}
/**
* Unique value store.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$XMLSchemaValidator$UniqueValueStore') extern class XMLSchemaValidator_UniqueValueStore extends com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_ValueStoreBase
{
	/** Constructs a unique value store. */
	@:overload public function new(unique : com.sun.org.apache.xerces.internal.impl.xs.identity.UniqueOrKey) : Void;
	
	/**
	* Called when a duplicate value is added.
	*/
	@:overload override private function checkDuplicateValues() : Void;
	
	
}
/**
* Key value store.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$XMLSchemaValidator$KeyValueStore') extern class XMLSchemaValidator_KeyValueStore extends com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_ValueStoreBase
{
	/** Constructs a key value store. */
	@:overload public function new(key : com.sun.org.apache.xerces.internal.impl.xs.identity.UniqueOrKey) : Void;
	
	/**
	* Called when a duplicate value is added.
	*/
	@:overload override private function checkDuplicateValues() : Void;
	
	
}
/**
* Key reference value store.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$XMLSchemaValidator$KeyRefValueStore') extern class XMLSchemaValidator_KeyRefValueStore extends com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_ValueStoreBase
{
	/** Key value store. */
	private var fKeyValueStore : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_ValueStoreBase;
	
	/** Constructs a key value store. */
	@:overload public function new(keyRef : com.sun.org.apache.xerces.internal.impl.xs.identity.KeyRef, keyValueStore : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_KeyValueStore) : Void;
	
	@:overload override public function endDocumentFragment() : Void;
	
	/** End document. */
	@:overload override public function endDocument() : Void;
	
	
}
/**
* Value store cache. This class is used to store the values for
* identity constraints.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$XMLSchemaValidator$ValueStoreCache') extern class XMLSchemaValidator_ValueStoreCache
{
	/** stores all global Values stores. */
	private var fValueStores(default, null) : java.util.Vector<Dynamic>;
	
	/**
	* Values stores associated to specific identity constraints.
	* This hashtable maps IdentityConstraints and
	* the 0-based element on which their selectors first matched to
	* a corresponding ValueStore.  This should take care
	* of all cases, including where ID constraints with
	* descendant-or-self axes occur on recursively-defined
	* elements.
	*/
	private var fIdentityConstraint2ValueStoreMap(default, null) : java.util.Hashtable<Dynamic, Dynamic>;
	
	private var fGlobalMapStack(default, null) : java.util.Stack<Dynamic>;
	
	private var fGlobalIDConstraintMap(default, null) : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/** Resets the identity constraint cache. */
	@:overload public function startDocument() : Void;
	
	@:overload public function startElement() : Void;
	
	/** endElement():  merges contents of fGlobalIDConstraintMap with the
	* top of fGlobalMapStack into fGlobalIDConstraintMap.
	*/
	@:overload public function endElement() : Void;
	
	/**
	* Initializes the value stores for the specified element
	* declaration.
	*/
	@:overload public function initValueStoresFor(eDecl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, activator : com.sun.org.apache.xerces.internal.impl.xs.identity.FieldActivator) : Void;
	
	/** Returns the value store associated to the specified IdentityConstraint. */
	@:overload public function getValueStoreFor(id : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint, initialDepth : Int) : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_ValueStoreBase;
	
	/** Returns the global value store associated to the specified IdentityConstraint. */
	@:overload public function getGlobalValueStoreFor(id : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint) : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.XMLSchemaValidator_ValueStoreBase;
	
	@:overload public function transplant(id : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint, initialDepth : Int) : Void;
	
	/** Check identity constraints. */
	@:overload public function endDocument() : Void;
	
	/** Returns a string representation of this object. */
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xs$XMLSchemaValidator$LocalIDKey') extern class XMLSchemaValidator_LocalIDKey
{
	public var fId : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint;
	
	public var fDepth : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function new(id : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint, depth : Int) : Void;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(localIDKey : Dynamic) : Bool;
	
	
}
/**
* A simple vector for <code>short</code>s.
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$XMLSchemaValidator$ShortVector') extern class XMLSchemaValidator_ShortVector
{
	@:overload public function new() : Void;
	
	@:overload public function new(initialCapacity : Int) : Void;
	
	/** Returns the length of the vector. */
	@:overload public function length() : Int;
	
	/** Adds the value to the vector. */
	@:overload public function add(value : java.StdTypes.Int16) : Void;
	
	/** Returns the short value at the specified position in the vector. */
	@:overload public function valueAt(position : Int) : java.StdTypes.Int16;
	
	/** Clears the vector. */
	@:overload public function clear() : Void;
	
	/** Returns whether the short is contained in the vector. */
	@:overload public function contains(value : java.StdTypes.Int16) : Bool;
	
	
}
