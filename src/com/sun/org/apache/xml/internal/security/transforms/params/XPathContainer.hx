package com.sun.org.apache.xml.internal.security.transforms.params;
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
extern class XPathContainer extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy implements com.sun.org.apache.xml.internal.security.transforms.TransformParam
{
	/**
	* Constructor XPathContainer
	*
	* @param doc
	*/
	@:overload public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Sets the TEXT value of the <CODE>ds:XPath</CODE> Element.
	*
	* @param xpath
	*/
	@:overload public function setXPath(xpath : String) : Void;
	
	/**
	* Returns the TEXT value of the <CODE>ds:XPath</CODE> Element.
	*
	* @return the TEXT value of the <CODE>ds:XPath</CODE> Element.
	*/
	@:overload public function getXPath() : String;
	
	/** @inheritDoc */
	@:overload public function getBaseLocalName() : String;
	
	
}
