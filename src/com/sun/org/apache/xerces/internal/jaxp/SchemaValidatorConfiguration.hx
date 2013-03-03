package com.sun.org.apache.xerces.internal.jaxp;
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
@:internal extern class SchemaValidatorConfiguration implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager
{
	@:overload @:public public function new(parentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager, grammarContainer : com.sun.org.apache.xerces.internal.jaxp.validation.XSGrammarPoolContainer, validationManager : com.sun.org.apache.xerces.internal.impl.validation.ValidationManager) : Void;
	
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
	@:overload @:public public function getFeature(featureId : String) : Bool;
	
	@:overload @:public public function getFeatureState(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
	@:overload @:public public function getPropertyState(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
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
	@:overload @:public public function getProperty(propertyId : String) : Dynamic;
	
	@:overload @:public public function getFeature(featureId : String, defaultValue : Bool) : Bool;
	
	@:overload @:public public function getProperty(propertyId : String, defaultValue : Dynamic) : Dynamic;
	
	
}
