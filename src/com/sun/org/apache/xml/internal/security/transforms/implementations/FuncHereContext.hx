package com.sun.org.apache.xml.internal.security.transforms.implementations;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern class FuncHereContext extends com.sun.org.apache.xpath.internal.XPathContext
{
	/**
	* Constructor FuncHereContext
	*
	* @param owner
	*/
	@:overload @:public public function new(owner : org.w3c.dom.Node) : Void;
	
	/**
	* Constructor FuncHereContext
	*
	* @param owner
	* @param xpathContext
	*/
	@:overload @:public public function new(owner : org.w3c.dom.Node, xpathContext : com.sun.org.apache.xpath.internal.XPathContext) : Void;
	
	/**
	* Constructor FuncHereContext
	*
	* @param owner
	* @param previouslyUsed
	*/
	@:overload @:public public function new(owner : org.w3c.dom.Node, previouslyUsed : com.sun.org.apache.xpath.internal.CachedXPathAPI) : Void;
	
	/**
	* Constructor FuncHereContext
	*
	* @param owner
	* @param dtmManager
	*/
	@:overload @:public public function new(owner : org.w3c.dom.Node, dtmManager : com.sun.org.apache.xml.internal.dtm.DTMManager) : Void;
	
	
}
