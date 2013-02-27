package com.sun.org.apache.xerces.internal.xinclude;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2005 The Apache Software Foundation.
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
extern class XInclude11TextReader extends com.sun.org.apache.xerces.internal.xinclude.XIncludeTextReader
{
	/**
	* Construct the XIncludeReader using the XMLInputSource and XIncludeHandler.
	*
	* @param source The XMLInputSource to use.
	* @param handler The XIncludeHandler to use.
	* @param bufferSize The size of this text reader's buffer.
	*/
	@:overload public function new(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource, handler : com.sun.org.apache.xerces.internal.xinclude.XIncludeHandler, bufferSize : Int) : Void;
	
	/**
	* Returns true if the specified character is a valid XML character
	* as per the rules of XML 1.1.
	*
	* @param ch The character to check.
	*/
	@:overload override private function isValid(ch : Int) : Bool;
	
	
}
