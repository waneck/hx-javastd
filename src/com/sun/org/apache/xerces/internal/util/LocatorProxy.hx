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
extern class LocatorProxy implements org.xml.sax.ext.Locator2
{
	/** Constructs an XML locator proxy. */
	@:overload @:public public function new(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator) : Void;
	
	/** Public identifier. */
	@:overload @:public public function getPublicId() : String;
	
	/** System identifier. */
	@:overload @:public public function getSystemId() : String;
	
	/** Line number. */
	@:overload @:public public function getLineNumber() : Int;
	
	/** Column number. */
	@:overload @:public public function getColumnNumber() : Int;
	
	@:overload @:public public function getXMLVersion() : String;
	
	@:overload @:public public function getEncoding() : String;
	
	
}
