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
extern class BasicParserConfiguration extends com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings implements com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
{
	/** Feature identifier: validation. */
	@:protected @:static @:final private static var VALIDATION(default, null) : String;
	
	/** Feature identifier: namespaces. */
	@:protected @:static @:final private static var NAMESPACES(default, null) : String;
	
	/** Feature identifier: external general entities. */
	@:protected @:static @:final private static var EXTERNAL_GENERAL_ENTITIES(default, null) : String;
	
	/** Feature identifier: external parameter entities. */
	@:protected @:static @:final private static var EXTERNAL_PARAMETER_ENTITIES(default, null) : String;
	
	/** Property identifier: xml string. */
	@:protected @:static @:final private static var XML_STRING(default, null) : String;
	
	/** Property identifier: symbol table. */
	@:protected @:static @:final private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error handler. */
	@:protected @:static @:final private static var ERROR_HANDLER(default, null) : String;
	
	/** Property identifier: entity resolver. */
	@:protected @:static @:final private static var ENTITY_RESOLVER(default, null) : String;
	
	/** Symbol table. */
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Locale. */
	@:protected private var fLocale : java.util.Locale;
	
	/** Components. */
	@:protected private var fComponents : java.util.ArrayList<Dynamic>;
	
	/** The document handler. */
	@:protected private var fDocumentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	/** The DTD handler. */
	@:protected private var fDTDHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/** The DTD content model handler. */
	@:protected private var fDTDContentModelHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
	
	/** Last component in the document pipeline */
	@:protected private var fLastComponent : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	/** Default Constructor. */
	@:overload @:protected private function new() : Void;
	
	/**
	* Constructs a parser configuration using the specified symbol table.
	*
	* @param symbolTable The symbol table to use.
	*/
	@:overload @:protected private function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	* Constructs a parser configuration using the specified symbol table
	* and parent settings.
	*
	* @param symbolTable    The symbol table to use.
	* @param parentSettings The parent settings.
	*/
	@:overload @:protected private function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, parentSettings : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* Adds a component to the parser configuration. This method will
	* also add all of the component's recognized features and properties
	* to the list of default recognized features and properties.
	*
	* @param component The component to add.
	*/
	@:overload @:protected private function addComponent(component : com.sun.org.apache.xerces.internal.xni.parser.XMLComponent) : Void;
	
	/**
	* Parse an XML document.
	* <p>
	* The parser can use this method to instruct this configuration
	* to begin parsing an XML document from any valid input source
	* (a character stream, a byte stream, or a URI).
	* <p>
	* Parsers may not invoke this method while a parse is in progress.
	* Once a parse is complete, the parser may then parse another XML
	* document.
	* <p>
	* This method is synchronous: it will not return until parsing
	* has ended.  If a client application wants to terminate
	* parsing early, it should throw an exception.
	*
	* @param inputSource The input source for the top-level of the
	*               XML document.
	*
	* @exception XNIException Any XNI exception, possibly wrapping
	*                         another exception.
	* @exception IOException  An IO exception from the parser, possibly
	*                         from a byte stream or character stream
	*                         supplied by the parser.
	*/
	@:overload @:public @:abstract public function parse(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
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
	
	/**
	* Set the locale to use for messages.
	*
	* @param locale The locale object to use for localization of messages.
	*
	* @exception XNIException Thrown if the parser does not support the
	*                         specified locale.
	*/
	@:overload @:public public function setLocale(locale : java.util.Locale) : Void;
	
	/** Returns the locale. */
	@:overload @:public public function getLocale() : java.util.Locale;
	
	/**
	* reset all components before parsing and namespace context
	*/
	@:overload @:protected private function reset() : Void;
	
	/**
	* Check a property. If the property is known and supported, this method
	* simply returns. Otherwise, the appropriate exception is thrown.
	*
	* @param propertyId The unique identifier (URI) of the property
	*                   being set.
	* @exception com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException If the
	*            requested feature is not known or supported.
	*/
	@:overload @:protected override private function checkProperty(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
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
	* Returns the state of a feature.
	*
	* @param featureId The feature identifier.
	*
	* @throws XMLConfigurationException Thrown if there is a configuration
	*                                   error.
	*/
	@:overload @:public @:public override public function getFeature(featureId : String) : Bool;
	
	/**
	* Returns the state of a feature.
	* Does not throw exceptions.
	*
	* @param featureId The feature identifier.
	* @param defaultValue Default value if future is not available.
	*/
	@:overload @:public @:public override public function getFeature(featureId : String, defaultValue : Bool) : Bool;
	
	@:overload @:public @:public override public function getPropertyState(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	/**
	* Allows a parser to add parser specific features to be recognized
	* and managed by the parser configuration.
	*
	* @param featureIds An array of the additional feature identifiers
	*                   to be recognized.
	*/
	@:overload @:public @:public override public function addRecognizedFeatures(featureIds : java.NativeArray<String>) : Void;
	
	/**
	* Allows a parser to add parser specific properties to be recognized
	* and managed by the parser configuration.
	*
	* @param propertyIds An array of the additional property identifiers
	*                    to be recognized.
	*/
	@:overload @:public @:public override public function addRecognizedProperties(propertyIds : java.NativeArray<String>) : Void;
	
	@:overload @:public @:public override public function getFeatureState(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
	/**
	* Returns the value of a property.
	*
	* @param propertyId The property identifier.
	*
	* @throws XMLConfigurationException Thrown if there is a configuration
	*                                   error.
	*/
	@:overload @:public @:public override public function getProperty(propertyId : String) : Dynamic;
	
	/**
	* Returns the value of a property.
	* Does not throw exceptions.
	*
	* @param propertyId The property identifier.
	* @param defaultObject Return value if property is not available.
	*
	*/
	@:overload @:public @:public override public function getProperty(propertyId : String, defaultObject : Dynamic) : Dynamic;
	
	
}
