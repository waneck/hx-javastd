package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2004 The Apache Software Foundation.
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
* $Id: AttributesImplSerializer.java,v 1.2.4.1 2005/09/15 08:15:14 suresh_emailid Exp $
*/
extern class AttributesImplSerializer extends org.xml.sax.helpers.AttributesImpl
{
	/**
	* This method gets the index of an attribute given its qName.
	* @param qname the qualified name of the attribute, e.g. "prefix1:locName1"
	* @return the integer index of the attribute.
	* @see org.xml.sax.Attributes#getIndex(String)
	*/
	@:overload @:final override public function getIndex(qname : String) : Int;
	
	/**
	* This method adds the attribute, but also records its qName/index pair in
	* the hashtable for fast lookup by getIndex(qName).
	* @param uri the URI of the attribute
	* @param local the local name of the attribute
	* @param qname the qualified name of the attribute
	* @param type the type of the attribute
	* @param val the value of the attribute
	*
	* @see org.xml.sax.helpers.AttributesImpl#addAttribute(String, String, String, String, String)
	* @see #getIndex(String)
	*/
	@:overload @:final override public function addAttribute(uri : String, local : String, qname : String, type : String, val : String) : Void;
	
	/**
	* This method clears the accumulated attributes.
	*
	* @see org.xml.sax.helpers.AttributesImpl#clear()
	*/
	@:overload @:final override public function clear() : Void;
	
	/**
	* This method sets the attributes, previous attributes are cleared,
	* it also keeps the hashtable up to date for quick lookup via
	* getIndex(qName).
	* @param atts the attributes to copy into these attributes.
	* @see org.xml.sax.helpers.AttributesImpl#setAttributes(Attributes)
	* @see #getIndex(String)
	*/
	@:overload @:final override public function setAttributes(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* This method gets the index of an attribute given its uri and locanName.
	* @param uri the URI of the attribute name.
	* @param localName the local namer (after the ':' ) of the attribute name.
	* @return the integer index of the attribute.
	* @see org.xml.sax.Attributes#getIndex(String)
	*/
	@:overload @:final override public function getIndex(uri : String, localName : String) : Int;
	
	
}
