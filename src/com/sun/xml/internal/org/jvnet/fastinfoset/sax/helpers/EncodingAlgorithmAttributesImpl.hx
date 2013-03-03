package com.sun.xml.internal.org.jvnet.fastinfoset.sax.helpers;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class EncodingAlgorithmAttributesImpl implements com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmAttributes
{
	/**
	* Construct a new, empty EncodingAlgorithmAttributesImpl object.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Copy an existing Attributes object.
	*
	* <p>This constructor is especially useful inside a
	* {@link org.xml.sax.ContentHandler#startElement startElement} event.</p>
	*
	* @param attributes The existing Attributes object.
	*/
	@:overload @:public public function new(attributes : org.xml.sax.Attributes) : Void;
	
	/**
	* Use registered encoding algorithms and copy an existing Attributes object.
	*
	* <p>This constructor is especially useful inside a
	* {@link org.xml.sax.ContentHandler#startElement startElement} event.</p>
	*
	* @param registeredEncodingAlgorithms
	*      The registeredEncodingAlgorithms encoding algorithms.
	* @param attributes The existing Attributes object.
	*/
	@:overload @:public public function new(registeredEncodingAlgorithms : java.util.Map<Dynamic, Dynamic>, attributes : org.xml.sax.Attributes) : Void;
	
	/**
	* Clear the attribute list for reuse.
	*
	*/
	@:overload @:public @:final public function clear() : Void;
	
	/**
	* Add an attribute to the end of the list.
	*
	* <p>For the sake of speed, this method does no checking
	* to see if the attribute is already in the list: that is
	* the responsibility of the application.</p>
	*
	* @param URI The Namespace URI, or the empty string if
	*        none is available or Namespace processing is not
	*        being performed.
	* @param localName The local name, or the empty string if
	*        Namespace processing is not being performed.
	* @param qName The qualified (prefixed) name, or the empty string
	*        if qualified names are not available.
	* @param type The attribute type as a string.
	* @param value The attribute value.
	*/
	@:overload @:public public function addAttribute(URI : String, localName : String, qName : String, type : String, value : String) : Void;
	
	/**
	* Add an attribute to the end of the list.
	*
	* <p>For the sake of speed, this method does no checking
	* to see if the attribute is already in the list: that is
	* the responsibility of the application.</p>
	*
	* @param URI The Namespace URI, or the empty string if
	*        none is available or Namespace processing is not
	*        being performed.
	* @param localName The local name, or the empty string if
	*        Namespace processing is not being performed.
	* @param qName The qualified (prefixed) name, or the empty string
	*        if qualified names are not available.
	* @param type The attribute type as a string.
	* @param value The attribute value.
	* @param index True if attribute should be indexed.
	* @param alphabet The alphabet associated with the attribute value,
	*              may be null if there is no associated alphabet.
	*/
	@:overload @:public public function addAttribute(URI : String, localName : String, qName : String, type : String, value : String, index : Bool, alphabet : String) : Void;
	
	/**
	* Add an attribute with built in algorithm data to the end of the list.
	*
	* <p>For the sake of speed, this method does no checking
	* to see if the attribute is already in the list: that is
	* the responsibility of the application.</p>
	*
	* @param URI The Namespace URI, or the empty string if
	*        none is available or Namespace processing is not
	*        being performed.
	* @param localName The local name, or the empty string if
	*        Namespace processing is not being performed.
	* @param qName The qualified (prefixed) name, or the empty string
	*        if qualified names are not available.
	* @param builtInAlgorithmID The built in algorithm ID.
	* @param algorithmData The built in algorithm data.
	*/
	@:overload @:public public function addAttributeWithBuiltInAlgorithmData(URI : String, localName : String, qName : String, builtInAlgorithmID : Int, algorithmData : Dynamic) : Void;
	
	/**
	* Add an attribute with algorithm data to the end of the list.
	*
	* <p>For the sake of speed, this method does no checking
	* to see if the attribute is already in the list: that is
	* the responsibility of the application.</p>
	*
	* @param URI The Namespace URI, or the empty string if
	*        none is available or Namespace processing is not
	*        being performed.
	* @param localName The local name, or the empty string if
	*        Namespace processing is not being performed.
	* @param qName The qualified (prefixed) name, or the empty string
	*        if qualified names are not available.
	* @param algorithmURI The algorithm URI, or null if a built in algorithm
	* @param algorithmID The algorithm ID.
	* @param algorithmData The algorithm data.
	*/
	@:overload @:public public function addAttributeWithAlgorithmData(URI : String, localName : String, qName : String, algorithmURI : String, algorithmID : Int, algorithmData : Dynamic) : Void;
	
	/**
	* Replace an attribute value with algorithm data.
	*
	* <p>For the sake of speed, this method does no checking
	* to see if the attribute is already in the list: that is
	* the responsibility of the application.</p>
	*
	* @param index The index of the attribute whose value is to be replaced
	* @param algorithmURI The algorithm URI, or null if a built in algorithm
	* @param algorithmID The algorithm ID.
	* @param algorithmData The algorithm data.
	*/
	@:overload @:public public function replaceWithAttributeAlgorithmData(index : Int, algorithmURI : String, algorithmID : Int, algorithmData : Dynamic) : Void;
	
	/**
	* Copy an entire Attributes object.
	*
	* @param atts The attributes to copy.
	*/
	@:overload @:public public function setAttributes(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Copy an entire EncodingAlgorithmAttributes object.
	*
	* @param atts The attributes to copy.
	*/
	@:overload @:public public function setAttributes(atts : com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmAttributes) : Void;
	
	@:overload @:public @:final public function getLength() : Int;
	
	@:overload @:public @:final public function getLocalName(index : Int) : String;
	
	@:overload @:public @:final public function getQName(index : Int) : String;
	
	@:overload @:public @:final public function getType(index : Int) : String;
	
	@:overload @:public @:final public function getURI(index : Int) : String;
	
	@:overload @:public @:final public function getValue(index : Int) : String;
	
	@:overload @:public @:final public function getIndex(qName : String) : Int;
	
	@:overload @:public @:final public function getType(qName : String) : String;
	
	@:overload @:public @:final public function getValue(qName : String) : String;
	
	@:overload @:public @:final public function getIndex(uri : String, localName : String) : Int;
	
	@:overload @:public @:final public function getType(uri : String, localName : String) : String;
	
	@:overload @:public @:final public function getValue(uri : String, localName : String) : String;
	
	@:overload @:public @:final public function getAlgorithmURI(index : Int) : String;
	
	@:overload @:public @:final public function getAlgorithmIndex(index : Int) : Int;
	
	@:overload @:public @:final public function getAlgorithmData(index : Int) : Dynamic;
	
	@:overload @:public @:final public function getAlpababet(index : Int) : String;
	
	@:overload @:public @:final public function getToIndex(index : Int) : Bool;
	
	
}
