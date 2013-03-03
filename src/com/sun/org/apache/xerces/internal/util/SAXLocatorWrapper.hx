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
extern class SAXLocatorWrapper implements com.sun.org.apache.xerces.internal.xni.XMLLocator
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function setLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public public function getLocator() : org.xml.sax.Locator;
	
	/*
	* XMLLocator methods
	*/
	@:overload @:public public function getPublicId() : String;
	
	@:overload @:public public function getLiteralSystemId() : String;
	
	@:overload @:public public function getBaseSystemId() : String;
	
	@:overload @:public public function getExpandedSystemId() : String;
	
	@:overload @:public public function getLineNumber() : Int;
	
	@:overload @:public public function getColumnNumber() : Int;
	
	@:overload @:public public function getCharacterOffset() : Int;
	
	@:overload @:public public function getEncoding() : String;
	
	@:overload @:public public function getXMLVersion() : String;
	
	
}
