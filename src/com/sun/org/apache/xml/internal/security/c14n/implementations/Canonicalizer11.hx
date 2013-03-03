package com.sun.org.apache.xml.internal.security.c14n.implementations;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2008 The Apache Software Foundation.
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
extern class Canonicalizer11 extends com.sun.org.apache.xml.internal.security.c14n.implementations.CanonicalizerBase
{
	/**
	* Constructor Canonicalizer11
	*
	* @param includeComments
	*/
	@:overload @:public public function new(includeComments : Bool) : Void;
	
	/**
	* Always throws a CanonicalizationException because this is inclusive c14n.
	*
	* @param xpathNodeSet
	* @param inclusiveNamespaces
	* @return none it always fails
	* @throws CanonicalizationException always
	*/
	@:overload @:public override public function engineCanonicalizeXPathNodeSet(xpathNodeSet : java.util.Set<Dynamic>, inclusiveNamespaces : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Always throws a CanonicalizationException because this is inclusive c14n.
	*
	* @param rootNode
	* @param inclusiveNamespaces
	* @return none it always fails
	* @throws CanonicalizationException
	*/
	@:overload @:public override public function engineCanonicalizeSubTree(rootNode : org.w3c.dom.Node, inclusiveNamespaces : String) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$c14n$implementations$Canonicalizer11$XmlAttrStack') @:internal extern class Canonicalizer11_XmlAttrStack
{
	
}
@:native('com$sun$org$apache$xml$internal$security$c14n$implementations$Canonicalizer11$XmlAttrStack$XmlsStackElement') @:internal extern class Canonicalizer11_XmlAttrStack_XmlsStackElement
{
	
}
