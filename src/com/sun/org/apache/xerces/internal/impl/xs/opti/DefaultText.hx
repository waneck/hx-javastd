package com.sun.org.apache.xerces.internal.impl.xs.opti;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class DefaultText extends com.sun.org.apache.xerces.internal.impl.xs.opti.NodeImpl implements org.w3c.dom.Text
{
	/**
	* The character data of the node that implements this interface. The DOM
	* implementation may not put arbitrary limits on the amount of data
	* that may be stored in a <code>CharacterData</code> node. However,
	* implementation limits may mean that the entirety of a node's data may
	* not fit into a single <code>DOMString</code>. In such cases, the user
	* may call <code>substringData</code> to retrieve the data in
	* appropriately sized pieces.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly.
	* @exception DOMException
	*   DOMSTRING_SIZE_ERR: Raised when it would return more characters than
	*   fit in a <code>DOMString</code> variable on the implementation
	*   platform.
	*/
	@:overload @:public public function getData() : String;
	
	/**
	* The character data of the node that implements this interface. The DOM
	* implementation may not put arbitrary limits on the amount of data
	* that may be stored in a <code>CharacterData</code> node. However,
	* implementation limits may mean that the entirety of a node's data may
	* not fit into a single <code>DOMString</code>. In such cases, the user
	* may call <code>substringData</code> to retrieve the data in
	* appropriately sized pieces.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly.
	* @exception DOMException
	*   DOMSTRING_SIZE_ERR: Raised when it would return more characters than
	*   fit in a <code>DOMString</code> variable on the implementation
	*   platform.
	*/
	@:overload @:public public function setData(data : String) : Void;
	
	/**
	* The number of 16-bit units that are available through <code>data</code>
	* and the <code>substringData</code> method below. This may have the
	* value zero, i.e., <code>CharacterData</code> nodes may be empty.
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Extracts a range of data from the node.
	* @param offset Start offset of substring to extract.
	* @param count The number of 16-bit units to extract.
	* @return The specified substring. If the sum of <code>offset</code> and
	*   <code>count</code> exceeds the <code>length</code>, then all 16-bit
	*   units to the end of the data are returned.
	* @exception DOMException
	*   INDEX_SIZE_ERR: Raised if the specified <code>offset</code> is
	*   negative or greater than the number of 16-bit units in
	*   <code>data</code>, or if the specified <code>count</code> is
	*   negative.
	*   <br>DOMSTRING_SIZE_ERR: Raised if the specified range of text does
	*   not fit into a <code>DOMString</code>.
	*/
	@:overload @:public public function substringData(offset : Int, count : Int) : String;
	
	/**
	* Append the string to the end of the character data of the node. Upon
	* success, <code>data</code> provides access to the concatenation of
	* <code>data</code> and the <code>DOMString</code> specified.
	* @param arg The <code>DOMString</code> to append.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*/
	@:overload @:public public function appendData(arg : String) : Void;
	
	/**
	* Insert a string at the specified 16-bit unit offset.
	* @param offset The character offset at which to insert.
	* @param arg The <code>DOMString</code> to insert.
	* @exception DOMException
	*   INDEX_SIZE_ERR: Raised if the specified <code>offset</code> is
	*   negative or greater than the number of 16-bit units in
	*   <code>data</code>.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*/
	@:overload @:public public function insertData(offset : Int, arg : String) : Void;
	
	/**
	* Remove a range of 16-bit units from the node. Upon success,
	* <code>data</code> and <code>length</code> reflect the change.
	* @param offset The offset from which to start removing.
	* @param count The number of 16-bit units to delete. If the sum of
	*   <code>offset</code> and <code>count</code> exceeds
	*   <code>length</code> then all 16-bit units from <code>offset</code>
	*   to the end of the data are deleted.
	* @exception DOMException
	*   INDEX_SIZE_ERR: Raised if the specified <code>offset</code> is
	*   negative or greater than the number of 16-bit units in
	*   <code>data</code>, or if the specified <code>count</code> is
	*   negative.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*/
	@:overload @:public public function deleteData(offset : Int, count : Int) : Void;
	
	/**
	* Replace the characters starting at the specified 16-bit unit offset
	* with the specified string.
	* @param offset The offset from which to start replacing.
	* @param count The number of 16-bit units to replace. If the sum of
	*   <code>offset</code> and <code>count</code> exceeds
	*   <code>length</code>, then all 16-bit units to the end of the data
	*   are replaced; (i.e., the effect is the same as a <code>remove</code>
	*    method call with the same range, followed by an <code>append</code>
	*    method invocation).
	* @param arg The <code>DOMString</code> with which the range must be
	*   replaced.
	* @exception DOMException
	*   INDEX_SIZE_ERR: Raised if the specified <code>offset</code> is
	*   negative or greater than the number of 16-bit units in
	*   <code>data</code>, or if the specified <code>count</code> is
	*   negative.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*/
	@:overload @:public public function replaceData(offset : Int, count : Int, arg : String) : Void;
	
	/**
	* Breaks this node into two nodes at the specified <code>offset</code>,
	* keeping both in the tree as siblings. After being split, this node
	* will contain all the content up to the <code>offset</code> point. A
	* new node of the same type, which contains all the content at and
	* after the <code>offset</code> point, is returned. If the original
	* node had a parent node, the new node is inserted as the next sibling
	* of the original node. When the <code>offset</code> is equal to the
	* length of this node, the new node has no data.
	* @param offset The 16-bit unit offset at which to split, starting from
	*   <code>0</code>.
	* @return The new node, of the same type as this node.
	* @exception DOMException
	*   INDEX_SIZE_ERR: Raised if the specified offset is negative or greater
	*   than the number of 16-bit units in <code>data</code>.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*/
	@:overload @:public public function splitText(offset : Int) : org.w3c.dom.Text;
	
	/** DOM Level 3 CR */
	@:overload @:public public function isElementContentWhitespace() : Bool;
	
	@:overload @:public public function getWholeText() : String;
	
	@:overload @:public public function replaceWholeText(content : String) : org.w3c.dom.Text;
	
	
}
