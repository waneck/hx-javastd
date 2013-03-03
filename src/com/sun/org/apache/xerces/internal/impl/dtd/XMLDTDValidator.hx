package com.sun.org.apache.xerces.internal.impl.dtd;
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
extern class XMLDTDValidator implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent implements com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentFilter implements com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidatorFilter implements com.sun.org.apache.xerces.internal.impl.RevalidationHandler
{
	/** Feature identifier: namespaces. */
	@:protected @:static @:final private static var NAMESPACES(default, null) : String;
	
	/** Feature identifier: validation. */
	@:protected @:static @:final private static var VALIDATION(default, null) : String;
	
	/** Feature identifier: dynamic validation. */
	@:protected @:static @:final private static var DYNAMIC_VALIDATION(default, null) : String;
	
	/** Feature identifier: balance syntax trees. */
	@:protected @:static @:final private static var BALANCE_SYNTAX_TREES(default, null) : String;
	
	/** Feature identifier: warn on duplicate attdef */
	@:protected @:static @:final private static var WARN_ON_DUPLICATE_ATTDEF(default, null) : String;
	
	@:protected @:static @:final private static var PARSER_SETTINGS(default, null) : String;
	
	/** Property identifier: symbol table. */
	@:protected @:static @:final private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error reporter. */
	@:protected @:static @:final private static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: grammar pool. */
	@:protected @:static @:final private static var GRAMMAR_POOL(default, null) : String;
	
	/** Property identifier: datatype validator factory. */
	@:protected @:static @:final private static var DATATYPE_VALIDATOR_FACTORY(default, null) : String;
	
	@:protected @:static @:final private static var VALIDATION_MANAGER(default, null) : String;
	
	@:protected private var fValidationManager : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	@:protected @:final private var fValidationState(default, null) : com.sun.org.apache.xerces.internal.impl.validation.ValidationState;
	
	/** Namespaces. */
	@:protected private var fNamespaces : Bool;
	
	/** Validation. */
	@:protected private var fValidation : Bool;
	
	/** Validation against only DTD */
	@:protected private var fDTDValidation : Bool;
	
	/**
	* Dynamic validation. This state of this feature is only useful when
	* the validation feature is set to <code>true</code>.
	*/
	@:protected private var fDynamicValidation : Bool;
	
	/** Controls whether the DTD grammar produces balanced syntax trees. */
	@:protected private var fBalanceSyntaxTrees : Bool;
	
	/** warn on duplicate attribute definition, this feature works only when validation is true */
	@:protected private var fWarnDuplicateAttdef : Bool;
	
	/** Symbol table. */
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Error reporter. */
	@:protected private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	@:protected private var fGrammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	/** Grammar bucket. */
	@:protected private var fGrammarBucket : com.sun.org.apache.xerces.internal.impl.dtd.DTDGrammarBucket;
	
	/* location of the document as passed in from startDocument call */
	@:protected private var fDocLocation : com.sun.org.apache.xerces.internal.xni.XMLLocator;
	
	/** Namespace support. */
	@:protected private var fNamespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext;
	
	/** Datatype validator factory. */
	@:protected private var fDatatypeValidatorFactory : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** Document handler. */
	@:protected private var fDocumentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	@:protected private var fDocumentSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	/** DTD Grammar. */
	@:protected private var fDTDGrammar : com.sun.org.apache.xerces.internal.impl.dtd.DTDGrammar;
	
	/** True if seen DOCTYPE declaration. */
	@:protected private var fSeenDoctypeDecl : Bool;
	
	/** Datatype validator: ID. */
	@:protected private var fValID : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator;
	
	/** Datatype validator: IDREF. */
	@:protected private var fValIDRef : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator;
	
	/** Datatype validator: IDREFS. */
	@:protected private var fValIDRefs : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator;
	
	/** Datatype validator: ENTITY. */
	@:protected private var fValENTITY : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator;
	
	/** Datatype validator: ENTITIES. */
	@:protected private var fValENTITIES : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator;
	
	/** Datatype validator: NMTOKEN. */
	@:protected private var fValNMTOKEN : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator;
	
	/** Datatype validator: NMTOKENS. */
	@:protected private var fValNMTOKENS : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator;
	
	/** Datatype validator: NOTATION. */
	@:protected private var fValNOTATION : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
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
	@:overload @:public public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
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
	* Returns a list of property identifiers that are recognized by
	* this component. This method may return null if no properties
	* are recognized by this component.
	*/
	@:overload @:public public function getRecognizedProperties() : java.NativeArray<String>;
	
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
	
	/** Sets the document handler to receive information about the document. */
	@:overload @:public public function setDocumentHandler(documentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler) : Void;
	
	/** Returns the document handler */
	@:overload @:public public function getDocumentHandler() : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	/** Sets the document source */
	@:overload @:public public function setDocumentSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource) : Void;
	
	/** Returns the document source */
	@:overload @:public public function getDocumentSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
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
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function startDocument(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, encoding : String, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of an XMLDecl line in the document. If
	* present, this method will be called immediately following the
	* startDocument call.
	*
	* @param version    The XML version.
	* @param encoding   The IANA encoding name of the document, or null if
	*                   not specified.
	* @param standalone The standalone value, or null if not specified.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function xmlDecl(version : String, encoding : String, standalone : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of the DOCTYPE line in the document.
	*
	* @param rootElement The name of the root element.
	* @param publicId    The public identifier if an external DTD or null
	*                    if the external DTD is specified using SYSTEM.
	* @param systemId    The system identifier if an external DTD, null
	*                    otherwise.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function doctypeDecl(rootElement : String, publicId : String, systemId : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of an element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* An empty element.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Character content.
	*
	* @param text The content.
	*
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Ignorable whitespace. For this method to be called, the document
	* source must have some way of determining that the text containing
	* only whitespace characters should be considered ignorable. For
	* example, the validator can determine if a length of whitespace
	* characters in the document are ignorable based on the element
	* content model.
	*
	* @param text The ignorable whitespace.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of an element.
	*
	* @param element The name of the element.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The start of a CDATA section.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a CDATA section.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the document.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A comment.
	*
	* @param text The text in the comment.
	* @param augs   Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by application to signal an error.
	*/
	@:overload @:public public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload @:public public function startGeneralEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
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
	@:overload @:public public function endGeneralEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Notifies of the presence of a TextDecl line in an entity. If present,
	* this method will be called immediately following the startParameterEntity call.
	* <p>
	* <strong>Note:</strong> This method is only called for external
	* parameter entities referenced in the DTD.
	*
	* @param version  The XML version, or null if not specified.
	* @param encoding The IANA encoding name of the entity.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:public public function textDecl(version : String, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public @:final public function hasGrammar() : Bool;
	
	@:overload @:public @:final public function validate() : Bool;
	
	/** Add default attributes and validate. */
	@:overload @:protected private function addDTDDefaultAttrsAndValidate(elementName : com.sun.org.apache.xerces.internal.xni.QName, elementIndex : Int, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	/** Checks entities in attribute values for standalone VC. */
	@:overload @:protected private function getExternalEntityRefInAttrValue(nonNormalizedValue : String) : String;
	
	/**
	* Validate attributes in DTD fashion.
	*/
	@:overload @:protected private function validateDTDattribute(element : com.sun.org.apache.xerces.internal.xni.QName, attValue : String, attributeDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLAttributeDecl) : Void;
	
	/** Returns true if invalid standalone attribute definition. */
	@:overload @:protected private function invalidStandaloneAttDef(element : com.sun.org.apache.xerces.internal.xni.QName, attribute : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
	/** initialization */
	@:overload @:protected private function init() : Void;
	
	/** Handle element
	* @return true if validator is removed from the pipeline
	*/
	@:overload @:protected private function handleStartElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Bool;
	
	@:overload @:protected private function startNamespaceScope(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/** Handle end element. */
	@:overload @:protected private function handleEndElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations, isEmpty : Bool) : Void;
	
	@:overload @:protected private function endNamespaceScope(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations, isEmpty : Bool) : Void;
	
	@:overload @:protected private function isSpace(c : Int) : Bool;
	
	@:overload @:public public function characterData(data : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Bool;
	
	
}
