package com.sun.org.apache.xerces.internal.impl.xs.opti;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
extern class SchemaParsingConfig extends com.sun.org.apache.xerces.internal.parsers.BasicParserConfiguration implements com.sun.org.apache.xerces.internal.xni.parser.XMLPullParserConfiguration
{
	/**
	* @xerces.internal
	*
	* @author Rahul Srivastava, Sun Microsystems Inc.
	*
	* @version $Id: SchemaParsingConfig.java,v 1.8 2010-11-01 04:40:01 joehw Exp $
	*/
	private static var XML11_DATATYPE_VALIDATOR_FACTORY(default, null) : String;
	
	/** Feature identifier: warn on duplicate attribute definition. */
	private static var WARN_ON_DUPLICATE_ATTDEF(default, null) : String;
	
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
	
	/** Feature identifier: generate synthetic annotations. */
	private static var GENERATE_SYNTHETIC_ANNOTATIONS(default, null) : String;
	
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
	
	/** Property identifier: DTD validator. */
	private static var DTD_VALIDATOR(default, null) : String;
	
	/** Property identifier: namespace binder. */
	private static var NAMESPACE_BINDER(default, null) : String;
	
	/** Property identifier: datatype validator factory. */
	private static var DATATYPE_VALIDATOR_FACTORY(default, null) : String;
	
	private static var VALIDATION_MANAGER(default, null) : String;
	
	/** Property identifier: XML Schema validator. */
	private static var SCHEMA_VALIDATOR(default, null) : String;
	
	/** Property identifier: locale. */
	private static var LOCALE(default, null) : String;
	
	/** The XML 1.0 Datatype validator factory. */
	private var fDatatypeValidatorFactory(default, null) : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** The XML 1.0 Document scanner. */
	private var fNamespaceScanner(default, null) : com.sun.org.apache.xerces.internal.impl.XMLNSDocumentScannerImpl;
	
	/** The XML 1.0 DTD scanner. */
	private var fDTDScanner(default, null) : com.sun.org.apache.xerces.internal.impl.XMLDTDScannerImpl;
	
	/** The XML 1.1 Datatype validator factory. */
	private var fXML11DatatypeFactory : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** The XML 1.1 Document scanner. */
	private var fXML11NSDocScanner : com.sun.org.apache.xerces.internal.impl.XML11NSDocumentScannerImpl;
	
	/** The XML 1.1 DTD scanner. **/
	private var fXML11DTDScanner : com.sun.org.apache.xerces.internal.impl.XML11DTDScannerImpl;
	
	/** Current Datatype validator factory. */
	private var fCurrentDVFactory : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** Current scanner */
	private var fCurrentScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner;
	
	/** Current DTD scanner. */
	private var fCurrentDTDScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
	
	/** Grammar pool. */
	private var fGrammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	/** XML version detector. */
	private var fVersionDetector(default, null) : com.sun.org.apache.xerces.internal.impl.XMLVersionDetector;
	
	/** Error reporter. */
	private var fErrorReporter(default, null) : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/** Entity manager. */
	private var fEntityManager(default, null) : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	/** Input Source */
	private var fInputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	private var fValidationManager(default, null) : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	/** Locator */
	private var fLocator : com.sun.org.apache.xerces.internal.xni.XMLLocator;
	
	/**
	* True if a parse is in progress. This state is needed because
	* some features/properties cannot be set while parsing (e.g.
	* validation and namespaces).
	*/
	private var fParseInProgress : Bool;
	
	/**
	* fConfigUpdated is set to true if there has been any change to the configuration settings,
	* i.e a feature or a property was changed.
	*/
	private var fConfigUpdated : Bool;
	
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
	@:overload public function getFeatureState(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
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
	@:overload public function setFeature(featureId : String, state : Bool) : Void;
	
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
	@:overload public function getPropertyState(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	/**
	* setProperty
	*
	* @param propertyId
	* @param value
	*/
	@:overload public function setProperty(propertyId : String, value : Dynamic) : Void;
	
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
	* Parses the document in a pull parsing fashion.
	*
	* @param complete True if the pull parser should parse the
	*                 remaining document completely.
	*
	* @return True if there is more document to parse.
	*
	* @exception XNIException Any XNI exception, possibly wrapping
	*                         another exception.
	* @exception IOException  An IO exception from the parser, possibly
	*                         from a byte stream or character stream
	*                         supplied by the parser.
	*
	* @see #setInputSource
	*/
	@:overload public function parse(complete : Bool) : Bool;
	
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
	
	/**
	* Reset all components before parsing.
	*
	* @throws XNIException Thrown if an error occurs during initialization.
	*/
	@:overload public function reset() : Void;
	
	/** Configures the XML 1.0 pipeline. */
	@:overload private function configurePipeline() : Void;
	
	/** Configures the XML 1.1 pipeline. */
	@:overload private function configureXML11Pipeline() : Void;
	
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
	@:overload private function checkFeature(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
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
	@:overload private function checkProperty(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	/**
	* Reset all XML 1.0 components before parsing
	*/
	@:overload @:final private function resetXML10() : Void;
	
	/**
	* Reset all XML 1.1 components before parsing
	*/
	@:overload @:final private function resetXML11() : Void;
	
	/** */
	@:overload public function resetNodePool() : Void;
	
	
}
