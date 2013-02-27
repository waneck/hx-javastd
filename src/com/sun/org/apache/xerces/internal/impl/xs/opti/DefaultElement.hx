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
extern class DefaultElement extends com.sun.org.apache.xerces.internal.impl.xs.opti.NodeImpl implements org.w3c.dom.Element
{
	/**
	* @xerces.internal
	*
	* @author Rahul Srivastava, Sun Microsystems Inc.
	*
	*/
	@:overload public function new() : Void;
	
	@:overload public function new(prefix : String, localpart : String, rawname : String, uri : String, nodeType : java.StdTypes.Int16) : Void;
	
	@:overload public function getTagName() : String;
	
	@:overload public function getAttribute(name : String) : String;
	
	@:overload public function getAttributeNode(name : String) : org.w3c.dom.Attr;
	
	@:overload public function getElementsByTagName(name : String) : org.w3c.dom.NodeList;
	
	@:overload public function getAttributeNS(namespaceURI : String, localName : String) : String;
	
	@:overload public function getAttributeNodeNS(namespaceURI : String, localName : String) : org.w3c.dom.Attr;
	
	@:overload public function getElementsByTagNameNS(namespaceURI : String, localName : String) : org.w3c.dom.NodeList;
	
	@:overload public function hasAttribute(name : String) : Bool;
	
	@:overload public function hasAttributeNS(namespaceURI : String, localName : String) : Bool;
	
	@:overload public function getSchemaTypeInfo() : org.w3c.dom.TypeInfo;
	
	@:overload public function setAttribute(name : String, value : String) : Void;
	
	@:overload public function removeAttribute(name : String) : Void;
	
	@:overload public function removeAttributeNode(oldAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	@:overload public function setAttributeNode(newAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	@:overload public function setAttributeNS(namespaceURI : String, qualifiedName : String, value : String) : Void;
	
	@:overload public function removeAttributeNS(namespaceURI : String, localName : String) : Void;
	
	@:overload public function setAttributeNodeNS(newAttr : org.w3c.dom.Attr) : org.w3c.dom.Attr;
	
	@:overload public function setIdAttributeNode(at : org.w3c.dom.Attr, makeId : Bool) : Void;
	
	@:overload public function setIdAttribute(name : String, makeId : Bool) : Void;
	
	@:overload public function setIdAttributeNS(namespaceURI : String, localName : String, makeId : Bool) : Void;
	
	
}
