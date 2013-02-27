package org.xml.sax;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// SAX parser interface.
//// http://www.saxproject.org
//// No warranty; no copyright -- use this as you will.
//// $Id: Parser.java,v 1.2 2004/11/03 22:55:32 jsuttor Exp $
extern interface Parser
{
	/**
	* Allow an application to request a locale for errors and warnings.
	*
	* <p>SAX parsers are not required to provide localisation for errors
	* and warnings; if they cannot support the requested locale,
	* however, they must throw a SAX exception.  Applications may
	* not request a locale change in the middle of a parse.</p>
	*
	* @param locale A Java Locale object.
	* @exception org.xml.sax.SAXException Throws an exception
	*            (using the previous or default locale) if the
	*            requested locale is not supported.
	* @see org.xml.sax.SAXException
	* @see org.xml.sax.SAXParseException
	*/
	@:overload @:abstract public function setLocale(locale : java.util.Locale) : Void;
	
	/**
	* Allow an application to register a custom entity resolver.
	*
	* <p>If the application does not register an entity resolver, the
	* SAX parser will resolve system identifiers and open connections
	* to entities itself (this is the default behaviour implemented in
	* HandlerBase).</p>
	*
	* <p>Applications may register a new or different entity resolver
	* in the middle of a parse, and the SAX parser must begin using
	* the new resolver immediately.</p>
	*
	* @param resolver The object for resolving entities.
	* @see EntityResolver
	* @see HandlerBase
	*/
	@:overload @:abstract public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	/**
	* Allow an application to register a DTD event handler.
	*
	* <p>If the application does not register a DTD handler, all DTD
	* events reported by the SAX parser will be silently
	* ignored (this is the default behaviour implemented by
	* HandlerBase).</p>
	*
	* <p>Applications may register a new or different
	* handler in the middle of a parse, and the SAX parser must
	* begin using the new handler immediately.</p>
	*
	* @param handler The DTD handler.
	* @see DTDHandler
	* @see HandlerBase
	*/
	@:overload @:abstract public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	/**
	* Allow an application to register a document event handler.
	*
	* <p>If the application does not register a document handler, all
	* document events reported by the SAX parser will be silently
	* ignored (this is the default behaviour implemented by
	* HandlerBase).</p>
	*
	* <p>Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.</p>
	*
	* @param handler The document handler.
	* @see DocumentHandler
	* @see HandlerBase
	*/
	@:overload @:abstract public function setDocumentHandler(handler : org.xml.sax.DocumentHandler) : Void;
	
	/**
	* Allow an application to register an error event handler.
	*
	* <p>If the application does not register an error event handler,
	* all error events reported by the SAX parser will be silently
	* ignored, except for fatalError, which will throw a SAXException
	* (this is the default behaviour implemented by HandlerBase).</p>
	*
	* <p>Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.</p>
	*
	* @param handler The error handler.
	* @see ErrorHandler
	* @see SAXException
	* @see HandlerBase
	*/
	@:overload @:abstract public function setErrorHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Parse an XML document.
	*
	* <p>The application can use this method to instruct the SAX parser
	* to begin parsing an XML document from any valid input
	* source (a character stream, a byte stream, or a URI).</p>
	*
	* <p>Applications may not invoke this method while a parse is in
	* progress (they should create a new Parser instead for each
	* additional XML document).  Once a parse is complete, an
	* application may reuse the same Parser object, possibly with a
	* different input source.</p>
	*
	* @param source The input source for the top-level of the
	*        XML document.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @exception java.io.IOException An IO exception from the parser,
	*            possibly from a byte stream or character stream
	*            supplied by the application.
	* @see org.xml.sax.InputSource
	* @see #parse(java.lang.String)
	* @see #setEntityResolver
	* @see #setDTDHandler
	* @see #setDocumentHandler
	* @see #setErrorHandler
	*/
	@:overload @:abstract public function parse(source : org.xml.sax.InputSource) : Void;
	
	/**
	* Parse an XML document from a system identifier (URI).
	*
	* <p>This method is a shortcut for the common case of reading a
	* document from a system identifier.  It is the exact
	* equivalent of the following:</p>
	*
	* <pre>
	* parse(new InputSource(systemId));
	* </pre>
	*
	* <p>If the system identifier is a URL, it must be fully resolved
	* by the application before it is passed to the parser.</p>
	*
	* @param systemId The system identifier (URI).
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @exception java.io.IOException An IO exception from the parser,
	*            possibly from a byte stream or character stream
	*            supplied by the application.
	* @see #parse(org.xml.sax.InputSource)
	*/
	@:overload @:abstract public function parse(systemId : String) : Void;
	
	
}
