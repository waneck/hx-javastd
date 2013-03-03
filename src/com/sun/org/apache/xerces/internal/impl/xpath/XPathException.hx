package com.sun.org.apache.xerces.internal.impl.xpath;
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
/**
* XPath exception.
*
* @xerces.internal
*
* @author Andy Clark, IBM
*
*/
extern class XPathException extends java.lang.Exception
{
	/** Constructs an exception. */
	@:overload @:public public function new() : Void;
	
	/** Constructs an exception with the specified key. */
	@:overload @:public public function new(key : String) : Void;
	
	@:overload @:public public function getKey() : String;
	
	
}
