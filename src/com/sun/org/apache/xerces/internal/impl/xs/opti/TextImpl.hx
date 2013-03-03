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
extern class TextImpl extends com.sun.org.apache.xerces.internal.impl.xs.opti.DefaultText
{
	@:overload @:public public function new(str : java.lang.StringBuffer, sDOM : com.sun.org.apache.xerces.internal.impl.xs.opti.SchemaDOM, row : Int, col : Int) : Void;
	
	@:overload @:public override public function getParentNode() : org.w3c.dom.Node;
	
	@:overload @:public override public function getPreviousSibling() : org.w3c.dom.Node;
	
	@:overload @:public override public function getNextSibling() : org.w3c.dom.Node;
	
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
	@:overload @:public override public function getData() : String;
	
	/**
	* The number of 16-bit units that are available through <code>data</code>
	* and the <code>substringData</code> method below. This may have the
	* value zero, i.e., <code>CharacterData</code> nodes may be empty.
	*/
	@:overload @:public override public function getLength() : Int;
	
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
	@:overload @:public override public function substringData(offset : Int, count : Int) : String;
	
	
}
