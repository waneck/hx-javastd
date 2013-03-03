package com.sun.org.apache.xml.internal.security.c14n.implementations;
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
extern class CanonicalizerBase extends com.sun.org.apache.xml.internal.security.c14n.CanonicalizerSpi
{
	@:protected @:static @:final private static var nullNode(default, null) : org.w3c.dom.Attr;
	
	/**
	* Constructor CanonicalizerBase
	*
	* @param includeComments
	*/
	@:overload @:public public function new(includeComments : Bool) : Void;
	
	/**
	* Method engineCanonicalizeSubTree
	* @inheritDoc
	* @param rootNode
	* @throws CanonicalizationException
	*/
	@:overload @:public override public function engineCanonicalizeSubTree(rootNode : org.w3c.dom.Node) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method engineCanonicalizeXPathNodeSet
	* @inheritDoc
	* @param xpathNodeSet
	* @throws CanonicalizationException
	*/
	@:overload @:public override public function engineCanonicalizeXPathNodeSet(xpathNodeSet : java.util.Set<Dynamic>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Canonicalizes a Subtree node.
	* @param input the root of the subtree to canicalize
	* @return The canonicalize stream.
	* @throws CanonicalizationException
	*/
	@:overload @:public public function engineCanonicalize(input : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* @param _writer The _writer to set.
	*/
	@:overload @:public override public function setWriter(_writer : java.io.OutputStream) : Void;
	
	
}
