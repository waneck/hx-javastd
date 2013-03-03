package com.sun.xml.internal.ws.util.xml;
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
extern class XmlUtil
{
	@:overload @:public @:static public static function getPrefix(s : String) : String;
	
	@:overload @:public @:static public static function getLocalPart(s : String) : String;
	
	@:overload @:public @:static public static function getAttributeOrNull(e : org.w3c.dom.Element, name : String) : String;
	
	@:overload @:public @:static public static function getAttributeNSOrNull(e : org.w3c.dom.Element, name : String, nsURI : String) : String;
	
	@:overload @:public @:static public static function getAttributeNSOrNull(e : org.w3c.dom.Element, name : javax.xml.namespace.QName) : String;
	
	/*    public static boolean matchesTagNS(Element e, String tag, String nsURI) {
	try {
	return e.getLocalName().equals(tag)
	&& e.getNamespaceURI().equals(nsURI);
	} catch (NullPointerException npe) {

	// localname not null since parsing would fail before here
	throw new WSDLParseException(
	"null.namespace.found",
	e.getLocalName());
	}
	}

	public static boolean matchesTagNS(
	Element e,
	javax.xml.namespace.QName name) {
	try {
	return e.getLocalName().equals(name.getLocalPart())
	&& e.getNamespaceURI().equals(name.getNamespaceURI());
	} catch (NullPointerException npe) {

	// localname not null since parsing would fail before here
	throw new WSDLParseException(
	"null.namespace.found",
	e.getLocalName());
	}
	}*/
	@:overload @:public @:static public static function getAllChildren(element : org.w3c.dom.Element) : java.util.Iterator<Dynamic>;
	
	@:overload @:public @:static public static function getAllAttributes(element : org.w3c.dom.Element) : java.util.Iterator<Dynamic>;
	
	@:overload @:public @:static public static function parseTokenList(tokenList : String) : java.util.List<String>;
	
	@:overload @:public @:static public static function getTextForNode(node : org.w3c.dom.Node) : String;
	
	@:overload @:public @:static public static function getUTF8Stream(s : String) : java.io.InputStream;
	
	/**
	* Creates a new identity transformer.
	*/
	@:overload @:public @:static public static function newTransformer() : javax.xml.transform.Transformer;
	
	/**
	* Performs identity transformation.
	*/
	@:overload @:public @:static public static function identityTransform<T : javax.xml.transform.Result>(src : javax.xml.transform.Source, result : T) : T;
	
	/*
	* Gets an EntityResolver using XML catalog
	*/
	@:overload @:public @:static public static function createEntityResolver(catalogUrl : java.net.URL) : org.xml.sax.EntityResolver;
	
	/**
	* Gets a default EntityResolver for catalog at META-INF/jaxws-catalog.xml
	*/
	@:overload @:public @:static public static function createDefaultCatalogResolver() : org.xml.sax.EntityResolver;
	
	/**
	* {@link ErrorHandler} that always treat the error as fatal.
	*/
	@:public @:static @:final public static var DRACONIAN_ERROR_HANDLER(default, null) : org.xml.sax.ErrorHandler;
	
	
}
