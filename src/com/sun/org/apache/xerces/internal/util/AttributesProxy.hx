package com.sun.org.apache.xerces.internal.util;
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
extern class AttributesProxy implements org.xml.sax.AttributeList implements org.xml.sax.ext.Attributes2
{
	@:overload @:public public function new(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	/** Sets the XML attributes to be wrapped. */
	@:overload @:public public function setAttributes(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	@:overload @:public public function getAttributes() : com.sun.org.apache.xerces.internal.xni.XMLAttributes;
	
	/*
	* Attributes methods
	*/
	@:overload @:public public function getLength() : Int;
	
	@:overload @:public public function getQName(index : Int) : String;
	
	@:overload @:public public function getURI(index : Int) : String;
	
	@:overload @:public public function getLocalName(index : Int) : String;
	
	@:overload @:public public function getType(i : Int) : String;
	
	@:overload @:public public function getType(name : String) : String;
	
	@:overload @:public public function getType(uri : String, localName : String) : String;
	
	@:overload @:public public function getValue(i : Int) : String;
	
	@:overload @:public public function getValue(name : String) : String;
	
	@:overload @:public public function getValue(uri : String, localName : String) : String;
	
	@:overload @:public public function getIndex(qName : String) : Int;
	
	@:overload @:public public function getIndex(uri : String, localPart : String) : Int;
	
	/*
	* Attributes2 methods
	*/
	@:overload @:public public function isDeclared(index : Int) : Bool;
	
	@:overload @:public public function isDeclared(qName : String) : Bool;
	
	@:overload @:public public function isDeclared(uri : String, localName : String) : Bool;
	
	@:overload @:public public function isSpecified(index : Int) : Bool;
	
	@:overload @:public public function isSpecified(qName : String) : Bool;
	
	@:overload @:public public function isSpecified(uri : String, localName : String) : Bool;
	
	/*
	* AttributeList methods
	*/
	@:overload @:public public function getName(i : Int) : String;
	
	
}
