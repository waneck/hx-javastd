package com.sun.org.apache.xml.internal.utils;
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
/*
* $Id: DOM2Helper.java,v 1.2.4.1 2005/09/15 08:15:37 suresh_emailid Exp $
*/
extern class DOM2Helper extends com.sun.org.apache.xml.internal.utils.DOMHelper
{
	/**
	* Construct an instance.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Check node to see if it was created by a DOM implementation
	* that this helper is intended to support. This is currently
	* disabled, and assumes all nodes are acceptable rather than checking
	* that they implement com.sun.org.apache.xerces.internal.dom.NodeImpl.
	*
	* @param node The node to be tested.
	*
	* @throws TransformerException if the node is not one which this
	* DOM2Helper can support. If we return without throwing the exception,
	* the node is compatable.
	* @xsl.usage internal
	*/
	@:overload @:public public function checkNode(node : org.w3c.dom.Node) : Void;
	
	/**
	* Returns true if the DOM implementation handled by this helper
	* supports the SAX ContentHandler interface.
	*
	* @return true (since Xerces does).
	*/
	@:overload @:public public function supportsSAX() : Bool;
	
	/**
	* Specify which document this helper is currently operating on.
	*
	* @param doc The DOM Document node for this document.
	* @see #getDocument
	*/
	@:overload @:public public function setDocument(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Query which document this helper is currently operating on.
	*
	* @return The DOM Document node for this document.
	* @see #setDocument
	*/
	@:overload @:public public function getDocument() : org.w3c.dom.Document;
	
	/**
	* Parse an XML document.
	*
	* <p>Right now the Xerces DOMParser class is used.  This needs
	* fixing, either via jaxp, or via some other, standard method.</p>
	*
	* <p>The application can use this method to instruct the SAX parser
	* to begin parsing an XML document from any valid input
	* source (a character stream, a byte stream, or a URI).</p>
	*
	* <p>Applications may not invoke this method while a parse is in
	* progress (they should create a new Parser instead for each
	* additional XML document).  Once a parse is complete, an
	* application may reuse the same Parser object, possibly with a
	* different input source.</p>
	*
	* @param source The input source for the top-level of the
	*        XML document.
	*
	* @throws TransformerException if any checked exception is thrown.
	* @xsl.usage internal
	*/
	@:overload @:public public function parse(source : org.xml.sax.InputSource) : Void;
	
	/**
	* Given an XML ID, return the element. This requires assistance from the
	* DOM and parser, and is meaningful only in the context of a DTD
	* or schema which declares attributes as being of type ID. This
	* information may or may not be available in all parsers, may or
	* may not be available for specific documents, and may or may not
	* be available when validation is not turned on.
	*
	* @param id The ID to search for, as a String.
	* @param doc The document to search within, as a DOM Document node.
	* @return DOM Element node with an attribute of type ID whose value
	* uniquely matches the requested id string, or null if there isn't
	* such an element or if the DOM can't answer the question for other
	* reasons.
	*/
	@:overload @:public override public function getElementByID(id : String, doc : org.w3c.dom.Document) : org.w3c.dom.Element;
	
	/**
	* Figure out whether node2 should be considered as being later
	* in the document than node1, in Document Order as defined
	* by the XPath model. This may not agree with the ordering defined
	* by other XML applications.
	* <p>
	* There are some cases where ordering isn't defined, and neither are
	* the results of this function -- though we'll generally return true.
	* <p>
	* TODO: Make sure this does the right thing with attribute nodes!!!
	*
	* @param node1 DOM Node to perform position comparison on.
	* @param node2 DOM Node to perform position comparison on .
	*
	* @return false if node2 comes before node1, otherwise return true.
	* You can think of this as
	* <code>(node1.documentOrderPosition &lt;= node2.documentOrderPosition)</code>.
	*/
	@:overload @:public @:static public static function isNodeAfter(node1 : org.w3c.dom.Node, node2 : org.w3c.dom.Node) : Bool;
	
	/**
	* Get the XPath-model parent of a node.  This version takes advantage
	* of the DOM Level 2 Attr.ownerElement() method; the base version we
	* would otherwise inherit is prepared to fall back on exhaustively
	* walking the document to find an Attr's parent.
	*
	* @param node Node to be examined
	*
	* @return the DOM parent of the input node, if there is one, or the
	* ownerElement if the input node is an Attr, or null if the node is
	* a Document, a DocumentFragment, or an orphan.
	*/
	@:overload @:public @:static public static function getParentOfNode(node : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Returns the local name of the given node, as defined by the
	* XML Namespaces specification. This is prepared to handle documents
	* built using DOM Level 1 methods by falling back upon explicitly
	* parsing the node name.
	*
	* @param n Node to be examined
	*
	* @return String containing the local name, or null if the node
	* was not assigned a Namespace.
	*/
	@:overload @:public override public function getLocalNameOfNode(n : org.w3c.dom.Node) : String;
	
	/**
	* Returns the Namespace Name (Namespace URI) for the given node.
	* In a Level 2 DOM, you can ask the node itself. Note, however, that
	* doing so conflicts with our decision in getLocalNameOfNode not
	* to trust the that the DOM was indeed created using the Level 2
	* methods. If Level 1 methods were used, these two functions will
	* disagree with each other.
	* <p>
	* TODO: Reconcile with getLocalNameOfNode.
	*
	* @param n Node to be examined
	*
	* @return String containing the Namespace URI bound to this DOM node
	* at the time the Node was created.
	*/
	@:overload @:public override public function getNamespaceOfNode(n : org.w3c.dom.Node) : String;
	
	
}
