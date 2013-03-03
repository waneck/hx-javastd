package com.sun.xml.internal.ws.util;
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
extern class DOMUtil
{
	/**
	* Creates a new DOM document.
	*/
	@:overload @:public @:static public static function createDom() : org.w3c.dom.Document;
	
	@:overload @:public @:static public static function createDOMNode(inputStream : java.io.InputStream) : org.w3c.dom.Node;
	
	/**
	* Traverses a DOM node and writes out on a streaming writer.
	*
	* @param node
	* @param writer
	*/
	@:overload @:public @:static public static function serializeNode(node : org.w3c.dom.Element, writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public @:static public static function writeTagWithAttributes(node : org.w3c.dom.Element, writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Gets the first child of the given name, or null.
	*/
	@:overload @:public @:static public static function getFirstChild(e : org.w3c.dom.Element, nsUri : String, local : String) : org.w3c.dom.Element;
	
	/**
	* Gets the first element child.
	*/
	@:overload @:public @:static public static function getFirstElementChild(parent : org.w3c.dom.Node) : org.w3c.dom.Element;
	
	@:overload @:public @:static public static function getChildElements(parent : org.w3c.dom.Node) : java.util.List<org.w3c.dom.Element>;
	
	
}
