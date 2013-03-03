package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern class CharacterDataImpl extends com.sun.org.apache.xerces.internal.dom.ChildNode
{
	@:protected private var data : String;
	
	@:overload @:public public function new() : Void;
	
	/** Factory constructor. */
	@:overload @:protected private function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, data : String) : Void;
	
	/** Returns an empty node list. */
	@:overload @:public override public function getChildNodes() : org.w3c.dom.NodeList;
	
	/*
	* returns the content of this node
	*/
	@:overload @:public override public function getNodeValue() : String;
	
	/** Convenience wrapper for calling setNodeValueInternal when
	* we are not performing a replacement operation
	*/
	@:overload @:protected private function setNodeValueInternal(value : String) : Void;
	
	/** This function added so that we can distinguish whether
	*  setNodeValue has been called from some other DOM functions.
	*  or by the client.<p>
	*  This is important, because we do one type of Range fix-up,
	*  from the high-level functions in CharacterData, and another
	*  type if the client simply calls setNodeValue(value).
	*/
	@:overload @:protected private function setNodeValueInternal(value : String, replace : Bool) : Void;
	
	/**
	* Sets the content, possibly firing related events,
	* and updating ranges (via notification to the document)
	*/
	@:overload @:public override public function setNodeValue(value : String) : Void;
	
	/**
	* Retrieve character data currently stored in this node.
	*
	* @throws DOMExcpetion(DOMSTRING_SIZE_ERR) In some implementations,
	* the stored data may exceed the permitted length of strings. If so,
	* getData() will throw this DOMException advising the user to
	* instead retrieve the data in chunks via the substring() operation.
	*/
	@:overload @:public public function getData() : String;
	
	/**
	* Report number of characters currently stored in this node's
	* data. It may be 0, meaning that the value is an empty string.
	*/
	@:overload @:public override public function getLength() : Int;
	
	/**
	* Concatenate additional characters onto the end of the data
	* stored in this node. Note that this, and insert(), are the paths
	* by which a DOM could wind up accumulating more data than the
	* language's strings can easily handle. (See above discussion.)
	*
	* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR) if node is readonly.
	*/
	@:overload @:public public function appendData(data : String) : Void;
	
	/**
	* Remove a range of characters from the node's value. Throws a
	* DOMException if the offset is beyond the end of the
	* string. However, a deletion _count_ that exceeds the available
	* data is accepted as a delete-to-end request.
	*
	* @throws DOMException(INDEX_SIZE_ERR) if offset is negative or
	* greater than length, or if count is negative.
	*
	* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR) if node is
	* readonly.
	*/
	@:overload @:public public function deleteData(offset : Int, count : Int) : Void;
	
	/**
	* Insert additional characters into the data stored in this node,
	* at the offset specified.
	*
	* @throws DOMException(INDEX_SIZE_ERR) if offset is negative or
	* greater than length.
	*
	* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR) if node is readonly.
	*/
	@:overload @:public public function insertData(offset : Int, data : String) : Void;
	
	/**
	* Replace a series of characters at the specified (zero-based)
	* offset with a new string, NOT necessarily of the same
	* length. Convenience method, equivalent to a delete followed by an
	* insert. Throws a DOMException if the specified offset is beyond
	* the end of the existing data.
	*
	* @param offset       The offset at which to begin replacing.
	*
	* @param count        The number of characters to remove,
	* interpreted as in the delete() method.
	*
	* @param data         The new string to be inserted at offset in place of
	* the removed data. Note that the entire string will
	* be inserted -- the count parameter does not affect
	* insertion, and the new data may be longer or shorter
	* than the substring it replaces.
	*
	* @throws DOMException(INDEX_SIZE_ERR) if offset is negative or
	* greater than length, or if count is negative.
	*
	* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR) if node is
	* readonly.
	*/
	@:overload @:public public function replaceData(offset : Int, count : Int, data : String) : Void;
	
	/**
	* Store character data into this node.
	*
	* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR) if node is readonly.
	*/
	@:overload @:public public function setData(value : String) : Void;
	
	/**
	* Substring is more than a convenience function. In some
	* implementations of the DOM, where the stored data may exceed the
	* length that can be returned in a single string, the only way to
	* read it all is to extract it in chunks via this method.
	*
	* @param offset        Zero-based offset of first character to retrieve.
	* @param count Number of characters to retrieve.
	*
	* If the sum of offset and count exceeds the length, all characters
	* to end of data are returned.
	*
	* @throws DOMException(INDEX_SIZE_ERR) if offset is negative or
	* greater than length, or if count is negative.
	*
	* @throws DOMException(WSTRING_SIZE_ERR) In some implementations,
	* count may exceed the permitted length of strings. If so,
	* substring() will throw this DOMException advising the user to
	* instead retrieve the data in smaller chunks.
	*/
	@:overload @:public public function substringData(offset : Int, count : Int) : String;
	
	
}
