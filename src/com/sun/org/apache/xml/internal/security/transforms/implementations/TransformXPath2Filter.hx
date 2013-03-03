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
extern class TransformXPath2Filter extends com.sun.org.apache.xml.internal.security.transforms.TransformSpi
{
	/** Field implementedTransformURI */
	@:public @:static @:final public static var implementedTransformURI(default, null) : String;
	
	/**
	* Method engineGetURI
	*
	* @inheritDoc
	*/
	@:overload @:protected override private function engineGetURI() : String;
	
	/**
	* Method enginePerformTransform
	* @inheritDoc
	* @param input
	*
	* @throws TransformationException
	*/
	@:overload @:protected override private function enginePerformTransform(input : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput, _transformObject : com.sun.org.apache.xml.internal.security.transforms.Transform) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	
}
@:internal extern class XPath2NodeFilter implements com.sun.org.apache.xml.internal.security.signature.NodeFilter
{
	/**
	* @see com.sun.org.apache.xml.internal.security.signature.NodeFilter#isNodeInclude(org.w3c.dom.Node)
	*/
	@:overload @:public public function isNodeInclude(currentNode : org.w3c.dom.Node) : Int;
	
	@:overload @:public public function isNodeIncludeDO(n : org.w3c.dom.Node, level : Int) : Int;
	
	
}
