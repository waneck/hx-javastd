package com.sun.xml.internal.dtdparser;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DTDParser
{
	/**
	* This implements parsing of XML 1.0 DTDs.
	* <p/>
	* This conforms to the portion of the XML 1.0 specification related
	* to the external DTD subset.
	* <p/>
	* For multi-language applications (such as web servers using XML
	* processing to create dynamic content), a method supports choosing
	* a locale for parser diagnostics which is both understood by the
	* message recipient and supported by the parser.
	* <p/>
	* This parser produces a stream of parse events.  It supports some
	* features (exposing comments, CDATA sections, and entity references)
	* which are not required to be reported by conformant XML processors.
	*
	* @author David Brownell
	* @author Janet Koenig
	* @author Kohsuke KAWAGUCHI
	* @version $Id: DTDParser.java,v 1.2 2009-04-16 15:25:49 snajper Exp $
	*/
	@:public @:final @:static public static var TYPE_CDATA(default, null) : String;
	
	@:public @:final @:static public static var TYPE_ID(default, null) : String;
	
	@:public @:final @:static public static var TYPE_IDREF(default, null) : String;
	
	@:public @:final @:static public static var TYPE_IDREFS(default, null) : String;
	
	@:public @:final @:static public static var TYPE_ENTITY(default, null) : String;
	
	@:public @:final @:static public static var TYPE_ENTITIES(default, null) : String;
	
	@:public @:final @:static public static var TYPE_NMTOKEN(default, null) : String;
	
	@:public @:final @:static public static var TYPE_NMTOKENS(default, null) : String;
	
	@:public @:final @:static public static var TYPE_NOTATION(default, null) : String;
	
	@:public @:final @:static public static var TYPE_ENUMERATION(default, null) : String;
	
	@:protected @:final private var declaredElements(default, null) : java.util.Set<Dynamic>;
	
	/**
	* Used by applications to request locale for diagnostics.
	*
	* @param l The locale to use, or null to use system defaults
	*          (which may include only message IDs).
	*/
	@:overload @:public public function setLocale(l : java.util.Locale) : Void;
	
	/**
	* Returns the diagnostic locale.
	*/
	@:overload @:public public function getLocale() : java.util.Locale;
	
	/**
	* Chooses a client locale to use for diagnostics, using the first
	* language specified in the list that is supported by this parser.
	* That locale is then set using <a href="#setLocale(java.util.Locale)">
	* setLocale()</a>.  Such a list could be provided by a variety of user
	* preference mechanisms, including the HTTP <em>Accept-Language</em>
	* header field.
	*
	* @param languages Array of language specifiers, ordered with the most
	*                  preferable one at the front.  For example, "en-ca" then "fr-ca",
	*                  followed by "zh_CN".  Both RFC 1766 and Java styles are supported.
	* @return The chosen locale, or null.
	* @see MessageCatalog
	*/
	@:overload @:public public function chooseLocale(languages : java.NativeArray<String>) : java.util.Locale;
	
	/**
	* Lets applications control entity resolution.
	*/
	@:overload @:public public function setEntityResolver(r : org.xml.sax.EntityResolver) : Void;
	
	/**
	* Returns the object used to resolve entities
	*/
	@:overload @:public public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	/**
	* Used by applications to set handling of DTD parsing events.
	*/
	@:overload @:public public function setDtdHandler(handler : com.sun.xml.internal.dtdparser.DTDEventListener) : Void;
	
	/**
	* Returns the handler used to for DTD parsing events.
	*/
	@:overload @:public public function getDtdHandler() : com.sun.xml.internal.dtdparser.DTDEventListener;
	
	/**
	* Parse a DTD.
	*/
	@:overload @:public public function parse(_in : org.xml.sax.InputSource) : Void;
	
	/**
	* Parse a DTD.
	*/
	@:overload @:public public function parse(uri : String) : Void;
	
	@:overload @:public public function getPublicId() : String;
	
	@:overload @:public public function getSystemId() : String;
	
	@:overload @:public public function getLineNumber() : Int;
	
	@:overload @:public public function getColumnNumber() : Int;
	
	
}
@:native('com$sun$xml$internal$dtdparser$DTDParser$NameCache') @:internal extern class DTDParser_NameCache
{
	
}
@:native('com$sun$xml$internal$dtdparser$DTDParser$NameCacheEntry') @:internal extern class DTDParser_NameCacheEntry
{
	
}
@:native('com$sun$xml$internal$dtdparser$DTDParser$Catalog') @:internal extern class DTDParser_Catalog extends com.sun.xml.internal.dtdparser.MessageCatalog
{
	
}
