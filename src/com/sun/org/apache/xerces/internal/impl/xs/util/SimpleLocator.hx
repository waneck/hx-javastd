package com.sun.org.apache.xerces.internal.impl.xs.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002, 2003,2004 The Apache Software Foundation.
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
extern class SimpleLocator implements com.sun.org.apache.xerces.internal.xni.XMLLocator
{
	@:overload public function new() : Void;
	
	@:overload public function new(lsid : String, esid : String, line : Int, column : Int) : Void;
	
	@:overload public function setValues(lsid : String, esid : String, line : Int, column : Int) : Void;
	
	@:overload public function new(lsid : String, esid : String, line : Int, column : Int, offset : Int) : Void;
	
	@:overload public function setValues(lsid : String, esid : String, line : Int, column : Int, offset : Int) : Void;
	
	@:overload public function getLineNumber() : Int;
	
	@:overload public function getColumnNumber() : Int;
	
	@:overload public function getCharacterOffset() : Int;
	
	@:overload public function getPublicId() : String;
	
	@:overload public function getExpandedSystemId() : String;
	
	@:overload public function getLiteralSystemId() : String;
	
	@:overload public function getBaseSystemId() : String;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLLocator#setColumnNumber(int)
	*/
	@:overload public function setColumnNumber(col : Int) : Void;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLLocator#setLineNumber(int)
	*/
	@:overload public function setLineNumber(line : Int) : Void;
	
	@:overload public function setCharacterOffset(offset : Int) : Void;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier#setBaseSystemId(String)
	*/
	@:overload public function setBaseSystemId(systemId : String) : Void;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier#setExpandedSystemId(String)
	*/
	@:overload public function setExpandedSystemId(systemId : String) : Void;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier#setLiteralSystemId(String)
	*/
	@:overload public function setLiteralSystemId(systemId : String) : Void;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier#setPublicId(String)
	*/
	@:overload public function setPublicId(publicId : String) : Void;
	
	/** Returns the encoding of the current entity.
	* Since these locators are used in the construction of
	* XMLParseExceptions, which know nothing about encodings, there is
	* no point in having this object deal intelligently
	* with encoding information.
	*/
	@:overload public function getEncoding() : String;
	
	@:overload public function getXMLVersion() : String;
	
	
}
