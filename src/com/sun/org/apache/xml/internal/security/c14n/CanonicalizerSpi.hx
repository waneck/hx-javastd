package com.sun.org.apache.xml.internal.security.c14n;
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
extern class CanonicalizerSpi
{
	/**
	* Method canonicalize
	*
	*
	* @param inputBytes
	* @return the c14n bytes.
	*
	*
	* @throws CanonicalizationException
	* @throws java.io.IOException
	* @throws javax.xml.parsers.ParserConfigurationException
	* @throws org.xml.sax.SAXException
	*
	*/
	@:overload @:public public function engineCanonicalize(inputBytes : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method engineCanonicalizeXPathNodeSet
	*
	* @param xpathNodeSet
	* @return the c14n bytes
	* @throws CanonicalizationException
	*/
	@:overload @:public public function engineCanonicalizeXPathNodeSet(xpathNodeSet : org.w3c.dom.NodeList) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method engineCanonicalizeXPathNodeSet
	*
	* @param xpathNodeSet
	* @param inclusiveNamespaces
	* @return the c14n bytes
	* @throws CanonicalizationException
	*/
	@:overload @:public public function engineCanonicalizeXPathNodeSet(xpathNodeSet : org.w3c.dom.NodeList, inclusiveNamespaces : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/** Returns the URI of this engine.
	* @return the URI
	*/
	@:overload @:public @:abstract public function engineGetURI() : String;
	
	/** Returns the URI if include comments
	* @return true if include.
	*/
	@:overload @:public @:abstract public function engineGetIncludeComments() : Bool;
	
	/**
	* C14n a nodeset
	*
	* @param xpathNodeSet
	* @return the c14n bytes
	* @throws CanonicalizationException
	*/
	@:overload @:public @:abstract public function engineCanonicalizeXPathNodeSet(xpathNodeSet : java.util.Set<Dynamic>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* C14n a nodeset
	*
	* @param xpathNodeSet
	* @param inclusiveNamespaces
	* @return the c14n bytes
	* @throws CanonicalizationException
	*/
	@:overload @:public @:abstract public function engineCanonicalizeXPathNodeSet(xpathNodeSet : java.util.Set<Dynamic>, inclusiveNamespaces : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* C14n a node tree.
	*
	* @param rootNode
	* @return the c14n bytes
	* @throws CanonicalizationException
	*/
	@:overload @:public @:abstract public function engineCanonicalizeSubTree(rootNode : org.w3c.dom.Node) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* C14n a node tree.
	*
	* @param rootNode
	* @param inclusiveNamespaces
	* @return the c14n bytes
	* @throws CanonicalizationException
	*/
	@:overload @:public @:abstract public function engineCanonicalizeSubTree(rootNode : org.w3c.dom.Node, inclusiveNamespaces : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Sets the writter where the cannocalization ends. ByteArrayOutputStream if
	* none is setted.
	* @param os
	*/
	@:overload @:public @:abstract public function setWriter(os : java.io.OutputStream) : Void;
	
	/** Reset the writter after a c14n */
	@:protected private var reset : Bool;
	
	
}
