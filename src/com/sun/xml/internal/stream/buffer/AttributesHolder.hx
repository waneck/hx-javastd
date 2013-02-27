package com.sun.xml.internal.stream.buffer;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AttributesHolder implements org.xml.sax.Attributes
{
	/**
	* Class for holding attributes.
	*
	* Since it implements {@link Attributes}, this class follows the SAX convention
	* of using "" instead of null.
	*/
	private static var DEFAULT_CAPACITY(default, null) : Int;
	
	private static var ITEM_SIZE(default, null) : Int;
	
	private static var PREFIX(default, null) : Int;
	
	private static var URI(default, null) : Int;
	
	private static var LOCAL_NAME(default, null) : Int;
	
	private static var QNAME(default, null) : Int;
	
	private static var TYPE(default, null) : Int;
	
	private static var VALUE(default, null) : Int;
	
	private var _attributeCount : Int;
	
	private var _strings : java.NativeArray<String>;
	
	@:overload public function new() : Void;
	
	@:overload @:final public function getLength() : Int;
	
	@:overload @:final public function getPrefix(index : Int) : String;
	
	@:overload @:final public function getLocalName(index : Int) : String;
	
	@:overload @:final public function getQName(index : Int) : String;
	
	@:overload @:final public function getType(index : Int) : String;
	
	@:overload @:final public function getURI(index : Int) : String;
	
	@:overload @:final public function getValue(index : Int) : String;
	
	@:overload @:final public function getIndex(qName : String) : Int;
	
	@:overload @:final public function getType(qName : String) : String;
	
	@:overload @:final public function getValue(qName : String) : String;
	
	@:overload @:final public function getIndex(uri : String, localName : String) : Int;
	
	@:overload @:final public function getType(uri : String, localName : String) : String;
	
	@:overload @:final public function getValue(uri : String, localName : String) : String;
	
	@:overload @:final public function clear() : Void;
	
	/**
	* Add an attribute using a qualified name that contains the
	* prefix and local name.
	*
	* @param uri
	*      This can be empty but not null, just like everywhere else in SAX.
	*/
	@:overload @:final public function addAttributeWithQName(uri : String, localName : String, qName : String, type : String, value : String) : Void;
	
	/**
	* Add an attribute using a prefix.
	*
	* @param prefix
	*      This can be empty but not null, just like everywhere else in SAX.
	* @param uri
	*      This can be empty but not null, just like everywhere else in SAX.
	*/
	@:overload @:final public function addAttributeWithPrefix(prefix : String, uri : String, localName : String, type : String, value : String) : Void;
	
	
}
