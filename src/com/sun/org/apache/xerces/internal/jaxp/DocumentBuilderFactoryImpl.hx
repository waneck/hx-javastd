package com.sun.org.apache.xerces.internal.jaxp;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004,2005 The Apache Software Foundation.
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
extern class DocumentBuilderFactoryImpl extends javax.xml.parsers.DocumentBuilderFactory
{
	/**
	* Creates a new instance of a {@link javax.xml.parsers.DocumentBuilder}
	* using the currently configured parameters.
	*/
	@:overload public function newDocumentBuilder() : javax.xml.parsers.DocumentBuilder;
	
	/**
	* Allows the user to set specific attributes on the underlying
	* implementation.
	* @param name    name of attribute
	* @param value   null means to remove attribute
	*/
	@:overload public function setAttribute(name : String, value : Dynamic) : Void;
	
	/**
	* Allows the user to retrieve specific attributes on the underlying
	* implementation.
	*/
	@:overload public function getAttribute(name : String) : Dynamic;
	
	@:overload public function getSchema() : javax.xml.validation.Schema;
	
	@:overload public function setSchema(grammar : javax.xml.validation.Schema) : Void;
	
	@:overload public function isXIncludeAware() : Bool;
	
	@:overload public function setXIncludeAware(state : Bool) : Void;
	
	@:overload public function getFeature(name : String) : Bool;
	
	@:overload public function setFeature(name : String, value : Bool) : Void;
	
	
}
