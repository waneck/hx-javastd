package com.sun.org.apache.xalan.internal.xsltc.trax;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: DOM2TO.java,v 1.5 2005/09/28 13:48:44 pvedula Exp $
*/
extern class DOM2TO implements org.xml.sax.XMLReader implements org.xml.sax.ext.Locator2
{
	@:overload public function new(root : org.w3c.dom.Node, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload public function getContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload public function parse(unused : org.xml.sax.InputSource) : Void;
	
	@:overload public function parse() : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getFeature(name : String) : Bool;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function parse(sysId : String) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function setErrorHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getProperty(name : String) : Dynamic;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getColumnNumber() : Int;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getLineNumber() : Int;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getPublicId() : String;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getSystemId() : String;
	
	@:overload public function getXMLVersion() : String;
	
	@:overload public function getEncoding() : String;
	
	
}
