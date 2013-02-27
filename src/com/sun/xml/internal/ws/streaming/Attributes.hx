package com.sun.xml.internal.ws.streaming;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface Attributes
{
	/**
	* Return the number of attributes in the list.
	*
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Return true if the attribute at the given index is a namespace
	* declaration.
	*
	* <p> Implementations are encouraged to optimize this method by taking into
	* account their internal representations of attributes. </p>
	*
	*/
	@:overload public function isNamespaceDeclaration(index : Int) : Bool;
	
	/**
	* Look up an attribute's QName by index.
	*
	*/
	@:overload public function getName(index : Int) : javax.xml.namespace.QName;
	
	/**
	* Look up an attribute's URI by index.
	*
	*/
	@:overload public function getURI(index : Int) : String;
	
	/**
	* Look up an attribute's local name by index.
	* If attribute is a namespace declaration, result
	* is expected including "xmlns:".
	*/
	@:overload public function getLocalName(index : Int) : String;
	
	/**
	* Look up an attribute's prefix by index.
	*
	*/
	@:overload public function getPrefix(index : Int) : String;
	
	/**
	* Look up an attribute's value by index.
	*
	*/
	@:overload public function getValue(index : Int) : String;
	
	/**
	* Look up the index of an attribute by QName.
	*
	*/
	@:overload public function getIndex(name : javax.xml.namespace.QName) : Int;
	
	/**
	* Look up the index of an attribute by URI and local name.
	*
	*/
	@:overload public function getIndex(uri : String, localName : String) : Int;
	
	/**
	* Look up the index of an attribute by local name.
	*
	*/
	@:overload public function getIndex(localName : String) : Int;
	
	/**
	* Look up the value of an attribute by QName.
	*
	*/
	@:overload public function getValue(name : javax.xml.namespace.QName) : String;
	
	/**
	* Look up the value of an attribute by URI and local name.
	*
	*/
	@:overload public function getValue(uri : String, localName : String) : String;
	
	/**
	* Look up the value of an attribute by local name.
	*
	*/
	@:overload public function getValue(localName : String) : String;
	
	
}
