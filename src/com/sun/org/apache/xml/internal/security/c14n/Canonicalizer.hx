package com.sun.org.apache.xml.internal.security.c14n;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2008 The Apache Software Foundation.
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
extern class Canonicalizer
{
	/** The output encoding of canonicalized data */
	@:public @:static @:final public static var ENCODING(default, null) : String;
	
	/**
	* XPath Expresion for selecting every node and continuous comments joined
	* in only one node
	*/
	@:public @:static @:final public static var XPATH_C14N_WITH_COMMENTS_SINGLE_NODE(default, null) : String;
	
	/**
	* The URL defined in XML-SEC Rec for inclusive c14n <b>without</b> comments.
	*/
	@:public @:static @:final public static var ALGO_ID_C14N_OMIT_COMMENTS(default, null) : String;
	
	/**
	* The URL defined in XML-SEC Rec for inclusive c14n <b>with</b> comments.
	*/
	@:public @:static @:final public static var ALGO_ID_C14N_WITH_COMMENTS(default, null) : String;
	
	/**
	* The URL defined in XML-SEC Rec for exclusive c14n <b>without</b> comments.
	*/
	@:public @:static @:final public static var ALGO_ID_C14N_EXCL_OMIT_COMMENTS(default, null) : String;
	
	/**
	* The URL defined in XML-SEC Rec for exclusive c14n <b>with</b> comments.
	*/
	@:public @:static @:final public static var ALGO_ID_C14N_EXCL_WITH_COMMENTS(default, null) : String;
	
	/**
	* The URI for inclusive c14n 1.1 <b>without</b> comments.
	*/
	@:public @:static @:final public static var ALGO_ID_C14N11_OMIT_COMMENTS(default, null) : String;
	
	/**
	* The URI for inclusive c14n 1.1 <b>with</b> comments.
	*/
	@:public @:static @:final public static var ALGO_ID_C14N11_WITH_COMMENTS(default, null) : String;
	
	@:protected private var canonicalizerSpi : com.sun.org.apache.xml.internal.security.c14n.CanonicalizerSpi;
	
	/**
	* Method init
	*
	*/
	@:overload @:public @:static public static function init() : Void;
	
	/**
	* Method getInstance
	*
	* @param algorithmURI
	* @return a Conicicalizer instance ready for the job
	* @throws InvalidCanonicalizerException
	*/
	@:overload @:public @:static @:final public static function getInstance(algorithmURI : String) : com.sun.org.apache.xml.internal.security.c14n.Canonicalizer;
	
	/**
	* Method register
	*
	* @param algorithmURI
	* @param implementingClass
	* @throws AlgorithmAlreadyRegisteredException
	*/
	@:overload @:public @:static public static function register(algorithmURI : String, implementingClass : String) : Void;
	
	/**
	* Method getURI
	*
	* @return the URI defined for this c14n instance.
	*/
	@:overload @:public @:final public function getURI() : String;
	
	/**
	* Method getIncludeComments
	*
	* @return true if the c14n respect the comments.
	*/
	@:overload @:public public function getIncludeComments() : Bool;
	
	/**
	* This method tries to canonicalize the given bytes. It's possible to even
	* canonicalize non-wellformed sequences if they are well-formed after being
	* wrapped with a <CODE>&gt;a&lt;...&gt;/a&lt;</CODE>.
	*
	* @param inputBytes
	* @return the result of the conicalization.
	* @throws CanonicalizationException
	* @throws java.io.IOException
	* @throws javax.xml.parsers.ParserConfigurationException
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public public function canonicalize(inputBytes : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Canonicalizes the subtree rooted by <CODE>node</CODE>.
	*
	* @param node The node to canicalize
	* @return the result of the c14n.
	*
	* @throws CanonicalizationException
	*/
	@:overload @:public public function canonicalizeSubtree(node : org.w3c.dom.Node) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Canonicalizes the subtree rooted by <CODE>node</CODE>.
	*
	* @param node
	* @param inclusiveNamespaces
	* @return the result of the c14n.
	* @throws CanonicalizationException
	*/
	@:overload @:public public function canonicalizeSubtree(node : org.w3c.dom.Node, inclusiveNamespaces : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Canonicalizes an XPath node set. The <CODE>xpathNodeSet</CODE> is treated
	* as a list of XPath nodes, not as a list of subtrees.
	*
	* @param xpathNodeSet
	* @return the result of the c14n.
	* @throws CanonicalizationException
	*/
	@:overload @:public public function canonicalizeXPathNodeSet(xpathNodeSet : org.w3c.dom.NodeList) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Canonicalizes an XPath node set. The <CODE>xpathNodeSet</CODE> is treated
	* as a list of XPath nodes, not as a list of subtrees.
	*
	* @param xpathNodeSet
	* @param inclusiveNamespaces
	* @return the result of the c14n.
	* @throws CanonicalizationException
	*/
	@:overload @:public public function canonicalizeXPathNodeSet(xpathNodeSet : org.w3c.dom.NodeList, inclusiveNamespaces : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Canonicalizes an XPath node set.
	*
	* @param xpathNodeSet
	* @return the result of the c14n.
	* @throws CanonicalizationException
	*/
	@:overload @:public public function canonicalizeXPathNodeSet(xpathNodeSet : java.util.Set<Dynamic>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Canonicalizes an XPath node set.
	*
	* @param xpathNodeSet
	* @param inclusiveNamespaces
	* @return the result of the c14n.
	* @throws CanonicalizationException
	*/
	@:overload @:public public function canonicalizeXPathNodeSet(xpathNodeSet : java.util.Set<Dynamic>, inclusiveNamespaces : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Sets the writer where the canonicalization ends.  ByteArrayOutputStream
	* if none is set.
	* @param os
	*/
	@:overload @:public public function setWriter(os : java.io.OutputStream) : Void;
	
	/**
	* Returns the name of the implementing {@link CanonicalizerSpi} class
	*
	* @return the name of the implementing {@link CanonicalizerSpi} class
	*/
	@:overload @:public public function getImplementingCanonicalizerClass() : String;
	
	/**
	* Set the canonicalizer behaviour to not reset.
	*/
	@:overload @:public public function notReset() : Void;
	
	
}
