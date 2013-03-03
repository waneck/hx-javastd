package com.sun.xml.internal.bind.marshaller;
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
/*
* SAX2DOMEx.java
*
* Created on February 22, 2002, 1:55 PM
*/
extern class SAX2DOMEx implements org.xml.sax.ContentHandler
{
	@:protected @:final private var nodeStack(default, null) : java.util.Stack<org.w3c.dom.Node>;
	
	/**
	* Document object that owns the specified node.
	*/
	@:protected @:final private var document(default, null) : org.w3c.dom.Document;
	
	/**
	* @param   node
	*      Nodes will be created and added under this object.
	*/
	@:overload @:public public function new(node : org.w3c.dom.Node) : Void;
	
	/**
	* @param   node
	*      Nodes will be created and added under this object.
	*/
	@:overload @:public public function new(node : org.w3c.dom.Node, isConsolidate : Bool) : Void;
	
	/**
	* Creates a fresh empty DOM document and adds nodes under this document.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public @:final public function getCurrentElement() : org.w3c.dom.Element;
	
	@:overload @:public public function getDOM() : org.w3c.dom.Node;
	
	@:overload @:public public function startDocument() : Void;
	
	@:overload @:public public function endDocument() : Void;
	
	@:overload @:protected private function namespace(element : org.w3c.dom.Element, prefix : String, uri : String) : Void;
	
	@:overload @:public public function startElement(namespace : String, localName : String, qName : String, attrs : org.xml.sax.Attributes) : Void;
	
	@:overload @:public public function endElement(namespace : String, localName : String, qName : String) : Void;
	
	@:overload @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:protected private function characters(s : String) : org.w3c.dom.Text;
	
	@:overload @:public public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function processingInstruction(target : String, data : String) : Void;
	
	@:overload @:public public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public public function skippedEntity(name : String) : Void;
	
	@:overload @:public public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:public public function endPrefixMapping(prefix : String) : Void;
	
	
}
