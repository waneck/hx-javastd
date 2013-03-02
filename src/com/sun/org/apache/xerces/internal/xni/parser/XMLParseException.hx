package com.sun.org.apache.xerces.internal.xni.parser;
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
extern class XMLParseException extends com.sun.org.apache.xerces.internal.xni.XNIException
{
	/** Public identifier. */
	private var fPublicId : String;
	
	/** literal System identifier. */
	private var fLiteralSystemId : String;
	
	/** expanded System identifier. */
	private var fExpandedSystemId : String;
	
	/** Base system identifier. */
	private var fBaseSystemId : String;
	
	/** Line number. */
	private var fLineNumber : Int;
	
	/** Column number. */
	private var fColumnNumber : Int;
	
	/** Character offset. */
	private var fCharacterOffset : Int;
	
	/** Constructs a parse exception. */
	@:overload public function new(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, message : String) : Void;
	
	/** Constructs a parse exception. */
	@:overload public function new(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, message : String, exception : java.lang.Exception) : Void;
	
	/** Returns the public identifier. */
	@:overload public function getPublicId() : String;
	
	/** Returns the expanded system identifier. */
	@:overload public function getExpandedSystemId() : String;
	
	/** Returns the literal system identifier. */
	@:overload public function getLiteralSystemId() : String;
	
	/** Returns the base system identifier. */
	@:overload public function getBaseSystemId() : String;
	
	/** Returns the line number. */
	@:overload public function getLineNumber() : Int;
	
	/** Returns the row number. */
	@:overload public function getColumnNumber() : Int;
	
	/** Returns the character offset. */
	@:overload public function getCharacterOffset() : Int;
	
	/** Returns a string representation of this object. */
	@:overload public function toString() : String;
	
	
}
