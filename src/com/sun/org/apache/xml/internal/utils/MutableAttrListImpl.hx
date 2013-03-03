package com.sun.org.apache.xml.internal.utils;
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
* $Id: MutableAttrListImpl.java,v 1.2.4.1 2005/09/15 08:15:47 suresh_emailid Exp $
*/
extern class MutableAttrListImpl extends org.xml.sax.helpers.AttributesImpl implements java.io.Serializable
{
	/**
	* Construct a new, empty AttributesImpl object.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Copy an existing Attributes object.
	*
	* <p>This constructor is especially useful inside a start
	* element event.</p>
	*
	* @param atts The existing Attributes object.
	*/
	@:overload @:public public function new(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Add an attribute to the end of the list.
	*
	* <p>For the sake of speed, this method does no checking
	* to see if the attribute is already in the list: that is
	* the responsibility of the application.</p>
	*
	* @param uri The Namespace URI, or the empty string if
	*        none is available or Namespace processing is not
	*        being performed.
	* @param localName The local name, or the empty string if
	*        Namespace processing is not being performed.
	* @param qName The qualified (prefixed) name, or the empty string
	*        if qualified names are not available.
	* @param type The attribute type as a string.
	* @param value The attribute value.
	*/
	@:overload @:public override public function addAttribute(uri : String, localName : String, qName : String, type : String, value : String) : Void;
	
	/**
	* Add the contents of the attribute list to this list.
	*
	* @param atts List of attributes to add to this list
	*/
	@:overload @:public public function addAttributes(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Return true if list contains the given (raw) attribute name.
	*
	* @param name Raw name of attribute to look for
	*
	* @return true if an attribute is found with this name
	*/
	@:overload @:public public function contains(name : String) : Bool;
	
	
}
