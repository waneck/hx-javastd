package com.sun.org.apache.xerces.internal.parsers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004 The Apache Software Foundation.
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
extern class XML11NonValidatingConfiguration extends com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings implements com.sun.org.apache.xerces.internal.xni.parser.XMLPullParserConfiguration implements com.sun.org.apache.xerces.internal.parsers.XML11Configurable
{
	/**
	* This class is the non vlaidating parser configuration
	* used to parse XML 1.0 and XML 1.1 documents.
	*
	* Xerces parser that uses this configuration is <strong>not</strong> <a href="http://www.w3.org/TR/REC-xml#sec-conformance">conformant</a>
	* non-validating XML processor, since conformant non-validating processor is required
	* to process "all the declarations they read in the internal DTD subset ... must use the information in those declarations to normalize attribute values,
	* include the replacement text of internal entities, and supply default attribute values".

	* @author Elena Litani, IBM
	* @author John Kim, IBM
	* @author Michael Glavassevich, IBM
	*
	* @version $Id: XML11NonValidatingConfiguration.java,v 1.5 2010-11-01 04:40:10 joehw Exp $
	*/
	@:protected @:final @:static private static var XML11_DATATYPE_VALIDATOR_FACTORY(default, null) : String;
	
	/** Feature identifier: validation. */
	@:protected @:static @:final private static var VALIDATION(default, null) : String;
	
	/** Feature identifier: namespaces. */
	@:protected @:static @:final private static var NAMESPACES(default, null) : String;
	
	/** Feature identifier: external general entities. */
	@:protected @:static @:final private static var EXTERNAL_GENERAL_ENTITIES(default, null) : String;
	
	/** Feature identifier: external parameter entities. */
	@:protected @:static @:final private static var EXTERNAL_PARAMETER_ENTITIES(default, null) : String;
	
	/** Feature identifier: continue after fatal error. */
	@:protected @:static @:final private static var CONTINUE_AFTER_FATAL_ERROR(default, null) : String;
	
	/** Property identifier: xml string. */
	@:protected @:static @:final private static var XML_STRING(default, null) : String;
	
	/** Property identifier: symbol table. */
	@:protected @:static @:final private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error handler. */
	@:protected @:static @:final private static var ERROR_HANDLER(default, null) : String;
	
	/** Property identifier: entity resolver. */
	@:protected @:static @:final private static var ENTITY_RESOLVER(default, null) : String;
	
	/** Property identifier: error reporter. */
	@:protected @:static @:final private static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: entity manager. */
	@:protected @:static @:final private static var ENTITY_MANAGER(default, null) : String;
	
	/** Property identifier document scanner: */
	@:protected @:static @:final private static var DOCUMENT_SCANNER(default, null) : String;
	
	/** Property identifier: DTD scanner. */
	@:protected @:static @:final private static var DTD_SCANNER(default, null) : String;
	
	/** Property identifier: grammar pool. */
	@:protected @:static @:final private static var XMLGRAMMAR_POOL(default, null) : String;
	
	/** Property identifier: DTD validator. */
	@:protected @:static @:final private static var DTD_VALIDATOR(default, null) : String;
	
	/** Property identifier: namespace binder. */
	@:protected @:static @:final private static var NAMESPACE_BINDER(default, null) : String;
	
	/** Property identifier: datatype validator factory. */
	@:protected @:static @:final private static var DATATYPE_VALIDATOR_FACTORY(default, null) : String;
	
	@:protected @:static @:final private static var VALIDATION_MANAGER(default, null) : String;
	
	/** Set to true and recompile to print exception stack trace. */
	@:protected @:static @:final private static var PRINT_EXCEPTION_STACK_TRACE(default, null) : Bool;
	
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	@:protected private var fInputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	@:protected private var fValidationManager : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	@:protected private var fVersionDetector : com.sun.org.apache.xerces.internal.impl.XMLVersionDetector;
	
	@:protected private var fLocator : com.sun.org.apache.xerces.internal.xni.XMLLocator;
	
	@:protected private var fLocale : java.util.Locale;
	
	/** XML 1.0 Components. */
	@:protected private var fComponents : java.util.ArrayList<Dynamic>;
	
	/** XML 1.1. Components. */
	@:protected private var fXML11Components : java.util.ArrayList<Dynamic>;
	
	/** Common components: XMLEntityManager, XMLErrorReporter */
	@:protected private var fCommonComponents : java.util.ArrayList<Dynamic>;
	
	/** The document handler. */
	@:protected private var fDocumentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	/** The DTD handler. */
	@:protected private var fDTDHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/** The DTD content model handler. */
	@:protected private var fDTDContentModelHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
	
	/** Last component in the document pipeline */
	@:protected private var fLastComponent : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	/**
	* True if a parse is in progress. This state is needed because
	* some features/properties cannot be set while parsing (e.g.
	* namespaces).
	*/
	@:protected private var fParseInProgress : Bool;
	
	/** fConfigUpdated is set to true if there has been any change to the configuration settings,
	* i.e a feature or a property was changed.
	*/
	@:protected private var fConfigUpdated : Bool;
	
	/** The XML 1.0 Datatype validator factory. */
	@:protected private var fDatatypeValidatorFactory : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** The XML 1.0 Document scanner that does namespace binding. */
	@:protected private var fNamespaceScanner : com.sun.org.apache.xerces.internal.impl.XMLNSDocumentScannerImpl;
	
	/** The XML 1.0 Non-namespace implementation of scanner */
	@:protected private var fNonNSScanner : com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl;
	
	/** The XML 1.0 DTD scanner. */
	@:protected private var fDTDScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
	
	/** The XML 1.1 datatype factory. **/
	@:protected private var fXML11DatatypeFactory : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** The XML 1.1 document scanner that does namespace binding. **/
	@:protected private var fXML11NSDocScanner : com.sun.org.apache.xerces.internal.impl.XML11NSDocumentScannerImpl;
	
	/** The XML 1.1 document scanner that does not do namespace binding. **/
	@:protected private var fXML11DocScanner : com.sun.org.apache.xerces.internal.impl.XML11DocumentScannerImpl;
	
	/** The XML 1.1 DTD scanner. **/
	@:protected private var fXML11DTDScanner : com.sun.org.apache.xerces.internal.impl.XML11DTDScannerImpl;
	
	/** Grammar pool. */
	@:protected private var fGrammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	/** Error reporter. */
	@:protected private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/** Entity manager. */
	@:protected private var fEntityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	/** Current scanner */
	@:protected private var fCurrentScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner;
	
	/** Current Datatype validator factory. */
	@:protected private var fCurrentDVFactory : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** Current DTD scanner. */
	@:protected private var fCurrentDTDScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a parser configuration using the specified symbol table.
	*
	* @param symbolTable The symbol table to use.
	*/
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
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
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
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
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool, parentSettings : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
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
	@:overload @:public public function setInputSource(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* Set the locale to use for messages.
	*
	* @param locale The locale object to use for localization of messages.
	*
	* @exception XNIException Thrown if the parser does not support the
	*                         specified locale.
	*/
	@:overload @:public public function setLocale(locale : java.util.Locale) : Void;
	
	/**
	* Sets the document handler on the last component in the pipeline
	* to receive information about the document.
	*
	* @param documentHandler   The document handler.
	*/
	@:overload @:public public function setDocumentHandler(documentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler) : Void;
	
	/** Returns the registered document handler. */
	@:overload @:public public function getDocumentHandler() : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	/**
	* Sets the DTD handler.
	*
	* @param dtdHandler The DTD handler.
	*/
	@:overload @:public public function setDTDHandler(dtdHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler) : Void;
	
	/** Returns the registered DTD handler. */
	@:overload @:public public function getDTDHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/**
	* Sets the DTD content model handler.
	*
	* @param handler The DTD content model handler.
	*/
	@:overload @:public public function setDTDContentModelHandler(handler : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler) : Void;
	
	/** Returns the registered DTD content model handler. */
	@:overload @:public public function getDTDContentModelHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
	
	/**
	* Sets the resolver used to resolve external entities. The EntityResolver
	* interface supports resolution of public and system identifiers.
	*
	* @param resolver The new entity resolver. Passing a null value will
	*                 uninstall the currently installed resolver.
	*/
	@:overload @:public public function setEntityResolver(resolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver) : Void;
	
	/**
	* Return the current entity resolver.
	*
	* @return The current entity resolver, or null if none
	*         has been registered.
	* @see #setEntityResolver
	*/
	@:overload @:public public function getEntityResolver() : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
	
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
	@:overload @:public public function setErrorHandler(errorHandler : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler) : Void;
	
	/**
	* Return the current error handler.
	*
	* @return The current error handler, or null if none
	*         has been registered.
	* @see #setErrorHandler
	*/
	@:overload @:public public function getErrorHandler() : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
	
	/**
	* If the application decides to terminate parsing before the xml document
	* is fully parsed, the application should call this method to free any
	* resource allocated during parsing. For example, close all opened streams.
	*/
	@:overload @:public public function cleanup() : Void;
	
	/**
	* Parses the specified input source.
	*
	* @param source The input source.
	*
	* @exception XNIException Throws exception on XNI error.
	* @exception java.io.IOException Throws exception on i/o error.
	*/
	@:overload @:public public function parse(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	@:overload @:public public function parse(complete : Bool) : Bool;
	
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
	@:overload @:public override public function getFeatureState(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
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
	@:overload @:public override public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* setProperty
	*
	* @param propertyId
	* @param value
	*/
	@:overload @:public override public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/** Returns the locale. */
	@:overload @:public public function getLocale() : java.util.Locale;
	
	/**
	* reset all XML 1.0 components before parsing and namespace context
	*/
	@:overload @:protected private function reset() : Void;
	
	/**
	* reset all common components before parsing
	*/
	@:overload @:protected private function resetCommon() : Void;
	
	/**
	* reset all components before parsing and namespace context
	*/
	@:overload @:protected private function resetXML11() : Void;
	
	/**
	*  Configures the XML 1.1 pipeline.
	*  Note: this method also resets the new XML11 components.
	*/
	@:overload @:protected private function configureXML11Pipeline() : Void;
	
	/** Configures the pipeline. */
	@:overload @:protected private function configurePipeline() : Void;
	
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
	@:overload @:protected override private function checkFeature(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
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
	@:overload @:protected override private function checkProperty(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	/**
	* Adds a component to the parser configuration. This method will
	* also add all of the component's recognized features and properties
	* to the list of default recognized features and properties.
	*
	* @param component The component to add.
	*/
	@:overload @:protected private function addComponent(component : com.sun.org.apache.xerces.internal.xni.parser.XMLComponent) : Void;
	
	/**
	* Adds common component to the parser configuration. This method will
	* also add all of the component's recognized features and properties
	* to the list of default recognized features and properties.
	*
	* @param component The component to add.
	*/
	@:overload @:protected private function addCommonComponent(component : com.sun.org.apache.xerces.internal.xni.parser.XMLComponent) : Void;
	
	/**
	* Adds an XML 1.1 component to the parser configuration. This method will
	* also add all of the component's recognized features and properties
	* to the list of default recognized features and properties.
	*
	* @param component The component to add.
	*/
	@:overload @:protected private function addXML11Component(component : com.sun.org.apache.xerces.internal.xni.parser.XMLComponent) : Void;
	
	/**
	* Adds all of the component's recognized features and properties
	* to the list of default recognized features and properties, and
	* sets default values on the configuration for features and
	* properties which were previously absent from the configuration.
	*
	* @param component The component whose recognized features
	* and properties will be added to the configuration
	*/
	@:overload @:protected private function addRecognizedParamsAndSetDefaults(component : com.sun.org.apache.xerces.internal.xni.parser.XMLComponent) : Void;
	
	
}
