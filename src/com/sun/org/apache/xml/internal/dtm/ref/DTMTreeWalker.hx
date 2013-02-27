package com.sun.org.apache.xml.internal.dtm.ref;
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
* $Id: DTMTreeWalker.java,v 1.2.4.1 2005/09/15 08:15:05 suresh_emailid Exp $
*/
extern class DTMTreeWalker
{
	/** DomHelper for this TreeWalker          */
	private var m_dtm : com.sun.org.apache.xml.internal.dtm.DTM;
	
	/**
	* Set the DTM to be traversed.
	*
	* @param dtm The Document Table Model to be used.
	*/
	@:overload public function setDTM(dtm : com.sun.org.apache.xml.internal.dtm.DTM) : Void;
	
	/**
	* Get the ContentHandler used for the tree walk.
	*
	* @return the ContentHandler used for the tree walk
	*/
	@:overload public function getcontentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Set the ContentHandler used for the tree walk.
	*
	* @param ch the ContentHandler to be the result of the tree walk.
	*/
	@:overload public function setcontentHandler(ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor.
	* @param   contentHandler The implemention of the
	* contentHandler operation (toXMLString, digest, ...)
	*/
	@:overload public function new(contentHandler : org.xml.sax.ContentHandler, dtm : com.sun.org.apache.xml.internal.dtm.DTM) : Void;
	
	/** Perform a non-recursive pre-order/post-order traversal,
	* operating as a Visitor. startNode (preorder) and endNode
	* (postorder) are invoked for each node as we traverse over them,
	* with the result that the node is written out to m_contentHandler.
	*
	* @param pos Node in the tree at which to start (and end) traversal --
	* in other words, the root of the subtree to traverse over.
	*
	* @throws TransformerException */
	@:overload public function traverse(pos : Int) : Void;
	
	/** Perform a non-recursive pre-order/post-order traversal,
	* operating as a Visitor. startNode (preorder) and endNode
	* (postorder) are invoked for each node as we traverse over them,
	* with the result that the node is written out to m_contentHandler.
	*
	* @param pos Node in the tree where to start traversal
	* @param top Node in the tree where to end traversal.
	* If top==DTM.NULL, run through end of document.
	*
	* @throws TransformerException
	*/
	@:overload public function traverse(pos : Int, top : Int) : Void;
	
	/**
	* Start processing given node
	*
	*
	* @param node Node to process
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload private function startNode(node : Int) : Void;
	
	/**
	* End processing of given node
	*
	*
	* @param node Node we just finished processing
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload private function endNode(node : Int) : Void;
	
	
}
