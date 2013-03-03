package com.sun.org.apache.xml.internal.security.c14n.implementations;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License"); you may not
* use this file except in compliance with the License. You may obtain a copy of
* the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations under
* the License.
*
*/
extern class Canonicalizer20010315Excl extends com.sun.org.apache.xml.internal.security.c14n.implementations.CanonicalizerBase
{
	/**
	* Constructor Canonicalizer20010315Excl
	*
	* @param includeComments
	*/
	@:overload @:public public function new(includeComments : Bool) : Void;
	
	/**
	* Method engineCanonicalizeSubTree
	* @inheritDoc
	* @param rootNode
	*
	* @throws CanonicalizationException
	*/
	@:overload @:public override public function engineCanonicalizeSubTree(rootNode : org.w3c.dom.Node) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method engineCanonicalizeSubTree
	*  @inheritDoc
	* @param rootNode
	* @param inclusiveNamespaces
	*
	* @throws CanonicalizationException
	*/
	@:overload @:public override public function engineCanonicalizeSubTree(rootNode : org.w3c.dom.Node, inclusiveNamespaces : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method engineCanonicalizeSubTree
	* @param rootNode
	* @param inclusiveNamespaces
	* @param excl A element to exclude from the c14n process.
	* @return the rootNode c14n.
	* @throws CanonicalizationException
	*/
	@:overload @:public public function engineCanonicalizeSubTree(rootNode : org.w3c.dom.Node, inclusiveNamespaces : String, excl : org.w3c.dom.Node) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	*
	* @param rootNode
	* @param inclusiveNamespaces
	* @return the rootNode c14n.
	* @throws CanonicalizationException
	*/
	@:overload @:public public function engineCanonicalize(rootNode : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput, inclusiveNamespaces : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method engineCanonicalizeXPathNodeSet
	* @inheritDoc
	* @param xpathNodeSet
	* @param inclusiveNamespaces
	* @throws CanonicalizationException
	*/
	@:overload @:public override public function engineCanonicalizeXPathNodeSet(xpathNodeSet : java.util.Set<Dynamic>, inclusiveNamespaces : String) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
