package com.sun.org.apache.xerces.internal.xni.parser;
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
extern interface XMLParserConfiguration extends com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager
{
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
	* <p>
	* When this method returns, all characters streams and byte streams
	* opened by the parser are closed.
	*
	* @param inputSource The input source for the top-level of the
	*                    XML document.
	*
	* @exception XNIException Any XNI exception, possibly wrapping
	*                         another exception.
	* @exception IOException  An IO exception from the parser, possibly
	*                         from a byte stream or character stream
	*                         supplied by the parser.
	*/
	@:overload public function parse(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* Allows a parser to add parser specific features to be recognized
	* and managed by the parser configuration.
	*
	* @param featureIds An array of the additional feature identifiers
	*                   to be recognized.
	*/
	@:overload public function addRecognizedFeatures(featureIds : java.NativeArray<String>) : Void;
	
	/**
	* Sets the state of a feature. This method is called by the parser
	* and gets propagated to components in this parser configuration.
	*
	* @param featureId The feature identifier.
	* @param state     The state of the feature.
	*
	* @throws XMLConfigurationException Thrown if there is a configuration
	*                                   error.
	*/
	@:overload public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Returns the state of a feature.
	*
	* @param featureId The feature identifier.
	*
	* @throws XMLConfigurationException Thrown if there is a configuration
	*                                   error.
	*/
	@:overload public function getFeature(featureId : String) : Bool;
	
	/**
	* Allows a parser to add parser specific properties to be recognized
	* and managed by the parser configuration.
	*
	* @param propertyIds An array of the additional property identifiers
	*                    to be recognized.
	*/
	@:overload public function addRecognizedProperties(propertyIds : java.NativeArray<String>) : Void;
	
	/**
	* Sets the value of a property. This method is called by the parser
	* and gets propagated to components in this parser configuration.
	*
	* @param propertyId The property identifier.
	* @param value      The value of the property.
	*
	* @throws XMLConfigurationException Thrown if there is a configuration
	*                                   error.
	*/
	@:overload public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Returns the value of a property.
	*
	* @param propertyId The property identifier.
	*
	* @throws XMLConfigurationException Thrown if there is a configuration
	*                                   error.
	*/
	@:overload public function getProperty(propertyId : String) : Dynamic;
	
	/**
	* Sets the error handler.
	*
	* @param errorHandler The error resolver.
	*/
	@:overload public function setErrorHandler(errorHandler : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler) : Void;
	
	/** Returns the registered error handler. */
	@:overload public function getErrorHandler() : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
	
	/**
	* Sets the document handler to receive information about the document.
	*
	* @param documentHandler The document handler.
	*/
	@:overload public function setDocumentHandler(documentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler) : Void;
	
	/** Returns the registered document handler. */
	@:overload public function getDocumentHandler() : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	/**
	* Sets the DTD handler.
	*
	* @param dtdHandler The DTD handler.
	*/
	@:overload public function setDTDHandler(dtdHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler) : Void;
	
	/** Returns the registered DTD handler. */
	@:overload public function getDTDHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/**
	* Sets the DTD content model handler.
	*
	* @param dtdContentModelHandler The DTD content model handler.
	*/
	@:overload public function setDTDContentModelHandler(dtdContentModelHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler) : Void;
	
	/** Returns the registered DTD content model handler. */
	@:overload public function getDTDContentModelHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
	
	/**
	* Sets the entity resolver.
	*
	* @param entityResolver The new entity resolver.
	*/
	@:overload public function setEntityResolver(entityResolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver) : Void;
	
	/** Returns the registered entity resolver. */
	@:overload public function getEntityResolver() : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
	
	/**
	* Set the locale to use for messages.
	*
	* @param locale The locale object to use for localization of messages.
	*
	* @exception XNIException Thrown if the parser does not support the
	*                         specified locale.
	*/
	@:overload public function setLocale(locale : java.util.Locale) : Void;
	
	/** Returns the locale. */
	@:overload public function getLocale() : java.util.Locale;
	
	
}
