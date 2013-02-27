package com.sun.org.apache.xerces.internal.parsers;
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
extern class DOMParser extends com.sun.org.apache.xerces.internal.parsers.AbstractDOMParser
{
	/** Feature identifier: EntityResolver2. */
	private static var USE_ENTITY_RESOLVER2(default, null) : String;
	
	private static var REPORT_WHITESPACE(default, null) : String;
	
	/** Property identifier: symbol table. */
	private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: XML grammar pool. */
	private static var XMLGRAMMAR_POOL(default, null) : String;
	
	/** Use EntityResolver2. */
	private var fUseEntityResolver2 : Bool;
	
	/**
	* Constructs a DOM parser using the specified parser configuration.
	*/
	@:overload public function new(config : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration) : Void;
	
	/**
	* Constructs a DOM parser using the dtd/xml schema parser configuration.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a DOM parser using the specified symbol table.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	* Constructs a DOM parser using the specified symbol table and
	* grammar pool.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
	/**
	* Parses the input source specified by the given system identifier.
	* <p>
	* This method is equivalent to the following:
	* <pre>
	*     parse(new InputSource(systemId));
	* </pre>
	*
	* @param systemId The system identifier (URI).
	*
	* @exception org.xml.sax.SAXException Throws exception on SAX error.
	* @exception java.io.IOException Throws exception on i/o error.
	*/
	@:overload public function parse(systemId : String) : Void;
	
	/**
	* parse
	*
	* @param inputSource
	*
	* @exception org.xml.sax.SAXException
	* @exception java.io.IOException
	*/
	@:overload public function parse(inputSource : org.xml.sax.InputSource) : Void;
	
	/**
	* Sets the resolver used to resolve external entities. The EntityResolver
	* interface supports resolution of public and system identifiers.
	*
	* @param resolver The new entity resolver. Passing a null value will
	*                 uninstall the currently installed resolver.
	*/
	@:overload public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	/**
	* Return the current entity resolver.
	*
	* @return The current entity resolver, or null if none
	*         has been registered.
	* @see #setEntityResolver
	*/
	@:overload public function getEntityResolver() : org.xml.sax.EntityResolver;
	
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
	@:overload public function setErrorHandler(errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Return the current error handler.
	*
	* @return The current error handler, or null if none
	*         has been registered.
	* @see #setErrorHandler
	*/
	@:overload public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* Set the state of any feature in a SAX2 parser.  The parser
	* might not recognize the feature, and if it does recognize
	* it, it might not be able to fulfill the request.
	*
	* @param featureId The unique identifier (URI) of the feature.
	* @param state The requested state of the feature (true or false).
	*
	* @exception SAXNotRecognizedException If the
	*            requested feature is not known.
	* @exception SAXNotSupportedException If the
	*            requested feature is known, but the requested
	*            state is not supported.
	*/
	@:overload public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Query the state of a feature.
	*
	* Query the current state of any feature in a SAX2 parser.  The
	* parser might not recognize the feature.
	*
	* @param featureId The unique identifier (URI) of the feature
	*                  being set.
	* @return The current state of the feature.
	* @exception org.xml.sax.SAXNotRecognizedException If the
	*            requested feature is not known.
	* @exception SAXNotSupportedException If the
	*            requested feature is known but not supported.
	*/
	@:overload override public function getFeature(featureId : String) : Bool;
	
	/**
	* Set the value of any property in a SAX2 parser.  The parser
	* might not recognize the property, and if it does recognize
	* it, it might not support the requested value.
	*
	* @param propertyId The unique identifier (URI) of the property
	*                   being set.
	* @param value The value to which the property is being set.
	*
	* @exception SAXNotRecognizedException If the
	*            requested property is not known.
	* @exception SAXNotSupportedException If the
	*            requested property is known, but the requested
	*            value is not supported.
	*/
	@:overload public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Query the value of a property.
	*
	* Return the current value of a property in a SAX2 parser.
	* The parser might not recognize the property.
	*
	* @param propertyId The unique identifier (URI) of the property
	*                   being set.
	* @return The current value of the property.
	* @exception org.xml.sax.SAXNotRecognizedException If the
	*            requested property is not known.
	* @exception SAXNotSupportedException If the
	*            requested property is known but not supported.
	*/
	@:overload public function getProperty(propertyId : String) : Dynamic;
	
	/**
	* Returns this parser's XMLParserConfiguration.
	*/
	@:overload public function getXMLParserConfiguration() : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
	
	
}
