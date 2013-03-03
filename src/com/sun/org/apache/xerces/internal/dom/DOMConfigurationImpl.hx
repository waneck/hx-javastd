package com.sun.org.apache.xerces.internal.dom;
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
extern class DOMConfigurationImpl extends com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings implements com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration implements org.w3c.dom.DOMConfiguration
{
	/** Feature identifier: validation. */
	@:protected @:static @:final private static var XERCES_VALIDATION(default, null) : String;
	
	/** Feature identifier: namespaces. */
	@:protected @:static @:final private static var XERCES_NAMESPACES(default, null) : String;
	
	@:protected @:static @:final private static var SCHEMA(default, null) : String;
	
	@:protected @:static @:final private static var SCHEMA_FULL_CHECKING(default, null) : String;
	
	@:protected @:static @:final private static var DYNAMIC_VALIDATION(default, null) : String;
	
	@:protected @:static @:final private static var NORMALIZE_DATA(default, null) : String;
	
	/** sending psvi in the pipeline */
	@:protected @:static @:final private static var SEND_PSVI(default, null) : String;
	
	@:protected @:final @:static private static var DTD_VALIDATOR_FACTORY_PROPERTY(default, null) : String;
	
	/** Feature identifier: namespace growth */
	@:protected @:static @:final private static var NAMESPACE_GROWTH(default, null) : String;
	
	@:protected @:static @:final private static var TOLERATE_DUPLICATES(default, null) : String;
	
	/** Property identifier: entity manager. */
	@:protected @:static @:final private static var ENTITY_MANAGER(default, null) : String;
	
	/** Property identifier: error reporter. */
	@:protected @:static @:final private static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: xml string. */
	@:protected @:static @:final private static var XML_STRING(default, null) : String;
	
	/** Property identifier: symbol table. */
	@:protected @:static @:final private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property id: Grammar pool*/
	@:protected @:static @:final private static var GRAMMAR_POOL(default, null) : String;
	
	/** Property identifier: error handler. */
	@:protected @:static @:final private static var ERROR_HANDLER(default, null) : String;
	
	/** Property identifier: entity resolver. */
	@:protected @:static @:final private static var ENTITY_RESOLVER(default, null) : String;
	
	/** Property identifier: JAXP schema language / DOM schema-type. */
	@:protected @:static @:final private static var JAXP_SCHEMA_LANGUAGE(default, null) : String;
	
	/** Property identifier: JAXP schema source/ DOM schema-location. */
	@:protected @:static @:final private static var JAXP_SCHEMA_SOURCE(default, null) : String;
	
	@:protected @:static @:final private static var VALIDATION_MANAGER(default, null) : String;
	
	/** Property identifier: Schema DV Factory */
	@:protected @:static @:final private static var SCHEMA_DV_FACTORY(default, null) : String;
	
	/** Normalization features*/
	@:protected private var features : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var NAMESPACES(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var DTNORMALIZATION(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var ENTITIES(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var CDATA(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var SPLITCDATA(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var COMMENTS(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var VALIDATE(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var PSVI(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var WELLFORMED(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var NSDECL(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var INFOSET_TRUE_PARAMS(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var INFOSET_FALSE_PARAMS(default, null) : java.StdTypes.Int16;
	
	@:protected @:final @:static private static var INFOSET_MASK(default, null) : java.StdTypes.Int16;
	
	/** Symbol table. */
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Components. */
	@:protected private var fComponents : java.util.ArrayList<Dynamic>;
	
	@:protected private var fValidationManager : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	/** Locale. */
	@:protected private var fLocale : java.util.Locale;
	
	/** Error reporter */
	@:protected private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	@:protected @:final private var fErrorHandlerWrapper(default, null) : com.sun.org.apache.xerces.internal.util.DOMErrorHandlerWrapper;
	
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
	* @param source The input source for the top-level of the
	*               XML document.
	*
	* @exception XNIException Any XNI exception, possibly wrapping
	*                         another exception.
	* @exception IOException  An IO exception from the parser, possibly
	*                         from a byte stream or character stream
	*                         supplied by the parser.
	*/
	@:overload @:public public function parse(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
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
	* DOM Level 3 WD - Experimental.
	* setParameter
	*/
	@:overload @:public public function setParameter(name : String, value : Dynamic) : Void;
	
	/**
	* DOM Level 3 WD - Experimental.
	* getParameter
	*/
	@:overload @:public public function getParameter(name : String) : Dynamic;
	
	/**
	* DOM Level 3 WD - Experimental.
	* Check if setting a parameter to a specific value is supported.
	*
	* @param name The name of the parameter to check.
	*
	* @param value An object. if null, the returned value is true.
	*
	* @return true if the parameter could be successfully set to the
	* specified value, or false if the parameter is not recognized or
	* the requested value is not supported. This does not change the
	* current value of the parameter itself.
	*/
	@:overload @:public public function canSetParameter(name : String, value : Dynamic) : Bool;
	
	/**
	*  DOM Level 3 CR - Experimental.
	*
	*  The list of the parameters supported by this
	* <code>DOMConfiguration</code> object and for which at least one value
	* can be set by the application. Note that this list can also contain
	* parameter names defined outside this specification.
	*/
	@:overload @:public public function getParameterNames() : org.w3c.dom.DOMStringList;
	
	/**
	* reset all components before parsing
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
	
	@:overload @:protected private function addComponent(component : com.sun.org.apache.xerces.internal.xni.parser.XMLComponent) : Void;
	
	@:overload @:protected private function createValidationManager() : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
	
	
}
