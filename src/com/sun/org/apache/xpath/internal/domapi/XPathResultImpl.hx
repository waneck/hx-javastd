package com.sun.org.apache.xpath.internal.domapi;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2005 The Apache Software Foundation.
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
* $Id: XPathResultImpl.java,v 1.2.4.1 2005/09/10 04:18:54 jeffsuttor Exp $
*/
@:internal extern class XPathResultImpl implements org.w3c.dom.xpath.XPathResult implements org.w3c.dom.events.EventListener
{
	/**
	* @see org.w3c.dom.xpath.XPathResult#getResultType()
	*/
	@:overload public function getResultType() : java.StdTypes.Int16;
	
	/**
	*  The value of this number result.
	* @exception XPathException
	*   TYPE_ERR: raised if <code>resultType</code> is not
	*   <code>NUMBER_TYPE</code>.
	* @see org.w3c.dom.xpath.XPathResult#getNumberValue()
	*/
	@:overload public function getNumberValue() : Float;
	
	/**
	* The value of this string result.
	* @exception XPathException
	*   TYPE_ERR: raised if <code>resultType</code> is not
	*   <code>STRING_TYPE</code>.
	*
	* @see org.w3c.dom.xpath.XPathResult#getStringValue()
	*/
	@:overload public function getStringValue() : String;
	
	/**
	* @see org.w3c.dom.xpath.XPathResult#getBooleanValue()
	*/
	@:overload public function getBooleanValue() : Bool;
	
	/**
	* The value of this single node result, which may be <code>null</code>.
	* @exception XPathException
	*   TYPE_ERR: raised if <code>resultType</code> is not
	*   <code>ANY_UNORDERED_NODE_TYPE</code> or
	*   <code>FIRST_ORDERED_NODE_TYPE</code>.
	*
	* @see org.w3c.dom.xpath.XPathResult#getSingleNodeValue()
	*/
	@:overload public function getSingleNodeValue() : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.xpath.XPathResult#getInvalidIteratorState()
	*/
	@:overload public function getInvalidIteratorState() : Bool;
	
	/**
	* The number of nodes in the result snapshot. Valid values for
	* snapshotItem indices are <code>0</code> to
	* <code>snapshotLength-1</code> inclusive.
	* @exception XPathException
	*   TYPE_ERR: raised if <code>resultType</code> is not
	*   <code>UNORDERED_NODE_SNAPSHOT_TYPE</code> or
	*   <code>ORDERED_NODE_SNAPSHOT_TYPE</code>.
	*
	* @see org.w3c.dom.xpath.XPathResult#getSnapshotLength()
	*/
	@:overload public function getSnapshotLength() : Int;
	
	/**
	* Iterates and returns the next node from the node set or
	* <code>null</code>if there are no more nodes.
	* @return Returns the next node.
	* @exception XPathException
	*   TYPE_ERR: raised if <code>resultType</code> is not
	*   <code>UNORDERED_NODE_ITERATOR_TYPE</code> or
	*   <code>ORDERED_NODE_ITERATOR_TYPE</code>.
	* @exception DOMException
	*   INVALID_STATE_ERR: The document has been mutated since the result was
	*   returned.
	* @see org.w3c.dom.xpath.XPathResult#iterateNext()
	*/
	@:overload public function iterateNext() : org.w3c.dom.Node;
	
	/**
	* Returns the <code>index</code>th item in the snapshot collection. If
	* <code>index</code> is greater than or equal to the number of nodes in
	* the list, this method returns <code>null</code>. Unlike the iterator
	* result, the snapshot does not become invalid, but may not correspond
	* to the current document if it is mutated.
	* @param index Index into the snapshot collection.
	* @return The node at the <code>index</code>th position in the
	*   <code>NodeList</code>, or <code>null</code> if that is not a valid
	*   index.
	* @exception XPathException
	*   TYPE_ERR: raised if <code>resultType</code> is not
	*   <code>UNORDERED_NODE_SNAPSHOT_TYPE</code> or
	*   <code>ORDERED_NODE_SNAPSHOT_TYPE</code>.
	*
	* @see org.w3c.dom.xpath.XPathResult#snapshotItem(int)
	*/
	@:overload public function snapshotItem(index : Int) : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.events.EventListener#handleEvent(Event)
	*/
	@:overload public function handleEvent(event : org.w3c.dom.events.Event) : Void;
	
	
}
