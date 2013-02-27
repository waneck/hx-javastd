package com.sun.tools.doclets.internal.toolkit.builders;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Parse the XML that specified the order of operation for the builders.  This
* Parser uses SAX parsing.
*
* @author Jamie Ho
* @since 1.5
* @see SAXParser
*/
@:require(java5) extern class LayoutParser extends org.xml.sax.helpers.DefaultHandler
{
	/**
	* Return an instance of the BuilderXML.
	*
	* @param configuration the current configuration of the doclet.
	* @return an instance of the BuilderXML.
	*/
	@:overload public static function getInstance(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : LayoutParser;
	
	/**
	* Parse the XML specifying the layout of the documentation.
	*
	* @return the list of XML elements parsed.
	*/
	@:overload public function parseXML(root : String) : com.sun.tools.doclets.internal.toolkit.builders.XMLNode;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function startElement(namespaceURI : String, sName : String, qName : String, attrs : org.xml.sax.Attributes) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function endElement(namespaceURI : String, sName : String, qName : String) : Void;
	
	
}
