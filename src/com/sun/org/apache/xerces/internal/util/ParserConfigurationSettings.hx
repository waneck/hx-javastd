package com.sun.org.apache.xerces.internal.util;
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
extern class ParserConfigurationSettings implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager
{
	/**
	* This class implements the basic operations for managing parser
	* configuration features and properties. This utility class can
	* be used as a base class for parser configurations or separately
	* to encapsulate a number of parser settings as a component
	* manager.
	* <p>
	* This class can be constructed with a "parent" settings object
	* (in the form of an <code>XMLComponentManager</code>) that allows
	* parser configuration settings to be "chained" together.
	*
	* @author Andy Clark, IBM
	*
	* @version $Id: ParserConfigurationSettings.java,v 1.6 2010-11-01 04:40:14 joehw Exp $
	*/
	@:protected @:static @:final private static var PARSER_SETTINGS(default, null) : String;
	
	/** Recognized properties. */
	@:protected private var fRecognizedProperties : java.util.Set<String>;
	
	/** Properties. */
	@:protected private var fProperties : java.util.Map<String, Dynamic>;
	
	/** Recognized features. */
	@:protected private var fRecognizedFeatures : java.util.Set<String>;
	
	/** Features. */
	@:protected private var fFeatures : java.util.Map<String, Null<Bool>>;
	
	/** Parent parser configuration settings. */
	@:protected private var fParentSettings : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
	
	/** Default Constructor. */
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a parser configuration settings object with a
	* parent settings object.
	*/
	@:overload @:public public function new(parent : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* Allows a parser to add parser specific features to be recognized
	* and managed by the parser configuration.
	*
	* @param featureIds An array of the additional feature identifiers
	*                   to be recognized.
	*/
	@:overload @:public public function addRecognizedFeatures(featureIds : java.NativeArray<String>) : Void;
	
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
	@:overload @:public public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Allows a parser to add parser specific properties to be recognized
	* and managed by the parser configuration.
	*
	* @param propertyIds An array of the additional property identifiers
	*                    to be recognized.
	*/
	@:overload @:public public function addRecognizedProperties(propertyIds : java.NativeArray<String>) : Void;
	
	/**
	* setProperty
	*
	* @param propertyId
	* @param value
	* @exception com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException If the
	*            requested feature is not known.
	*/
	@:overload @:public public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Returns the state of a feature.
	*
	* @param featureId The feature identifier.
	* @return true if the feature is supported
	*
	* @throws XMLConfigurationException Thrown for configuration error.
	*                                   In general, components should
	*                                   only throw this exception if
	*                                   it is <strong>really</strong>
	*                                   a critical error.
	*/
	@:overload @:public @:final public function getFeature(featureId : String) : Bool;
	
	@:overload @:public @:final public function getFeature(featureId : String, defaultValue : Bool) : Bool;
	
	@:overload @:public public function getFeatureState(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
	/**
	* Returns the value of a property.
	*
	* @param propertyId The property identifier.
	* @return the value of the property
	*
	* @throws XMLConfigurationException Thrown for configuration error.
	*                                   In general, components should
	*                                   only throw this exception if
	*                                   it is <strong>really</strong>
	*                                   a critical error.
	*/
	@:overload @:public @:final public function getProperty(propertyId : String) : Dynamic;
	
	@:overload @:public @:final public function getProperty(propertyId : String, defaultValue : Dynamic) : Dynamic;
	
	@:overload @:public public function getPropertyState(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	/**
	* Check a feature. If feature is known and supported, this method simply
	* returns. Otherwise, the appropriate exception is thrown.
	*
	* @param featureId The unique identifier (URI) of the feature.
	*
	* @exception com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException If the
	*            requested feature is not known.
	*/
	@:overload @:protected private function checkFeature(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
	/**
	* Check a property. If the property is known and supported, this method
	* simply returns. Otherwise, the appropriate exception is thrown.
	*
	* @param propertyId The unique identifier (URI) of the property
	*                   being set.
	* @exception com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException If the
	*            requested feature is not known.
	*/
	@:overload @:protected private function checkProperty(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	
}
