package com.sun.org.apache.xerces.internal.impl.xs.opti;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class ElementImpl extends com.sun.org.apache.xerces.internal.impl.xs.opti.DefaultElement
{
	@:overload public function new(line : Int, column : Int, offset : Int) : Void;
	
	@:overload public function new(line : Int, column : Int) : Void;
	
	@:overload public function new(prefix : String, localpart : String, rawname : String, uri : String, line : Int, column : Int, offset : Int) : Void;
	
	@:overload public function new(prefix : String, localpart : String, rawname : String, uri : String, line : Int, column : Int) : Void;
	
	@:overload override public function getOwnerDocument() : org.w3c.dom.Document;
	
	@:overload override public function getParentNode() : org.w3c.dom.Node;
	
	@:overload override public function hasChildNodes() : Bool;
	
	@:overload override public function getFirstChild() : org.w3c.dom.Node;
	
	@:overload override public function getLastChild() : org.w3c.dom.Node;
	
	@:overload override public function getPreviousSibling() : org.w3c.dom.Node;
	
	@:overload override public function getNextSibling() : org.w3c.dom.Node;
	
	@:overload override public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
	@:overload override public function hasAttributes() : Bool;
	
	@:overload override public function getTagName() : String;
	
	@:overload override public function getAttribute(name : String) : String;
	
	@:overload override public function getAttributeNode(name : String) : org.w3c.dom.Attr;
	
	@:overload override public function getAttributeNS(namespaceURI : String, localName : String) : String;
	
	@:overload override public function getAttributeNodeNS(namespaceURI : String, localName : String) : org.w3c.dom.Attr;
	
	@:overload override public function hasAttribute(name : String) : Bool;
	
	@:overload override public function hasAttributeNS(namespaceURI : String, localName : String) : Bool;
	
	@:overload override public function setAttribute(name : String, value : String) : Void;
	
	/** Returns the line number. */
	@:overload public function getLineNumber() : Int;
	
	/** Returns the column number. */
	@:overload public function getColumnNumber() : Int;
	
	/** Returns the character offset. */
	@:overload public function getCharacterOffset() : Int;
	
	@:overload public function getAnnotation() : String;
	
	@:overload public function getSyntheticAnnotation() : String;
	
	
}
