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
extern class TextImpl extends com.sun.org.apache.xerces.internal.dom.CharacterDataImpl implements org.w3c.dom.CharacterData implements org.w3c.dom.Text
{
	/** Default constructor */
	@:overload @:public public function new() : Void;
	
	/** Factory constructor. */
	@:overload @:public public function new(ownerDoc : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, data : String) : Void;
	
	/**
	* NON-DOM: resets node and sets specified values for the current node
	*
	* @param ownerDoc
	* @param data
	*/
	@:overload @:public public function setValues(ownerDoc : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, data : String) : Void;
	
	/**
	* A short integer indicating what type of node this is. The named
	* constants for this value are defined in the org.w3c.dom.Node interface.
	*/
	@:overload @:public override public function getNodeType() : java.StdTypes.Int16;
	
	/** Returns the node name. */
	@:overload @:public override public function getNodeName() : String;
	
	/**
	* NON-DOM: Set whether this Text is ignorable whitespace.
	*/
	@:overload @:public public function setIgnorableWhitespace(ignore : Bool) : Void;
	
	/**
	* DOM L3 Core CR - Experimental
	*
	* Returns whether this text node contains
	* element content whitespace</a>, often abusively called "ignorable whitespace".
	* The text node is determined to contain whitespace in element content
	* during the load of the document or if validation occurs while using
	* <code>Document.normalizeDocument()</code>.
	* @since DOM Level 3
	*/
	@:overload @:public public function isElementContentWhitespace() : Bool;
	
	/**
	* DOM Level 3 WD - Experimental.
	* Returns all text of <code>Text</code> nodes logically-adjacent text
	* nodes to this node, concatenated in document order.
	* @since DOM Level 3
	*/
	@:overload @:public public function getWholeText() : String;
	
	/**
	* internal method taking a StringBuffer in parameter and inserts the
	* text content at the start of the buffer
	*
	* @param buf
	*/
	@:overload @:protected private function insertTextContent(buf : java.lang.StringBuffer) : Void;
	
	/**
	* Replaces the text of the current node and all logically-adjacent text
	* nodes with the specified text. All logically-adjacent text nodes are
	* removed including the current node unless it was the recipient of the
	* replacement text.
	*
	* @param content
	*            The content of the replacing Text node.
	* @return text - The Text node created with the specified content.
	* @since DOM Level 3
	*/
	@:overload @:public public function replaceWholeText(content : String) : org.w3c.dom.Text;
	
	/**
	* NON-DOM: Returns whether this Text is ignorable whitespace.
	*/
	@:overload @:public public function isIgnorableWhitespace() : Bool;
	
	/**
	* Break a text node into two sibling nodes. (Note that if the current node
	* has no parent, they won't wind up as "siblings" -- they'll both be
	* orphans.)
	*
	* @param offset
	*            The offset at which to split. If offset is at the end of the
	*            available data, the second node will be empty.
	*
	* @return A reference to the new node (containing data after the offset
	*         point). The original node will contain data up to that point.
	*
	* @throws DOMException(INDEX_SIZE_ERR)
	*             if offset is <0 or >length.
	*
	* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR)
	*             if node is read-only.
	*/
	@:overload @:public public function splitText(offset : Int) : org.w3c.dom.Text;
	
	/**
	* NON-DOM (used by DOMParser): Reset data for the node.
	*/
	@:overload @:public public function replaceData(value : String) : Void;
	
	/**
	* NON-DOM (used by DOMParser: Sets data to empty string.
	*  Returns the value the data was set to.
	*/
	@:overload @:public public function removeData() : String;
	
	
}
