package com.sun.org.apache.xml.internal.security.utils;
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
extern class XMLUtils
{
	@:overload public static function getNextElement(el : org.w3c.dom.Node) : org.w3c.dom.Element;
	
	/**
	* @param rootNode
	* @param result
	* @param exclude
	* @param com wheather comments or not
	*/
	@:overload public static function getSet(rootNode : org.w3c.dom.Node, result : java.util.Set<Dynamic>, exclude : org.w3c.dom.Node, com : Bool) : Void;
	
	/**
	* Outputs a DOM tree to an {@link OutputStream}.
	*
	* @param contextNode root node of the DOM tree
	* @param os the {@link OutputStream}
	*/
	@:overload public static function outputDOM(contextNode : org.w3c.dom.Node, os : java.io.OutputStream) : Void;
	
	/**
	* Outputs a DOM tree to an {@link OutputStream}. <I>If an Exception is
	* thrown during execution, it's StackTrace is output to System.out, but the
	* Exception is not re-thrown.</I>
	*
	* @param contextNode root node of the DOM tree
	* @param os the {@link OutputStream}
	* @param addPreamble
	*/
	@:overload public static function outputDOM(contextNode : org.w3c.dom.Node, os : java.io.OutputStream, addPreamble : Bool) : Void;
	
	/**
	* Serializes the <CODE>contextNode</CODE> into the OutputStream, <I>but
	* supresses all Exceptions</I>.
	* <BR />
	* NOTE: <I>This should only be used for debugging purposes,
	* NOT in a production environment; this method ignores all exceptions,
	* so you won't notice if something goes wrong. If you're asking what is to
	* be used in a production environment, simply use the code inside the
	* <code>try{}</code> statement, but handle the Exceptions appropriately.</I>
	*
	* @param contextNode
	* @param os
	*/
	@:overload public static function outputDOMc14nWithComments(contextNode : org.w3c.dom.Node, os : java.io.OutputStream) : Void;
	
	/**
	* Method getFullTextChildrenFromElement
	*
	* @param element
	* @return the string of chi;ds
	*/
	@:overload public static function getFullTextChildrenFromElement(element : org.w3c.dom.Element) : String;
	
	/**
	* Creates an Element in the XML Signature specification namespace.
	*
	* @param doc the factory Document
	* @param elementName the local name of the Element
	* @return the Element
	*/
	@:overload public static function createElementInSignatureSpace(doc : org.w3c.dom.Document, elementName : String) : org.w3c.dom.Element;
	
	/**
	* Returns true if the element is in XML Signature namespace and the local
	* name equals the supplied one.
	*
	* @param element
	* @param localName
	* @return true if the element is in XML Signature namespace and the local name equals the supplied one
	*/
	@:overload public static function elementIsInSignatureSpace(element : org.w3c.dom.Element, localName : String) : Bool;
	
	/**
	* Returns true if the element is in XML Encryption namespace and the local
	* name equals the supplied one.
	*
	* @param element
	* @param localName
	* @return true if the element is in XML Encryption namespace and the local name equals the supplied one
	*/
	@:overload public static function elementIsInEncryptionSpace(element : org.w3c.dom.Element, localName : String) : Bool;
	
	/**
	* This method returns the owner document of a particular node.
	* This method is necessary because it <I>always</I> returns a
	* {@link Document}. {@link Node#getOwnerDocument} returns <CODE>null</CODE>
	* if the {@link Node} is a {@link Document}.
	*
	* @param node
	* @return the owner document of the node
	*/
	@:overload public static function getOwnerDocument(node : org.w3c.dom.Node) : org.w3c.dom.Document;
	
	/**
	* This method returns the first non-null owner document of the Node's in this Set.
	* This method is necessary because it <I>always</I> returns a
	* {@link Document}. {@link Node#getOwnerDocument} returns <CODE>null</CODE>
	* if the {@link Node} is a {@link Document}.
	*
	* @param xpathNodeSet
	* @return the owner document
	*/
	@:overload public static function getOwnerDocument(xpathNodeSet : java.util.Set<Dynamic>) : org.w3c.dom.Document;
	
	/**
	* Method createDSctx
	*
	* @param doc
	* @param prefix
	* @param namespace
	* @return the element.
	*/
	@:overload public static function createDSctx(doc : org.w3c.dom.Document, prefix : String, namespace : String) : org.w3c.dom.Element;
	
	/**
	* Method addReturnToElement
	*
	* @param e
	*/
	@:overload public static function addReturnToElement(e : org.w3c.dom.Element) : Void;
	
	@:overload public static function addReturnToElement(doc : org.w3c.dom.Document, nl : com.sun.org.apache.xml.internal.security.utils.HelperNodeList) : Void;
	
	@:overload public static function addReturnBeforeChild(e : org.w3c.dom.Element, child : org.w3c.dom.Node) : Void;
	
	/**
	* Method convertNodelistToSet
	*
	* @param xpathNodeSet
	* @return the set with the nodelist
	*/
	@:overload public static function convertNodelistToSet(xpathNodeSet : org.w3c.dom.NodeList) : java.util.Set<Dynamic>;
	
	/**
	* This method spreads all namespace attributes in a DOM document to their
	* children. This is needed because the XML Signature XPath transform
	* must evaluate the XPath against all nodes in the input, even against
	* XPath namespace nodes. Through a bug in XalanJ2, the namespace nodes are
	* not fully visible in the Xalan XPath model, so we have to do this by
	* hand in DOM spaces so that the nodes become visible in XPath space.
	*
	* @param doc
	* @see <A HREF="http://nagoya.apache.org/bugzilla/show_bug.cgi?id=2650">Namespace axis resolution is not XPath compliant </A>
	*/
	@:overload public static function circumventBug2650(doc : org.w3c.dom.Document) : Void;
	
	/**
	* @param sibling
	* @param nodeName
	* @param number
	* @return nodes with the constrain
	*/
	@:overload public static function selectDsNode(sibling : org.w3c.dom.Node, nodeName : String, number : Int) : org.w3c.dom.Element;
	
	/**
	* @param sibling
	* @param nodeName
	* @param number
	* @return nodes with the constrain
	*/
	@:overload public static function selectXencNode(sibling : org.w3c.dom.Node, nodeName : String, number : Int) : org.w3c.dom.Element;
	
	/**
	* @param sibling
	* @param nodeName
	* @param number
	* @return nodes with the constrain
	*/
	@:overload public static function selectDsNodeText(sibling : org.w3c.dom.Node, nodeName : String, number : Int) : org.w3c.dom.Text;
	
	/**
	* @param sibling
	* @param uri
	* @param nodeName
	* @param number
	* @return nodes with the constrain
	*/
	@:overload public static function selectNodeText(sibling : org.w3c.dom.Node, uri : String, nodeName : String, number : Int) : org.w3c.dom.Text;
	
	/**
	* @param sibling
	* @param uri
	* @param nodeName
	* @param number
	* @return nodes with the constrain
	*/
	@:overload public static function selectNode(sibling : org.w3c.dom.Node, uri : String, nodeName : String, number : Int) : org.w3c.dom.Element;
	
	/**
	* @param sibling
	* @param nodeName
	* @return nodes with the constrain
	*/
	@:overload public static function selectDsNodes(sibling : org.w3c.dom.Node, nodeName : String) : java.NativeArray<org.w3c.dom.Element>;
	
	/**
	* @param sibling
	* @param uri
	* @param nodeName
	* @return nodes with the constrain
	*/
	@:overload public static function selectNodes(sibling : org.w3c.dom.Node, uri : String, nodeName : String) : java.NativeArray<org.w3c.dom.Element>;
	
	/**
	* @param signatureElement
	* @param inputSet
	* @return nodes with the constrain
	*/
	@:overload public static function excludeNodeFromSet(signatureElement : org.w3c.dom.Node, inputSet : java.util.Set<Dynamic>) : java.util.Set<Dynamic>;
	
	/**
	* Returns true if the descendantOrSelf is on the descendant-or-self axis
	* of the context node.
	*
	* @param ctx
	* @param descendantOrSelf
	* @return true if the node is descendant
	*/
	@:overload public static function isDescendantOrSelf(ctx : org.w3c.dom.Node, descendantOrSelf : org.w3c.dom.Node) : Bool;
	
	@:overload public static function ignoreLineBreaks() : Bool;
	
	
}
