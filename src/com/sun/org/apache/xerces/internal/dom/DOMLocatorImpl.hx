package com.sun.org.apache.xerces.internal.dom;
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
extern class DOMLocatorImpl implements org.w3c.dom.DOMLocator
{
	/**
	* The column number where the error occured,
	* or -1 if there is no column number available.
	*/
	@:public public var fColumnNumber : Int;
	
	/**
	* The line number where the error occured,
	* or -1 if there is no line number available.
	*/
	@:public public var fLineNumber : Int;
	
	/** related data node*/
	@:public public var fRelatedNode : org.w3c.dom.Node;
	
	/**
	* The URI where the error occured,
	* or null if there is no URI available.
	*/
	@:public public var fUri : String;
	
	/**
	* The byte offset into the input source this locator is pointing to or -1
	* if there is no byte offset available
	*/
	@:public public var fByteOffset : Int;
	
	/**
	* The UTF-16, as defined in [Unicode] and Amendment 1 of [ISO/IEC 10646],
	* offset into the input source this locator is pointing to or -1 if there
	* is no UTF-16 offset available.
	*/
	@:public public var fUtf16Offset : Int;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(lineNumber : Int, columnNumber : Int, uri : String) : Void;
	
	@:overload @:public public function new(lineNumber : Int, columnNumber : Int, utf16Offset : Int, uri : String) : Void;
	
	@:overload @:public public function new(lineNumber : Int, columnNumber : Int, byteoffset : Int, relatedData : org.w3c.dom.Node, uri : String) : Void;
	
	@:overload @:public public function new(lineNumber : Int, columnNumber : Int, byteoffset : Int, relatedData : org.w3c.dom.Node, uri : String, utf16Offset : Int) : Void;
	
	/**
	* The line number where the error occured, or -1 if there is no line
	* number available.
	*/
	@:overload @:public public function getLineNumber() : Int;
	
	/**
	* The column number where the error occured, or -1 if there is no column
	* number available.
	*/
	@:overload @:public public function getColumnNumber() : Int;
	
	/**
	* The URI where the error occured, or null if there is no URI available.
	*/
	@:overload @:public public function getUri() : String;
	
	@:overload @:public public function getRelatedNode() : org.w3c.dom.Node;
	
	/**
	* The byte offset into the input source this locator is pointing to or -1
	* if there is no byte offset available
	*/
	@:overload @:public public function getByteOffset() : Int;
	
	/**
	* The UTF-16, as defined in [Unicode] and Amendment 1 of [ISO/IEC 10646],
	* offset into the input source this locator is pointing to or -1 if there
	* is no UTF-16 offset available.
	*/
	@:overload @:public public function getUtf16Offset() : Int;
	
	
}
