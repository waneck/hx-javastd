package com.sun.xml.internal.xsom.parser;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JAXPParser implements com.sun.xml.internal.xsom.parser.XMLParser
{
	@:overload @:public public function new(factory : javax.xml.parsers.SAXParserFactory) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function parse(source : org.xml.sax.InputSource, handler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler, entityResolver : org.xml.sax.EntityResolver) : Void;
	
	
}
/**
* XMLReader with improved error message for entity resolution failure.
*
* TODO: this class is completely stand-alone, so it shouldn't be
* an inner class.
*/
@:native('com$sun$xml$internal$xsom$parser$JAXPParser$XMLReaderEx') @:internal extern class JAXPParser_XMLReaderEx extends org.xml.sax.helpers.XMLFilterImpl
{
	/**
	* Resolves entities and reports user-friendly error messages.
	*
	* <p>
	* Some XML parser (at least Xerces) does not report much information
	* when it fails to resolve an entity, which is often quite
	* frustrating. For example, if you are behind a firewall and the
	* schema contains a reference to www.w3.org, and there is no
	* entity resolver, the parser will just throw an IOException
	* that doesn't contain any information about where that reference
	* occurs nor what it is accessing.
	*
	* <p>
	* By implementing an EntityResolver and resolving the reference
	* by ourselves, we can report an error message with all the
	* necessary information to fix the problem.
	*
	* <p>
	* Note that we still need to the client-specified entity resolver
	* to let the application handle entity resolution. Here we just catch
	* an IOException and add more information.
	*/
	@:overload @:public override public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	@:overload @:public override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	
}
