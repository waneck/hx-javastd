package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2005 The Apache Software Foundation.
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
extern class XMLSchemaLoader implements com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent implements com.sun.org.apache.xerces.internal.xs.XSLoader implements org.w3c.dom.DOMConfiguration
{
	/** Feature identifier: schema full checking*/
	@:protected @:static @:final private static var SCHEMA_FULL_CHECKING(default, null) : String;
	
	/** Feature identifier: continue after fatal error. */
	@:protected @:static @:final private static var CONTINUE_AFTER_FATAL_ERROR(default, null) : String;
	
	/** Feature identifier: allow java encodings to be recognized when parsing schema docs. */
	@:protected @:static @:final private static var ALLOW_JAVA_ENCODINGS(default, null) : String;
	
	/** Feature identifier: standard uri conformant feature. */
	@:protected @:static @:final private static var STANDARD_URI_CONFORMANT_FEATURE(default, null) : String;
	
	/** Feature identifier: validate annotations. */
	@:protected @:static @:final private static var VALIDATE_ANNOTATIONS(default, null) : String;
	
	/** Feature: disallow doctype*/
	@:protected @:static @:final private static var DISALLOW_DOCTYPE(default, null) : String;
	
	/** Feature: generate synthetic annotations */
	@:protected @:static @:final private static var GENERATE_SYNTHETIC_ANNOTATIONS(default, null) : String;
	
	/** Feature identifier: honour all schemaLocations */
	@:protected @:static @:final private static var HONOUR_ALL_SCHEMALOCATIONS(default, null) : String;
	
	@:protected @:static @:final private static var AUGMENT_PSVI(default, null) : String;
	
	@:protected @:static @:final private static var PARSER_SETTINGS(default, null) : String;
	
	/** Feature identifier: namespace growth */
	@:protected @:static @:final private static var NAMESPACE_GROWTH(default, null) : String;
	
	/** Feature identifier: tolerate duplicates */
	@:protected @:static @:final private static var TOLERATE_DUPLICATES(default, null) : String;
	
	/** Property identifier: Schema DV Factory */
	@:protected @:static @:final private static var SCHEMA_DV_FACTORY(default, null) : String;
	
	@:protected @:static @:final private static var USE_SERVICE_MECHANISM(default, null) : String;
	
	/** Property identifier: symbol table. */
	@:public @:static @:final public static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error reporter. */
	@:public @:static @:final public static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: error handler. */
	@:protected @:static @:final private static var ERROR_HANDLER(default, null) : String;
	
	/** Property identifier: entity resolver. */
	@:public @:static @:final public static var ENTITY_RESOLVER(default, null) : String;
	
	/** Property identifier: grammar pool. */
	@:public @:static @:final public static var XMLGRAMMAR_POOL(default, null) : String;
	
	/** Property identifier: schema location. */
	@:protected @:static @:final private static var SCHEMA_LOCATION(default, null) : String;
	
	/** Property identifier: no namespace schema location. */
	@:protected @:static @:final private static var SCHEMA_NONS_LOCATION(default, null) : String;
	
	/** Property identifier: JAXP schema source. */
	@:protected @:static @:final private static var JAXP_SCHEMA_SOURCE(default, null) : String;
	
	@:protected @:static @:final private static var SECURITY_MANAGER(default, null) : String;
	
	/** Property identifier: locale. */
	@:protected @:static @:final private static var LOCALE(default, null) : String;
	
	@:protected @:static @:final private static var ENTITY_MANAGER(default, null) : String;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	* Returns a list of feature identifiers that are recognized by
	* this XMLGrammarLoader.  This method may return null if no features
	* are recognized.
	*/
	@:overload @:public public function getRecognizedFeatures() : java.NativeArray<String>;
	
	/**
	* Returns the state of a feature.
	*
	* @param featureId The feature identifier.
	*
	* @throws XMLConfigurationException Thrown on configuration error.
	*/
	@:overload @:public public function getFeature(featureId : String) : Bool;
	
	/**
	* Sets the state of a feature.
	*
	* @param featureId The feature identifier.
	* @param state     The state of the feature.
	*
	* @throws XMLConfigurationException Thrown when a feature is not
	*                  recognized or cannot be set.
	*/
	@:overload @:public public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Returns a list of property identifiers that are recognized by
	* this XMLGrammarLoader.  This method may return null if no properties
	* are recognized.
	*/
	@:overload @:public public function getRecognizedProperties() : java.NativeArray<String>;
	
	/**
	* Returns the state of a property.
	*
	* @param propertyId The property identifier.
	*
	* @throws XMLConfigurationException Thrown on configuration error.
	*/
	@:overload @:public public function getProperty(propertyId : String) : Dynamic;
	
	/**
	* Sets the state of a property.
	*
	* @param propertyId The property identifier.
	* @param state     The state of the property.
	*
	* @throws XMLConfigurationException Thrown when a property is not
	*                  recognized or cannot be set.
	*/
	@:overload @:public public function setProperty(propertyId : String, state : Dynamic) : Void;
	
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
	* Returns a Grammar object by parsing the contents of the
	* entities pointed to by sources.
	*
	* @param source[]  the locations of the entity which forms
	*                      the staring point of the grammars to be constructed
	* @throws IOException  when a problem is encounted reading the entity
	* @throws XNIException when a condition arises (such as a FatalError) that requires parsing
	*                          of the entity be terminated
	*/
	@:overload @:public public function loadGrammar(source : java.NativeArray<com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource>) : Void;
	
	/**
	* Returns a Grammar object by parsing the contents of the
	* entity pointed to by source.
	*
	* @param source        the location of the entity which forms
	*                          the starting point of the grammar to be constructed.
	* @throws IOException      When a problem is encountered reading the entity
	*          XNIException    When a condition arises (such as a FatalError) that requires parsing
	*                              of the entity be terminated.
	*/
	@:overload @:public public function loadGrammar(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	/** This method tries to resolve location of the given schema.
	* The loader stores the namespace/location pairs in a hashtable (use "" as the
	* namespace of absent namespace). When resolving an entity, loader first tries
	* to find in the hashtable whether there is a value for that namespace,
	* if so, pass that location value to the user-defined entity resolver.
	*
	* @param desc
	* @param locationPairs
	* @param entityResolver
	* @return
	* @throws IOException
	*/
	@:overload @:public @:static public static function resolveDocument(desc : com.sun.org.apache.xerces.internal.impl.xs.XSDDescription, locationPairs : java.util.Map<Dynamic, Dynamic>, entityResolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver) : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	@:overload @:public @:static public static function processExternalHints(sl : String, nsl : String, locations : java.util.Map<Dynamic, Dynamic>, er : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter) : Void;
	
	@:overload @:public @:static public static function tokenizeSchemaLocationStr(schemaStr : String, locations : java.util.Map<Dynamic, Dynamic>) : Bool;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.parser.XMLComponent#getFeatureDefault(java.lang.String)
	*/
	@:overload @:public public function getFeatureDefault(featureId : String) : Null<Bool>;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.parser.XMLComponent#getPropertyDefault(java.lang.String)
	*/
	@:overload @:public public function getPropertyDefault(propertyId : String) : Dynamic;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.parser.XMLComponent#reset(com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager)
	*/
	@:overload @:public public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSLoader#getConfig()
	*/
	@:overload @:public public function getConfig() : org.w3c.dom.DOMConfiguration;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSLoader#load(org.w3c.dom.ls.LSInput)
	*/
	@:overload @:public public function load(is : org.w3c.dom.ls.LSInput) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSLoader#loadInputList(com.sun.org.apache.xerces.internal.xs.DOMInputList)
	*/
	@:overload @:public public function loadInputList(is : com.sun.org.apache.xerces.internal.xs.LSInputList) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSLoader#loadURI(java.lang.String)
	*/
	@:overload @:public public function loadURI(uri : String) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.XSLoader#loadURIList(com.sun.org.apache.xerces.internal.xs.StringList)
	*/
	@:overload @:public public function loadURIList(uriList : com.sun.org.apache.xerces.internal.xs.StringList) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	/* (non-Javadoc)
	* @see DOMConfiguration#canSetParameter(String, Object)
	*/
	@:overload @:public public function canSetParameter(name : String, value : Dynamic) : Bool;
	
	/* (non-Javadoc)
	* @see DOMConfiguration#getParameter(String)
	*/
	@:overload @:public public function getParameter(name : String) : Dynamic;
	
	/* (non-Javadoc)
	* @see DOMConfiguration#getParameterNames()
	*/
	@:overload @:public public function getParameterNames() : org.w3c.dom.DOMStringList;
	
	/* (non-Javadoc)
	* @see DOMConfiguration#setParameter(String, Object)
	*/
	@:overload @:public public function setParameter(name : String, value : Dynamic) : Void;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xs$XMLSchemaLoader$LocationArray') @:internal extern class XMLSchemaLoader_LocationArray
{
	@:overload @:public public function resize(oldLength : Int, newLength : Int) : Void;
	
	@:overload @:public public function addLocation(location : String) : Void;
	
	@:overload @:public public function getLocationArray() : java.NativeArray<String>;
	
	@:overload @:public public function getFirstLocation() : String;
	
	@:overload @:public public function getLength() : Int;
	
	
}
