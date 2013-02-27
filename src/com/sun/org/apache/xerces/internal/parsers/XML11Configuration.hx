package com.sun.org.apache.xerces.internal.parsers;
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
extern class XML11Configuration extends com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings implements com.sun.org.apache.xerces.internal.xni.parser.XMLPullParserConfiguration implements com.sun.org.apache.xerces.internal.parsers.XML11Configurable
{
	/**
	* This class is the configuration used to parse XML 1.0 and XML 1.1 documents.
	*
	* @author Elena Litani, IBM
	* @author Neil Graham, IBM
	* @author Michael Glavassevich, IBM
	*
	* @version $Id: XML11Configuration.java,v 1.9 2010-11-01 04:40:10 joehw Exp $
	*/
	private static var XML11_DATATYPE_VALIDATOR_FACTORY(default, null) : String;
	
	/** Feature identifier: warn on duplicate attribute definition. */
	private static var WARN_ON_DUPLICATE_ATTDEF(default, null) : String;
	
	/** Feature identifier: warn on duplicate entity definition. */
	private static var WARN_ON_DUPLICATE_ENTITYDEF(default, null) : String;
	
	/** Feature identifier: warn on undeclared element definition. */
	private static var WARN_ON_UNDECLARED_ELEMDEF(default, null) : String;
	
	/** Feature identifier: allow Java encodings. */
	private static var ALLOW_JAVA_ENCODINGS(default, null) : String;
	
	/** Feature identifier: continue after fatal error. */
	private static var CONTINUE_AFTER_FATAL_ERROR(default, null) : String;
	
	/** Feature identifier: load external DTD. */
	private static var LOAD_EXTERNAL_DTD(default, null) : String;
	
	/** Feature identifier: notify built-in refereces. */
	private static var NOTIFY_BUILTIN_REFS(default, null) : String;
	
	/** Feature identifier: notify character refereces. */
	private static var NOTIFY_CHAR_REFS(default, null) : String;
	
	/** Feature identifier: expose schema normalized value */
	private static var NORMALIZE_DATA(default, null) : String;
	
	/** Feature identifier: send element default value via characters() */
	private static var SCHEMA_ELEMENT_DEFAULT(default, null) : String;
	
	/** Feature identifier: augment PSVI */
	private static var SCHEMA_AUGMENT_PSVI(default, null) : String;
	
	/** feature identifier: XML Schema validation */
	private static var XMLSCHEMA_VALIDATION(default, null) : String;
	
	/** feature identifier: XML Schema validation -- full checking */
	private static var XMLSCHEMA_FULL_CHECKING(default, null) : String;
	
	/** Feature: generate synthetic annotations */
	private static var GENERATE_SYNTHETIC_ANNOTATIONS(default, null) : String;
	
	/** Feature identifier: validate annotations */
	private static var VALIDATE_ANNOTATIONS(default, null) : String;
	
	/** Feature identifier: honour all schemaLocations */
	private static var HONOUR_ALL_SCHEMALOCATIONS(default, null) : String;
	
	/** Feature identifier: namespace growth */
	private static var NAMESPACE_GROWTH(default, null) : String;
	
	/** Feature identifier: tolerate duplicates */
	private static var TOLERATE_DUPLICATES(default, null) : String;
	
	/** Feature identifier: use grammar pool only */
	private static var USE_GRAMMAR_POOL_ONLY(default, null) : String;
	
	/** Feature identifier: validation. */
	private static var VALIDATION(default, null) : String;
	
	/** Feature identifier: namespaces. */
	private static var NAMESPACES(default, null) : String;
	
	/** Feature identifier: external general entities. */
	private static var EXTERNAL_GENERAL_ENTITIES(default, null) : String;
	
	/** Feature identifier: external parameter entities. */
	private static var EXTERNAL_PARAMETER_ENTITIES(default, null) : String;
	
	/** Property identifier: xml string. */
	private static var XML_STRING(default, null) : String;
	
	/** Property identifier: symbol table. */
	private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error handler. */
	private static var ERROR_HANDLER(default, null) : String;
	
	/** Property identifier: entity resolver. */
	private static var ENTITY_RESOLVER(default, null) : String;
	
	/** Property identifier: XML Schema validator. */
	private static var SCHEMA_VALIDATOR(default, null) : String;
	
	/** Property identifier: schema location. */
	private static var SCHEMA_LOCATION(default, null) : String;
	
	/** Property identifier: no namespace schema location. */
	private static var SCHEMA_NONS_LOCATION(default, null) : String;
	
	/** Property identifier: error reporter. */
	private static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: entity manager. */
	private static var ENTITY_MANAGER(default, null) : String;
	
	/** Property identifier document scanner: */
	private static var DOCUMENT_SCANNER(default, null) : String;
	
	/** Property identifier: DTD scanner. */
	private static var DTD_SCANNER(default, null) : String;
	
	/** Property identifier: grammar pool. */
	private static var XMLGRAMMAR_POOL(default, null) : String;
	
	/** Property identifier: DTD loader. */
	private static var DTD_PROCESSOR(default, null) : String;
	
	/** Property identifier: DTD validator. */
	private static var DTD_VALIDATOR(default, null) : String;
	
	/** Property identifier: namespace binder. */
	private static var NAMESPACE_BINDER(default, null) : String;
	
	/** Property identifier: datatype validator factory. */
	private static var DATATYPE_VALIDATOR_FACTORY(default, null) : String;
	
	private static var VALIDATION_MANAGER(default, null) : String;
	
	/** Property identifier: JAXP schema language / DOM schema-type. */
	private static var JAXP_SCHEMA_LANGUAGE(default, null) : String;
	
	/** Property identifier: JAXP schema source/ DOM schema-location. */
	private static var JAXP_SCHEMA_SOURCE(default, null) : String;
	
	/** Property identifier: locale. */
	private static var LOCALE(default, null) : String;
	
	/** Property identifier: Schema DV Factory */
	private static var SCHEMA_DV_FACTORY(default, null) : String;
	
	/** Set to true and recompile to print exception stack trace. */
	private static var PRINT_EXCEPTION_STACK_TRACE(default, null) : Bool;
	
	private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	private var fInputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	private var fValidationManager : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	private var fVersionDetector : com.sun.org.apache.xerces.internal.impl.XMLVersionDetector;
	
	private var fLocator : com.sun.org.apache.xerces.internal.xni.XMLLocator;
	
	private var fLocale : java.util.Locale;
	
	/** XML 1.0 Components. */
	private var fComponents : java.util.ArrayList<Dynamic>;
	
	/** XML 1.1. Components. */
	private var fXML11Components : java.util.ArrayList<Dynamic>;
	
	/** Common components: XMLEntityManager, XMLErrorReporter, XMLSchemaValidator */
	private var fCommonComponents : java.util.ArrayList<Dynamic>;
	
	/** The document handler. */
	private var fDocumentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	/** The DTD handler. */
	private var fDTDHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/** The DTD content model handler. */
	private var fDTDContentModelHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
	
	/** Last component in the document pipeline */
	private var fLastComponent : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	/**
	* True if a parse is in progress. This state is needed because
	* some features/properties cannot be set while parsing (e.g.
	* validation and namespaces).
	*/
	private var fParseInProgress : Bool;
	
	/** fConfigUpdated is set to true if there has been any change to the configuration settings,
	* i.e a feature or a property was changed.
	*/
	private var fConfigUpdated : Bool;
	
	/** The XML 1.0 Datatype validator factory. */
	private var fDatatypeValidatorFactory : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** The XML 1.0 Document scanner that does namespace binding. */
	private var fNamespaceScanner : com.sun.org.apache.xerces.internal.impl.XMLNSDocumentScannerImpl;
	
	/** The XML 1.0 Non-namespace implementation of scanner */
	private var fNonNSScanner : com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl;
	
	/** The XML 1.0 DTD Validator: binds namespaces */
	private var fDTDValidator : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator;
	
	/** The XML 1.0 DTD Validator that does not bind namespaces */
	private var fNonNSDTDValidator : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator;
	
	/** The XML 1.0 DTD scanner. */
	private var fDTDScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
	
	/** The XML 1.0 DTD Processor . */
	private var fDTDProcessor : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDProcessor;
	
	/** The XML 1.1 datatype factory. **/
	private var fXML11DatatypeFactory : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** The XML 1.1 document scanner that does namespace binding. **/
	private var fXML11NSDocScanner : com.sun.org.apache.xerces.internal.impl.XML11NSDocumentScannerImpl;
	
	/** The XML 1.1 document scanner that does not do namespace binding. **/
	private var fXML11DocScanner : com.sun.org.apache.xerces.internal.impl.XML11DocumentScannerImpl;
	
	/** The XML 1.1 DTD validator that does namespace binding. **/
	private var fXML11NSDTDValidator : com.sun.org.apache.xerces.internal.impl.dtd.XML11NSDTDValidator;
	
	/** The XML 1.1 DTD validator that does not do namespace binding. **/
	private var fXML11DTDValidator : com.sun.org.apache.xerces.internal.impl.dtd.XML11DTDValidator;
	
	/** The XML 1.1 DTD scanner. **/
	private var fXML11DTDScanner : com.sun.org.apache.xerces.internal.impl.XML11DTDScannerImpl;
	
	/** The XML 1.1 DTD processor. **/
	private var fXML11DTDProcessor : com.sun.org.apache.xerces.internal.impl.dtd.XML11DTDProcessor;
	
	/** Grammar pool. */
	private var fGrammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	/** Error reporter. */
	private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/** Entity manager. */
	private var fEntityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	/** XML Schema Validator. */
	private var fSchemaValidator : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator;
	
	/** Current scanner */
	private var fCurrentScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner;
	
	/** Current Datatype validator factory. */
	private var fCurrentDVFactory : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** Current DTD scanner. */
	private var fCurrentDTDScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/**
	* Constructs a parser configuration using the specified symbol table.
	*
	* @param symbolTable The symbol table to use.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	* Constructs a parser configuration using the specified symbol table and
	* grammar pool.
	* <p>
	* <strong>REVISIT:</strong>
	* Grammar pool will be updated when the new validation engine is
	* implemented.
	*
	* @param symbolTable The symbol table to use.
	* @param grammarPool The grammar pool to use.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
	/**
	* Constructs a parser configuration using the specified symbol table,
	* grammar pool, and parent settings.
	* <p>
	* <strong>REVISIT:</strong>
	* Grammar pool will be updated when the new validation engine is
	* implemented.
	*
	* @param symbolTable    The symbol table to use.
	* @param grammarPool    The grammar pool to use.
	* @param parentSettings The parent settings.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool, parentSettings : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* Sets the input source for the document to parse.
	*
	* @param inputSource The document's input source.
	*
	* @exception XMLConfigurationException Thrown if there is a
	*                        configuration error when initializing the
	*                        parser.
	* @exception IOException Thrown on I/O error.
	*
	* @see #parse(boolean)
	*/
	@:overload public function setInputSource(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* Set the locale to use for messages.
	*
	* @param locale The locale object to use for localization of messages.
	*
	* @exception XNIException Thrown if the parser does not support the
	*                         specified locale.
	*/
	@:overload public function setLocale(locale : java.util.Locale) : Void;
	
	/**
	* Sets the document handler on the last component in the pipeline
	* to receive information about the document.
	*
	* @param documentHandler   The document handler.
	*/
	@:overload public function setDocumentHandler(documentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler) : Void;
	
	/** Returns the registered document handler. */
	@:overload public function getDocumentHandler() : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	/**
	* Sets the DTD handler.
	*
	* @param dtdHandler The DTD handler.
	*/
	@:overload public function setDTDHandler(dtdHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler) : Void;
	
	/** Returns the registered DTD handler. */
	@:overload public function getDTDHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/**
	* Sets the DTD content model handler.
	*
	* @param handler The DTD content model handler.
	*/
	@:overload public function setDTDContentModelHandler(handler : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler) : Void;
	
	/** Returns the registered DTD content model handler. */
	@:overload public function getDTDContentModelHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
	
	/**
	* Sets the resolver used to resolve external entities. The EntityResolver
	* interface supports resolution of public and system identifiers.
	*
	* @param resolver The new entity resolver. Passing a null value will
	*                 uninstall the currently installed resolver.
	*/
	@:overload public function setEntityResolver(resolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver) : Void;
	
	/**
	* Return the current entity resolver.
	*
	* @return The current entity resolver, or null if none
	*         has been registered.
	* @see #setEntityResolver
	*/
	@:overload public function getEntityResolver() : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
	
	/**
	* Allow an application to register an error event handler.
	*
	* <p>If the application does not register an error handler, all
	* error events reported by the SAX parser will be silently
	* ignored; however, normal processing may not continue.  It is
	* highly recommended that all SAX applications implement an
	* error handler to avoid unexpected bugs.</p>
	*
	* <p>Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.</p>
	*
	* @param errorHandler The error handler.
	* @exception java.lang.NullPointerException If the handler
	*            argument is null.
	* @see #getErrorHandler
	*/
	@:overload public function setErrorHandler(errorHandler : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler) : Void;
	
	/**
	* Return the current error handler.
	*
	* @return The current error handler, or null if none
	*         has been registered.
	* @see #setErrorHandler
	*/
	@:overload public function getErrorHandler() : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
	
	/**
	* If the application decides to terminate parsing before the xml document
	* is fully parsed, the application should call this method to free any
	* resource allocated during parsing. For example, close all opened streams.
	*/
	@:overload public function cleanup() : Void;
	
	/**
	* Parses the specified input source.
	*
	* @param source The input source.
	*
	* @exception XNIException Throws exception on XNI error.
	* @exception java.io.IOException Throws exception on i/o error.
	*/
	@:overload public function parse(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	@:overload public function parse(complete : Bool) : Bool;
	
	/**
	* Returns the state of a feature.
	*
	* @param featureId The feature identifier.
	* @return true if the feature is supported
	*
	* @throws XMLConfigurationException Thrown for configuration error.
	*                                   In general, components should
	*                                   only throw this exception if
	*                                   it is <strong>really</strong>
	*                                   a critical error.
	*/
	@:overload override public function getFeatureState(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
	/**
	* Set the state of a feature.
	*
	* Set the state of any feature in a SAX2 parser.  The parser
	* might not recognize the feature, and if it does recognize
	* it, it might not be able to fulfill the request.
	*
	* @param featureId The unique identifier (URI) of the feature.
	* @param state The requested state of the feature (true or false).
	*
	* @exception com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException If the
	*            requested feature is not known.
	*/
	@:overload override public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Returns the value of a property.
	*
	* @param propertyId The property identifier.
	* @return the value of the property
	*
	* @throws XMLConfigurationException Thrown for configuration error.
	*                                   In general, components should
	*                                   only throw this exception if
	*                                   it is <strong>really</strong>
	*                                   a critical error.
	*/
	@:overload override public function getPropertyState(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	/**
	* setProperty
	*
	* @param propertyId
	* @param value
	*/
	@:overload override public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/** Returns the locale. */
	@:overload public function getLocale() : java.util.Locale;
	
	/**
	* reset all XML 1.0 components before parsing and namespace context
	*/
	@:overload private function reset() : Void;
	
	/**
	* reset all common components before parsing
	*/
	@:overload private function resetCommon() : Void;
	
	/**
	* reset all components before parsing and namespace context
	*/
	@:overload private function resetXML11() : Void;
	
	/**
	*  Configures the XML 1.1 pipeline.
	*  Note: this method also resets the new XML11 components.
	*/
	@:overload private function configureXML11Pipeline() : Void;
	
	/** Configures the pipeline. */
	@:overload private function configurePipeline() : Void;
	
	/**
	* Check a feature. If feature is know and supported, this method simply
	* returns. Otherwise, the appropriate exception is thrown.
	*
	* @param featureId The unique identifier (URI) of the feature.
	*
	* @throws XMLConfigurationException Thrown for configuration error.
	*                                   In general, components should
	*                                   only throw this exception if
	*                                   it is <strong>really</strong>
	*                                   a critical error.
	*/
	@:overload override private function checkFeature(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
	/**
	* Check a property. If the property is know and supported, this method
	* simply returns. Otherwise, the appropriate exception is thrown.
	*
	* @param propertyId The unique identifier (URI) of the property
	*                   being set.
	*
	* @throws XMLConfigurationException Thrown for configuration error.
	*                                   In general, components should
	*                                   only throw this exception if
	*                                   it is <strong>really</strong>
	*                                   a critical error.
	*/
	@:overload override private function checkProperty(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	/**
	* Adds a component to the parser configuration. This method will
	* also add all of the component's recognized features and properties
	* to the list of default recognized features and properties.
	*
	* @param component The component to add.
	*/
	@:overload private function addComponent(component : com.sun.org.apache.xerces.internal.xni.parser.XMLComponent) : Void;
	
	/**
	* Adds common component to the parser configuration. This method will
	* also add all of the component's recognized features and properties
	* to the list of default recognized features and properties.
	*
	* @param component The component to add.
	*/
	@:overload private function addCommonComponent(component : com.sun.org.apache.xerces.internal.xni.parser.XMLComponent) : Void;
	
	/**
	* Adds an XML 1.1 component to the parser configuration. This method will
	* also add all of the component's recognized features and properties
	* to the list of default recognized features and properties.
	*
	* @param component The component to add.
	*/
	@:overload private function addXML11Component(component : com.sun.org.apache.xerces.internal.xni.parser.XMLComponent) : Void;
	
	/**
	* Adds all of the component's recognized features and properties
	* to the list of default recognized features and properties, and
	* sets default values on the configuration for features and
	* properties which were previously absent from the configuration.
	*
	* @param component The component whose recognized features
	* and properties will be added to the configuration
	*/
	@:overload private function addRecognizedParamsAndSetDefaults(component : com.sun.org.apache.xerces.internal.xni.parser.XMLComponent) : Void;
	
	
}
