package com.sun.org.apache.xerces.internal.jaxp.validation;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
@:internal extern class XMLSchemaValidatorComponentManager extends com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager
{
	/** Constructs a component manager suitable for Xerces' schema validator. */
	@:overload @:public public function new(grammarContainer : com.sun.org.apache.xerces.internal.jaxp.validation.XSGrammarPoolContainer) : Void;
	
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
	@:overload @:public override public function getFeatureState(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
	/**
	* Set the state of a feature.
	*
	* @param featureId The unique identifier (URI) of the feature.
	* @param state The requested state of the feature (true or false).
	*
	* @exception XMLConfigurationException If the requested feature is not known.
	*/
	@:overload @:public override public function setFeature(featureId : String, value : Bool) : Void;
	
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
	@:overload @:public override public function getPropertyState(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	/**
	* Sets the state of a property.
	*
	* @param propertyId The unique identifier (URI) of the property.
	* @param value The requested state of the property.
	*
	* @exception XMLConfigurationException If the requested property is not known.
	*/
	@:overload @:public override public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Adds all of the component's recognized features and properties
	* to the list of default recognized features and properties, and
	* sets default values on the configuration for features and
	* properties which were previously absent from the configuration.
	*
	* @param component The component whose recognized features
	* and properties will be added to the configuration
	*/
	@:overload @:public public function addRecognizedParamsAndSetDefaults(component : com.sun.org.apache.xerces.internal.xni.parser.XMLComponent, grammarContainer : com.sun.org.apache.xerces.internal.jaxp.validation.XSGrammarPoolContainer) : Void;
	
	/** Calls reset on each of the components owned by this component manager. **/
	@:overload @:public public function reset() : Void;
	
	
}
