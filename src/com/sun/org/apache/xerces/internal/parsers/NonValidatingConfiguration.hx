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
extern class NonValidatingConfiguration extends com.sun.org.apache.xerces.internal.parsers.BasicParserConfiguration implements com.sun.org.apache.xerces.internal.xni.parser.XMLPullParserConfiguration
{
	/** Feature identifier: warn on duplicate attribute definition. */
	@:protected @:static @:final private static var WARN_ON_DUPLICATE_ATTDEF(default, null) : String;
	
	/** Feature identifier: warn on duplicate entity definition. */
	@:protected @:static @:final private static var WARN_ON_DUPLICATE_ENTITYDEF(default, null) : String;
	
	/** Feature identifier: warn on undeclared element definition. */
	@:protected @:static @:final private static var WARN_ON_UNDECLARED_ELEMDEF(default, null) : String;
	
	/** Feature identifier: allow Java encodings. */
	@:protected @:static @:final private static var ALLOW_JAVA_ENCODINGS(default, null) : String;
	
	/** Feature identifier: continue after fatal error. */
	@:protected @:static @:final private static var CONTINUE_AFTER_FATAL_ERROR(default, null) : String;
	
	/** Feature identifier: load external DTD. */
	@:protected @:static @:final private static var LOAD_EXTERNAL_DTD(default, null) : String;
	
	/** Feature identifier: notify built-in refereces. */
	@:protected @:static @:final private static var NOTIFY_BUILTIN_REFS(default, null) : String;
	
	/** Feature identifier: notify character refereces. */
	@:protected @:static @:final private static var NOTIFY_CHAR_REFS(default, null) : String;
	
	/** Feature identifier: expose schema normalized value */
	@:protected @:static @:final private static var NORMALIZE_DATA(default, null) : String;
	
	/** Feature identifier: send element default value via characters() */
	@:protected @:static @:final private static var SCHEMA_ELEMENT_DEFAULT(default, null) : String;
	
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
	
	/** Property identifier: XML Schema validator. */
	@:protected @:static @:final private static var SCHEMA_VALIDATOR(default, null) : String;
	
	/** Property identifier: locale. */
	@:protected @:static @:final private static var LOCALE(default, null) : String;
	
	/** Grammar pool. */
	@:protected private var fGrammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	/** Datatype validator factory. */
	@:protected private var fDatatypeValidatorFactory : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/** Error reporter. */
	@:protected private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/** Entity manager. */
	@:protected private var fEntityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	/** Document scanner. */
	@:protected private var fScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner;
	
	/** Input Source */
	@:protected private var fInputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	/** DTD scanner. */
	@:protected private var fDTDScanner : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
	
	@:protected private var fValidationManager : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	/** fConfigUpdated is set to true if there has been any change to the configuration settings,
	* i.e a feature or a property was changed.
	*/
	@:protected private var fConfigUpdated : Bool;
	
	/** Locator */
	@:protected private var fLocator : com.sun.org.apache.xerces.internal.xni.XMLLocator;
	
	/**
	* True if a parse is in progress. This state is needed because
	* some features/properties cannot be set while parsing (e.g.
	* validation and namespaces).
	*/
	@:protected private var fParseInProgress : Bool;
	
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
	
	@:overload @:public override public function setFeature(featureId : String, state : Bool) : Void;
	
	@:overload @:public override public function getPropertyState(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	@:overload @:public override public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Set the locale to use for messages.
	*
	* @param locale The locale object to use for localization of messages.
	*
	* @exception XNIException Thrown if the parser does not support the
	*                         specified locale.
	*/
	@:overload @:public override public function setLocale(locale : java.util.Locale) : Void;
	
	@:overload @:public override public function getFeatureState(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
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
	@:overload @:public public function parse(complete : Bool) : Bool;
	
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
	@:overload @:public override public function parse(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* Reset all components before parsing.
	*
	* @throws XNIException Thrown if an error occurs during initialization.
	*/
	@:overload @:protected override private function reset() : Void;
	
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
	
	/** Creates an entity manager. */
	@:overload @:protected private function createEntityManager() : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	/** Creates an error reporter. */
	@:overload @:protected private function createErrorReporter() : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/** Create a document scanner. */
	@:overload @:protected private function createDocumentScanner() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner;
	
	/** Create a DTD scanner. */
	@:overload @:protected private function createDTDScanner() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
	
	/** Create a datatype validator factory. */
	@:overload @:protected private function createDatatypeValidatorFactory() : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	@:overload @:protected private function createValidationManager() : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	
}
