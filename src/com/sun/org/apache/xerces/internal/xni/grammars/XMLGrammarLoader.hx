package com.sun.org.apache.xerces.internal.xni.grammars;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
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
extern interface XMLGrammarLoader
{
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
	* entity pointed to by source.
	*
	* @param source        the location of the entity which forms
	*                          the starting point of the grammar to be constructed.
	* @throws IOException      When a problem is encountered reading the entity
	*          XNIException    When a condition arises (such as a FatalError) that requires parsing
	*                              of the entity be terminated.
	*/
	@:overload @:public public function loadGrammar(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	
}
