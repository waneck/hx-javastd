package org.w3c.dom.xpath;
/*
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2002 World Wide Web Consortium,
* (Massachusetts Institute of Technology, Institut National de
* Recherche en Informatique et en Automatique, Keio University). All
* Rights Reserved. This program is distributed under the W3C's Software
* Intellectual Property License. This program is distributed in the
* hope that it will be useful, but WITHOUT ANY WARRANTY; without even
* the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
* PURPOSE.
* See W3C License http://www.w3.org/Consortium/Legal/ for more details.
*/
extern interface XPathResult
{
	/**
	* A code representing the type of this result, as defined by the type
	* constants.
	*/
	@:overload @:public public function getResultType() : java.StdTypes.Int16;
	
	/**
	* The value of this number result. If the native double type of the DOM
	* binding does not directly support the exact IEEE 754 result of the
	* XPath expression, then it is up to the definition of the binding
	* binding to specify how the XPath number is converted to the native
	* binding number.
	* @exception XPathException
	*   TYPE_ERR: raised if <code>resultType</code> is not
	*   <code>NUMBER_TYPE</code>.
	*/
	@:overload @:public public function getNumberValue() : Float;
	
	/**
	* The value of this string result.
	* @exception XPathException
	*   TYPE_ERR: raised if <code>resultType</code> is not
	*   <code>STRING_TYPE</code>.
	*/
	@:overload @:public public function getStringValue() : String;
	
	/**
	* The value of this boolean result.
	* @exception XPathException
	*   TYPE_ERR: raised if <code>resultType</code> is not
	*   <code>BOOLEAN_TYPE</code>.
	*/
	@:overload @:public public function getBooleanValue() : Bool;
	
	/**
	* The value of this single node result, which may be <code>null</code>.
	* @exception XPathException
	*   TYPE_ERR: raised if <code>resultType</code> is not
	*   <code>ANY_UNORDERED_NODE_TYPE</code> or
	*   <code>FIRST_ORDERED_NODE_TYPE</code>.
	*/
	@:overload @:public public function getSingleNodeValue() : org.w3c.dom.Node;
	
	/**
	* Signifies that the iterator has become invalid. True if
	* <code>resultType</code> is <code>UNORDERED_NODE_ITERATOR_TYPE</code>
	* or <code>ORDERED_NODE_ITERATOR_TYPE</code> and the document has been
	* modified since this result was returned.
	*/
	@:overload @:public public function getInvalidIteratorState() : Bool;
	
	/**
	* The number of nodes in the result snapshot. Valid values for
	* snapshotItem indices are <code>0</code> to
	* <code>snapshotLength-1</code> inclusive.
	* @exception XPathException
	*   TYPE_ERR: raised if <code>resultType</code> is not
	*   <code>UNORDERED_NODE_SNAPSHOT_TYPE</code> or
	*   <code>ORDERED_NODE_SNAPSHOT_TYPE</code>.
	*/
	@:overload @:public public function getSnapshotLength() : Int;
	
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
	*/
	@:overload @:public public function iterateNext() : org.w3c.dom.Node;
	
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
	*/
	@:overload @:public public function snapshotItem(index : Int) : org.w3c.dom.Node;
	
	
}
