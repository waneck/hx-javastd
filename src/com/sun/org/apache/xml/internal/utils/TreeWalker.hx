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
* $Id: TreeWalker.java,v 1.2.4.1 2005/09/15 08:15:59 suresh_emailid Exp $
*/
extern class TreeWalker
{
	/** DomHelper for this TreeWalker          */
	private var m_dh : com.sun.org.apache.xml.internal.utils.DOMHelper;
	
	/**
	* Get the ContentHandler used for the tree walk.
	*
	* @return the ContentHandler used for the tree walk
	*/
	@:overload public function getContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Get the ContentHandler used for the tree walk.
	*
	* @return the ContentHandler used for the tree walk
	*/
	@:overload public function setContentHandler(ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Constructor.
	* @param   contentHandler The implemention of the
	* @param   systemId System identifier for the document.
	* contentHandler operation (toXMLString, digest, ...)
	*/
	@:overload public function new(contentHandler : org.xml.sax.ContentHandler, dh : com.sun.org.apache.xml.internal.utils.DOMHelper, systemId : String) : Void;
	
	/**
	* Constructor.
	* @param   contentHandler The implemention of the
	* contentHandler operation (toXMLString, digest, ...)
	*/
	@:overload public function new(contentHandler : org.xml.sax.ContentHandler, dh : com.sun.org.apache.xml.internal.utils.DOMHelper) : Void;
	
	/**
	* Constructor.
	* @param   contentHandler The implemention of the
	* contentHandler operation (toXMLString, digest, ...)
	*/
	@:overload public function new(contentHandler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Perform a pre-order traversal non-recursive style.
	*
	* Note that TreeWalker assumes that the subtree is intended to represent
	* a complete (though not necessarily well-formed) document and, during a
	* traversal, startDocument and endDocument will always be issued to the
	* SAX listener.
	*
	* @param pos Node in the tree where to start traversal
	*
	* @throws TransformerException
	*/
	@:overload public function traverse(pos : org.w3c.dom.Node) : Void;
	
	/**
	* Perform a pre-order traversal non-recursive style.
	*
	* In contrast to the traverse() method this method will not issue
	* startDocument() and endDocument() events to the SAX listener.
	*
	* @param pos Node in the tree where to start traversal
	*
	* @throws TransformerException
	*/
	@:overload public function traverseFragment(pos : org.w3c.dom.Node) : Void;
	
	/**
	* Perform a pre-order traversal non-recursive style.

	* Note that TreeWalker assumes that the subtree is intended to represent
	* a complete (though not necessarily well-formed) document and, during a
	* traversal, startDocument and endDocument will always be issued to the
	* SAX listener.
	*
	* @param pos Node in the tree where to start traversal
	* @param top Node in the tree where to end traversal
	*
	* @throws TransformerException
	*/
	@:overload public function traverse(pos : org.w3c.dom.Node, top : org.w3c.dom.Node) : Void;
	
	/**
	* Start processing given node
	*
	*
	* @param node Node to process
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload private function startNode(node : org.w3c.dom.Node) : Void;
	
	/**
	* End processing of given node
	*
	*
	* @param node Node we just finished processing
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload private function endNode(node : org.w3c.dom.Node) : Void;
	
	
}
