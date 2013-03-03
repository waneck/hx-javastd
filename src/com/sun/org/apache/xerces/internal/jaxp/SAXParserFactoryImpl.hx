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
extern class SAXParserFactoryImpl extends javax.xml.parsers.SAXParserFactory
{
	/**
	* Creates a new instance of <code>SAXParser</code> using the currently
	* configured factory parameters.
	* @return javax.xml.parsers.SAXParser
	*/
	@:overload @:public override public function newSAXParser() : javax.xml.parsers.SAXParser;
	
	/**
	* Sets the particular feature in the underlying implementation of
	* org.xml.sax.XMLReader.
	*/
	@:overload @:public override public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* returns the particular property requested for in the underlying
	* implementation of org.xml.sax.XMLReader.
	*/
	@:overload @:public override public function getFeature(name : String) : Bool;
	
	@:overload @:public override public function getSchema() : javax.xml.validation.Schema;
	
	@:overload @:public override public function setSchema(grammar : javax.xml.validation.Schema) : Void;
	
	@:overload @:public override public function isXIncludeAware() : Bool;
	
	@:overload @:public override public function setXIncludeAware(state : Bool) : Void;
	
	@:overload @:public override public function setValidating(validating : Bool) : Void;
	
	@:overload @:public override public function isValidating() : Bool;
	
	@:overload @:public override public function isNamespaceAware() : Bool;
	
	@:overload @:public override public function setNamespaceAware(awareness : Bool) : Void;
	
	
}
