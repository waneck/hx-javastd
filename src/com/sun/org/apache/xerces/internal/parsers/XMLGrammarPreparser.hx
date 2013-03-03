package com.sun.org.apache.xerces.internal.parsers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class XMLGrammarPreparser
{
	/** Property identifier: symbol table. */
	@:protected @:static @:final private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error reporter. */
	@:protected @:static @:final private static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: error handler. */
	@:protected @:static @:final private static var ERROR_HANDLER(default, null) : String;
	
	/** Property identifier: entity resolver. */
	@:protected @:static @:final private static var ENTITY_RESOLVER(default, null) : String;
	
	/** Property identifier: grammar pool . */
	@:protected @:static @:final private static var GRAMMAR_POOL(default, null) : String;
	
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	@:protected private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	@:protected private var fEntityResolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
	
	@:protected private var fGrammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	@:protected private var fLocale : java.util.Locale;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a preparser using the specified symbol table.
	*
	* @param symbolTable The symbol table to use.
	*/
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/*
	* Register a type of grammar to make it preparsable.   If
	* the second parameter is null, the parser will use its  built-in
	* facilities for that grammar type.
	* This should be called by the application immediately
	* after creating this object and before initializing any properties/features.
	* @param type   URI identifying the type of the grammar
	* @param loader an object capable of preparsing that type; null if the ppreparser should use built-in knowledge.
	* @return true if successful; false if no built-in knowledge of
	*       the type or if unable to instantiate the string we know about
	*/
	@:overload @:public public function registerPreparser(grammarType : String, loader : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader) : Bool;
	
	/**
	* Parse a grammar from a location identified by an
	* XMLInputSource.
	* This method also adds this grammar to the XMLGrammarPool
	*
	* @param type The type of the grammar to be constructed
	* @param is The XMLInputSource containing this grammar's
	* information
	* <strong>If a URI is included in the systemId field, the parser will not expand this URI or make it
	* available to the EntityResolver</strong>
	* @return The newly created <code>Grammar</code>.
	* @exception XNIException thrown on an error in grammar
	* construction
	* @exception IOException thrown if an error is encountered
	* in reading the file
	*/
	@:overload @:public public function preparseGrammar(type : String, is : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	/**
	* Set the locale to use for messages.
	*
	* @param locale The locale object to use for localization of messages.
	*
	* @exception XNIException Thrown if the parser does not support the
	*                         specified locale.
	*/
	@:overload @:public public function setLocale(locale : java.util.Locale) : Void;
	
	/** Return the Locale the XMLGrammarLoader is using. */
	@:overload @:public public function getLocale() : java.util.Locale;
	
	/**
	* Sets the error handler.
	*
	* @param errorHandler The error handler.
	*/
	@:overload @:public public function setErrorHandler(errorHandler : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler) : Void;
	
	/** Returns the registered error handler.  */
	@:overload @:public public function getErrorHandler() : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
	
	/**
	* Sets the entity resolver.
	*
	* @param entityResolver The new entity resolver.
	*/
	@:overload @:public public function setEntityResolver(entityResolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver) : Void;
	
	/** Returns the registered entity resolver.  */
	@:overload @:public public function getEntityResolver() : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
	
	/**
	* Sets the grammar pool.
	*
	* @param grammarPool The new grammar pool.
	*/
	@:overload @:public public function setGrammarPool(grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
	/** Returns the registered grammar pool.  */
	@:overload @:public public function getGrammarPool() : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	@:overload @:public public function getLoader(type : String) : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader;
	
	@:overload @:public public function setFeature(featureId : String, value : Bool) : Void;
	
	@:overload @:public public function setProperty(propId : String, value : Dynamic) : Void;
	
	@:overload @:public public function getFeature(type : String, featureId : String) : Bool;
	
	@:overload @:public public function getProperty(type : String, propertyId : String) : Dynamic;
	
	
}
