package javax.swing.text.html.parser;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
*/
/**
* An element as described in a DTD using the ELEMENT construct.
* This is essentiall the description of a tag. It describes the
* type, content model, attributes, attribute types etc. It is used
* to correctly parse a document by the Parser.
*
* @see DTD
* @see AttributeList
* @author Arthur van Hoff
*/
extern class Element implements javax.swing.text.html.parser.DTDConstants implements java.io.Serializable
{
	public var index : Int;
	
	public var name : String;
	
	public var oStart : Bool;
	
	public var oEnd : Bool;
	
	public var inclusions : java.util.BitSet;
	
	public var exclusions : java.util.BitSet;
	
	public var type : Int;
	
	public var content : javax.swing.text.html.parser.ContentModel;
	
	public var atts : javax.swing.text.html.parser.AttributeList;
	
	/**
	* A field to store user data. Mostly used to store
	* style sheets.
	*/
	public var data : Dynamic;
	
	/**
	* Get the name of the element.
	*/
	@:overload public function getName() : String;
	
	/**
	* Return true if the start tag can be omitted.
	*/
	@:overload public function omitStart() : Bool;
	
	/**
	* Return true if the end tag can be omitted.
	*/
	@:overload public function omitEnd() : Bool;
	
	/**
	* Get type.
	*/
	@:overload public function getType() : Int;
	
	/**
	* Get content model
	*/
	@:overload public function getContent() : javax.swing.text.html.parser.ContentModel;
	
	/**
	* Get the attributes.
	*/
	@:overload public function getAttributes() : javax.swing.text.html.parser.AttributeList;
	
	/**
	* Get index.
	*/
	@:overload public function getIndex() : Int;
	
	/**
	* Check if empty
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Convert to a string.
	*/
	@:overload public function toString() : String;
	
	/**
	* Get an attribute by name.
	*/
	@:overload public function getAttribute(name : String) : javax.swing.text.html.parser.AttributeList;
	
	/**
	* Get an attribute by value.
	*/
	@:overload public function getAttributeByValue(name : String) : javax.swing.text.html.parser.AttributeList;
	
	@:overload public static function name2type(nm : String) : Int;
	
	
}
