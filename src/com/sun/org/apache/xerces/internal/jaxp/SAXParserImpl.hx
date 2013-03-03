package com.sun.org.apache.xerces.internal.jaxp;
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
extern class SAXParserImpl extends javax.xml.parsers.SAXParser implements com.sun.org.apache.xerces.internal.jaxp.JAXPConstants implements com.sun.org.apache.xerces.internal.xs.PSVIProvider
{
	@:overload @:public override public function getParser() : org.xml.sax.Parser;
	
	/**
	* Returns the XMLReader that is encapsulated by the implementation of
	* this class.
	*/
	@:overload @:public override public function getXMLReader() : org.xml.sax.XMLReader;
	
	@:overload @:public override public function isNamespaceAware() : Bool;
	
	@:overload @:public override public function isValidating() : Bool;
	
	/**
	* Gets the XInclude processing mode for this parser
	* @return the state of XInclude processing mode
	*/
	@:overload @:public override public function isXIncludeAware() : Bool;
	
	/**
	* Sets the particular property in the underlying implementation of
	* org.xml.sax.XMLReader.
	*/
	@:overload @:public override public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* returns the particular property requested for in the underlying
	* implementation of org.xml.sax.XMLReader.
	*/
	@:overload @:public override public function getProperty(name : String) : Dynamic;
	
	@:overload @:public override public function parse(is : org.xml.sax.InputSource, dh : org.xml.sax.helpers.DefaultHandler) : Void;
	
	@:overload @:public override public function parse(is : org.xml.sax.InputSource, hb : org.xml.sax.HandlerBase) : Void;
	
	@:overload @:public override public function getSchema() : javax.xml.validation.Schema;
	
	@:overload @:public override public function reset() : Void;
	
	/*
	* PSVIProvider methods
	*/
	@:overload @:public public function getElementPSVI() : com.sun.org.apache.xerces.internal.xs.ElementPSVI;
	
	@:overload @:public public function getAttributePSVI(index : Int) : com.sun.org.apache.xerces.internal.xs.AttributePSVI;
	
	@:overload @:public public function getAttributePSVIByName(uri : String, localname : String) : com.sun.org.apache.xerces.internal.xs.AttributePSVI;
	
	
}
/**
* Extension of SAXParser. This class tracks changes to
* features and properties to allow the parser to be reset to
* its initial state.
*/
@:native('com$sun$org$apache$xerces$internal$jaxp$SAXParserImpl$JAXPSAXParser') extern class SAXParserImpl_JAXPSAXParser extends com.sun.org.apache.xerces.internal.parsers.SAXParser
{
	@:overload @:public public function new() : Void;
	
	/**
	* Override SAXParser's setFeature method to track the initial state
	* of features. This keeps us from affecting the performance of the
	* SAXParser when it is created with XMLReaderFactory.
	*/
	@:overload @:public @:synchronized override public function setFeature(name : String, value : Bool) : Void;
	
	@:overload @:public @:synchronized override public function getFeature(name : String) : Bool;
	
	/**
	* Override SAXParser's setProperty method to track the initial state
	* of properties. This keeps us from affecting the performance of the
	* SAXParser when it is created with XMLReaderFactory.
	*/
	@:overload @:public @:synchronized override public function setProperty(name : String, value : Dynamic) : Void;
	
	@:overload @:public @:synchronized override public function getProperty(name : String) : Dynamic;
	
	@:overload @:public override public function parse(inputSource : org.xml.sax.InputSource) : Void;
	
	@:overload @:public override public function parse(systemId : String) : Void;
	
	
}
