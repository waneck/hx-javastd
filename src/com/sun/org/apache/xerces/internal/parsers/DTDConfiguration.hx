package com.sun.org.apache.xerces.internal.parsers;
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
extern class DTDConfiguration extends com.sun.org.apache.xerces.internal.parsers.BasicParserConfiguration implements com.sun.org.apache.xerces.internal.xni.parser.XMLPullParserConfiguration
{
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
	
	/** Set to true and recompile to print exception stack trace. */
	private static var PRINT_EXCEPTION_STACK_TRACE(default, null) : Bool;
	
	/** Grammar pool. */
	private var fGrammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	/** Datatype validator factory. */
	private var fDatatypeValidatorFactory : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** Error reporter. */
	private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/** Entity manager. */
	private var fEntityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	/** Document scanner. */
	private var fScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner;
	
	/** Input Source */
	private var fInputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	/** DTD scanner. */
	private var fDTDScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
	
	/** DTD Processor . */
	private var fDTDProcessor : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDProcessor;
	
	/** DTD Validator. */
	private var fDTDValidator : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator;
	
	/** Namespace binder. */
	private var fNamespaceBinder : com.sun.org.apache.xerces.internal.impl.XMLNamespaceBinder;
	
	private var fValidationManager : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	/** Locator */
	private var fLocator : com.sun.org.apache.xerces.internal.xni.XMLLocator;
	
	/**
	* True if a parse is in progress. This state is needed because
	* some features/properties cannot be set while parsing (e.g.
	* validation and namespaces).
	*/
	private var fParseInProgress : Bool;
	
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
	
	@:overload override public function getPropertyState(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	@:overload override public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Set the locale to use for messages.
	*
	* @param locale The locale object to use for localization of messages.
	*
	* @exception XNIException Thrown if the parser does not support the
	*                         specified locale.
	*/
	@:overload override public function setLocale(locale : java.util.Locale) : Void;
	
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
	@:overload override public function parse(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* Reset all components before parsing.
	*
	* @throws XNIException Thrown if an error occurs during initialization.
	*/
	@:overload override private function reset() : Void;
	
	/** Configures the pipeline. */
	@:overload private function configurePipeline() : Void;
	
	@:overload private function configureDTDPipeline() : Void;
	
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
	
	/** Creates an entity manager. */
	@:overload private function createEntityManager() : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	/** Creates an error reporter. */
	@:overload private function createErrorReporter() : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/** Create a document scanner. */
	@:overload private function createDocumentScanner() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner;
	
	/** Create a DTD scanner. */
	@:overload private function createDTDScanner() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
	
	/** Create a DTD loader . */
	@:overload private function createDTDProcessor() : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDProcessor;
	
	/** Create a DTD validator. */
	@:overload private function createDTDValidator() : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator;
	
	/** Create a namespace binder. */
	@:overload private function createNamespaceBinder() : com.sun.org.apache.xerces.internal.impl.XMLNamespaceBinder;
	
	/** Create a datatype validator factory. */
	@:overload private function createDatatypeValidatorFactory() : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	@:overload private function createValidationManager() : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	
}
