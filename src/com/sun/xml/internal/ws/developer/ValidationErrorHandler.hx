package com.sun.xml.internal.ws.developer;
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
extern class ValidationErrorHandler implements org.xml.sax.ErrorHandler
{
	/**
	* An {@link ErrorHandler} to receive errors encountered during the
	* {@link Validator#validate} method invocation. Specify
	* a custom handler in {@link SchemaValidation}, {@link SchemaValidationFeature}
	* to customize the error handling process during validaiton.
	*
	* @see SchemaValidation
	* @author Jitendra Kotamraju
	*/
	private var packet : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* Use it to communicate validation errors with the application.
	*
	* For e.g validation exceptions can be stored in {@link Packet#invocationProperties}
	* during request processing and can be accessed in the endpoint
	* via {@link MessageContext}
	*
	* @param packet for request or response message
	*/
	@:overload public function setPacket(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* Receive notification of a recoverable error.
	*
	* <p>This corresponds to the definition of "error" in section 1.2
	* of the W3C XML 1.0 Recommendation.  For example, a validating
	* parser would use this callback to report the violation of a
	* validity constraint.  The default behaviour is to take no
	* action.</p>
	*
	* <p>The SAX parser must continue to provide normal parsing
	* events after invoking this method: it should still be possible
	* for the application to process the document through to the end.
	* If the application cannot do so, then the parser should report
	* a fatal error even if the XML recommendation does not require
	* it to do so.</p>
	*
	* <p>Filters may use this method to report other, non-XML errors
	* as well.</p>
	*
	* @param exception The error information encapsulated in a
	*                  SAX parse exception.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.SAXParseException
	*/
	@:overload @:abstract public function error(exception : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Receive notification of a non-recoverable error.
	*
	* <p><strong>There is an apparent contradiction between the
	* documentation for this method and the documentation for {@link
	* org.xml.sax.ContentHandler#endDocument}.  Until this ambiguity
	* is resolved in a future major release, clients should make no
	* assumptions about whether endDocument() will or will not be
	* invoked when the parser has reported a fatalError() or thrown
	* an exception.</strong></p>
	*
	* <p>This corresponds to the definition of "fatal error" in
	* section 1.2 of the W3C XML 1.0 Recommendation.  For example, a
	* parser would use this callback to report the violation of a
	* well-formedness constraint.</p>
	*
	* <p>The application must assume that the document is unusable
	* after the parser has invoked this method, and should continue
	* (if at all) only for the sake of collecting additional error
	* messages: in fact, SAX parsers are free to stop reporting any
	* other events once this method has been invoked.</p>
	*
	* @param exception The error information encapsulated in a
	*                  SAX parse exception.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.SAXParseException
	*/
	@:overload @:abstract public function fatalError(exception : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Receive notification of a warning.
	*
	* <p>SAX parsers will use this method to report conditions that
	* are not errors or fatal errors as defined by the XML
	* recommendation.  The default behaviour is to take no
	* action.</p>
	*
	* <p>The SAX parser must continue to provide normal parsing events
	* after invoking this method: it should still be possible for the
	* application to process the document through to the end.</p>
	*
	* <p>Filters may use this method to report other, non-XML warnings
	* as well.</p>
	*
	* @param exception The warning information encapsulated in a
	*                  SAX parse exception.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.SAXParseException
	*/
	@:overload @:abstract public function warning(exception : org.xml.sax.SAXParseException) : Void;
	
	
}
