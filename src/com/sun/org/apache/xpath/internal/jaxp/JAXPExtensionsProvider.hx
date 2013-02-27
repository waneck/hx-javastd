package com.sun.org.apache.xpath.internal.jaxp;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
//// $Id: JAXPExtensionsProvider.java,v 1.1.2.1 2005/08/01 01:30:17 jeffsuttor Exp $
extern class JAXPExtensionsProvider implements com.sun.org.apache.xpath.internal.ExtensionsProvider
{
	@:overload public function new(resolver : javax.xml.xpath.XPathFunctionResolver) : Void;
	
	@:overload public function new(resolver : javax.xml.xpath.XPathFunctionResolver, featureSecureProcessing : Bool) : Void;
	
	/**
	* Is the extension function available?
	*/
	@:overload public function functionAvailable(ns : String, funcName : String) : Bool;
	
	/**
	* Is the extension element available?
	*/
	@:overload public function elementAvailable(ns : String, elemName : String) : Bool;
	
	/**
	* Execute the extension function.
	*/
	@:overload public function extFunction(ns : String, funcName : String, argVec : java.util.Vector<Dynamic>, methodKey : Dynamic) : Dynamic;
	
	/**
	* Execute the extension function.
	*/
	@:overload public function extFunction(extFunction : com.sun.org.apache.xpath.internal.functions.FuncExtFunction, argVec : java.util.Vector<Dynamic>) : Dynamic;
	
	
}
