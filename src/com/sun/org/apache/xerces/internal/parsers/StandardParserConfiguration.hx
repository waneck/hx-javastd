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
extern class StandardParserConfiguration extends com.sun.org.apache.xerces.internal.parsers.DTDConfiguration
{
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
	
	/** Property identifier: XML Schema validator. */
	private static var SCHEMA_VALIDATOR(default, null) : String;
	
	/** Property identifier: schema location. */
	private static var SCHEMA_LOCATION(default, null) : String;
	
	/** Property identifier: no namespace schema location. */
	private static var SCHEMA_NONS_LOCATION(default, null) : String;
	
	/** Property identifier: Schema DV Factory */
	private static var SCHEMA_DV_FACTORY(default, null) : String;
	
	/** XML Schema Validator. */
	private var fSchemaValidator : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator;
	
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
	
	/** Configures the pipeline. */
	@:overload override private function configurePipeline() : Void;
	
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
	
	
}
