package com.sun.xml.internal.stream.writers;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class WriterUtility
{
	/**
	* Implements common xml writer functions.
	*
	* @author Neeraj Bajaj,K.Venugopal Sun Microsystems.
	*/
	public static var START_COMMENT(default, null) : String;
	
	public static var END_COMMENT(default, null) : String;
	
	public static var DEFAULT_ENCODING(default, null) : String;
	
	public static var DEFAULT_XMLDECL(default, null) : String;
	
	public static var DEFAULT_XML_VERSION(default, null) : String;
	
	public static var CLOSE_START_TAG(default, null) : java.StdTypes.Char16;
	
	public static var OPEN_START_TAG(default, null) : java.StdTypes.Char16;
	
	public static var OPEN_END_TAG(default, null) : String;
	
	public static var CLOSE_END_TAG(default, null) : java.StdTypes.Char16;
	
	public static var START_CDATA(default, null) : String;
	
	public static var END_CDATA(default, null) : String;
	
	public static var CLOSE_EMPTY_ELEMENT(default, null) : String;
	
	public static var SPACE(default, null) : String;
	
	public static var UTF_8(default, null) : String;
	
	@:overload public function new() : Void;
	
	/** Creates a new instance of WriterUtility */
	@:overload public function new(writer : java.io.Writer) : Void;
	
	/**
	* sets the writer object
	* @param writer file to write into
	*/
	@:overload public function setWriter(writer : java.io.Writer) : Void;
	
	@:overload public function setEscapeCharacters(escape : Bool) : Void;
	
	@:overload public function getEscapeCharacters() : Bool;
	
	/**
	* writes xml content (characters and element content
	* @param content
	*/
	@:overload public function writeXMLContent(content : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* writes xml content (characters and element content
	* @param content
	*/
	@:overload public function writeXMLContent(content : String) : Void;
	
	/**
	* Write Attribute value to the underlying stream.
	*
	* @param value
	*/
	@:overload public function writeXMLAttributeValue(value : String) : Void;
	
	
}
