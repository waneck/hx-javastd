package com.sun.org.apache.xerces.internal.xni.parser;
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
extern interface XMLComponentManager
{
	/**
	* Returns the state of a feature.
	*
	* @param featureId The feature identifier.
	*
	* @throws XMLConfigurationException Thrown on configuration error.
	*/
	@:overload @:public public function getFeature(featureId : String) : Bool;
	
	/**
	* Returns the state of a feature.
	* Does not throw exceptions.
	*
	* @param featureId The feature identifier.
	* @param defaultValue Default value if future is not available.
	*/
	@:overload @:public public function getFeature(featureId : String, defaultValue : Bool) : Bool;
	
	/**
	* Returns the value of a property.
	*
	* @param propertyId The property identifier.
	*
	* @throws XMLConfigurationException Thrown on configuration error.
	*/
	@:overload @:public public function getProperty(propertyId : String) : Dynamic;
	
	/**
	* Returns the value of a property.
	* Does not throw exceptions.
	*
	* @param propertyId The property identifier.
	* @param defaultObject Return value if property is not available.
	*
	*/
	@:overload @:public public function getProperty(propertyId : String, defaultObject : Dynamic) : Dynamic;
	
	@:overload @:public public function getFeatureState(featureId : String) : com.sun.org.apache.xerces.internal.util.FeatureState;
	
	@:overload @:public public function getPropertyState(propertyId : String) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	
}
