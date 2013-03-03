package com.sun.xml.internal.bind.unmarshaller;
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
extern class DOMScanner implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.LocatorEx implements com.sun.xml.internal.bind.unmarshaller.InfosetScanner<Dynamic>
{
	@:overload @:public public function new() : Void;
	
	/**
	* Configures the locator object that the SAX {@link ContentHandler} will see.
	*/
	@:overload @:public public function setLocator(loc : org.xml.sax.Locator) : Void;
	
	@:overload @:public public function scan(node : Dynamic) : Void;
	
	@:overload @:public public function scan(doc : org.w3c.dom.Document) : Void;
	
	@:overload @:public public function scan(e : org.w3c.dom.Element) : Void;
	
	/**
	* Parses a subtree starting from the element e and
	* reports SAX2 events to the specified handler.
	*
	* @deprecated in JAXB 2.0
	*      Use {@link #scan(Element)}
	*/
	@:overload @:public public function parse(e : org.w3c.dom.Element, handler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Similar to the parse method but it visits the ancestor nodes
	* and properly emulate the all in-scope namespace declarations.
	*
	* @deprecated in JAXB 2.0
	*      Use {@link #scan(Element)}
	*/
	@:overload @:public public function parseWithContext(e : org.w3c.dom.Element, handler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Visits an element and its subtree.
	*/
	@:overload @:public public function visit(e : org.w3c.dom.Element) : Void;
	
	/**
	* The same as {@link #getCurrentElement()} but
	* better typed.
	*/
	@:overload @:public public function getCurrentLocation() : org.w3c.dom.Node;
	
	@:overload @:public public function getCurrentElement() : Dynamic;
	
	@:overload @:public public function getLocator() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.LocatorEx;
	
	@:overload @:public public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public public function getContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload @:public public function getPublicId() : String;
	
	@:overload @:public public function getSystemId() : String;
	
	@:overload @:public public function getLineNumber() : Int;
	
	@:overload @:public public function getColumnNumber() : Int;
	
	@:overload @:public public function getLocation() : javax.xml.bind.ValidationEventLocator;
	
	
}
