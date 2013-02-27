package com.sun.org.apache.xml.internal.serializer.utils;
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
* $Id: AttList.java,v 1.1.4.1 2005/09/08 11:03:08 suresh_emailid Exp $
*/
extern class AttList implements org.xml.sax.Attributes
{
	/**
	* Constructor AttList
	*
	*
	* @param attrs List of attributes this will contain
	* @param dh DOMHelper
	*/
	@:overload public function new(attrs : org.w3c.dom.NamedNodeMap, dh : com.sun.org.apache.xml.internal.serializer.utils.DOM2Helper) : Void;
	
	/**
	* Get the number of attribute nodes in the list
	*
	*
	* @return number of attribute nodes
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Look up an attribute's Namespace URI by index.
	*
	* @param index The attribute index (zero-based).
	* @return The Namespace URI, or the empty string if none
	*         is available, or null if the index is out of
	*         range.
	*/
	@:overload public function getURI(index : Int) : String;
	
	/**
	* Look up an attribute's local name by index.
	*
	* @param index The attribute index (zero-based).
	* @return The local name, or the empty string if Namespace
	*         processing is not being performed, or null
	*         if the index is out of range.
	*/
	@:overload public function getLocalName(index : Int) : String;
	
	/**
	* Look up an attribute's qualified name by index.
	*
	*
	* @param i The attribute index (zero-based).
	*
	* @return The attribute's qualified name
	*/
	@:overload public function getQName(i : Int) : String;
	
	/**
	* Get the attribute's node type by index
	*
	*
	* @param i The attribute index (zero-based)
	*
	* @return the attribute's node type
	*/
	@:overload public function getType(i : Int) : String;
	
	/**
	* Get the attribute's node value by index
	*
	*
	* @param i The attribute index (zero-based)
	*
	* @return the attribute's node value
	*/
	@:overload public function getValue(i : Int) : String;
	
	/**
	* Get the attribute's node type by name
	*
	*
	* @param name Attribute name
	*
	* @return the attribute's node type
	*/
	@:overload public function getType(name : String) : String;
	
	/**
	* Look up an attribute's type by Namespace name.
	*
	* @param uri The Namespace URI, or the empty String if the
	*        name has no Namespace URI.
	* @param localName The local name of the attribute.
	* @return The attribute type as a string, or null if the
	*         attribute is not in the list or if Namespace
	*         processing is not being performed.
	*/
	@:overload public function getType(uri : String, localName : String) : String;
	
	/**
	* Look up an attribute's value by name.
	*
	*
	* @param name The attribute node's name
	*
	* @return The attribute node's value
	*/
	@:overload public function getValue(name : String) : String;
	
	/**
	* Look up an attribute's value by Namespace name.
	*
	* @param uri The Namespace URI, or the empty String if the
	*        name has no Namespace URI.
	* @param localName The local name of the attribute.
	* @return The attribute value as a string, or null if the
	*         attribute is not in the list.
	*/
	@:overload public function getValue(uri : String, localName : String) : String;
	
	/**
	* Look up the index of an attribute by Namespace name.
	*
	* @param uri The Namespace URI, or the empty string if
	*        the name has no Namespace URI.
	* @param localPart The attribute's local name.
	* @return The index of the attribute, or -1 if it does not
	*         appear in the list.
	*/
	@:overload public function getIndex(uri : String, localPart : String) : Int;
	
	/**
	* Look up the index of an attribute by raw XML 1.0 name.
	*
	* @param qName The qualified (prefixed) name.
	* @return The index of the attribute, or -1 if it does not
	*         appear in the list.
	*/
	@:overload public function getIndex(qName : String) : Int;
	
	
}
