package com.sun.tools.internal.ws.api.wsdl;
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
extern interface TWSDLParserContext
{
	/**
	* Pushes the parsing context
	*/
	@:overload public function push() : Void;
	
	/**
	* pops the parsing context
	*/
	@:overload public function pop() : Void;
	
	/**
	* Gives the namespace URI for a given prefix
	*
	* @param prefix non-null prefix
	* @return null of the prefix is not found
	*/
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	/**
	* Gives the prefixes in the current context
	*/
	@:overload public function getPrefixes() : java.lang.Iterable<String>;
	
	/**
	* Gives default namespace
	*
	* @return null if there is no default namespace declaration found
	*/
	@:overload public function getDefaultNamespaceURI() : String;
	
	/**
	* Registers naemespace declarations of a given {@link Element} found in the WSDL
	*
	* @param e {@link Element} whose namespace declarations need to be registered
	*/
	@:overload public function registerNamespaces(e : org.w3c.dom.Element) : Void;
	
	/**
	* gives the location information for the given Element.
	*/
	@:overload public function getLocation(e : org.w3c.dom.Element) : org.xml.sax.Locator;
	
	
}
