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
//// SAX exception class.
//// http://www.saxproject.org
//// No warranty; no copyright -- use this as you will.
//// $Id: SAXParseException.java,v 1.2 2004/11/03 22:55:32 jsuttor Exp $
/**
* Encapsulate an XML parse error or warning.
*
* <blockquote>
* <em>This module, both source code and documentation, is in the
* Public Domain, and comes with <strong>NO WARRANTY</strong>.</em>
* See <a href='http://www.saxproject.org'>http://www.saxproject.org</a>
* for further information.
* </blockquote>
*
* <p>This exception may include information for locating the error
* in the original XML document, as if it came from a {@link Locator}
* object.  Note that although the application
* will receive a SAXParseException as the argument to the handlers
* in the {@link org.xml.sax.ErrorHandler ErrorHandler} interface,
* the application is not actually required to throw the exception;
* instead, it can simply read the information in it and take a
* different action.</p>
*
* <p>Since this exception is a subclass of {@link org.xml.sax.SAXException
* SAXException}, it inherits the ability to wrap another exception.</p>
*
* @since SAX 1.0
* @author David Megginson
* @version 2.0.1 (sax2r2)
* @see org.xml.sax.SAXException
* @see org.xml.sax.Locator
* @see org.xml.sax.ErrorHandler
*/
@:require(java0) extern class SAXParseException extends org.xml.sax.SAXException
{
	/**
	* Create a new SAXParseException from a message and a Locator.
	*
	* <p>This constructor is especially useful when an application is
	* creating its own exception from within a {@link org.xml.sax.ContentHandler
	* ContentHandler} callback.</p>
	*
	* @param message The error or warning message.
	* @param locator The locator object for the error or warning (may be
	*        null).
	* @see org.xml.sax.Locator
	*/
	@:overload @:public public function new(message : String, locator : org.xml.sax.Locator) : Void;
	
	/**
	* Wrap an existing exception in a SAXParseException.
	*
	* <p>This constructor is especially useful when an application is
	* creating its own exception from within a {@link org.xml.sax.ContentHandler
	* ContentHandler} callback, and needs to wrap an existing exception that is not a
	* subclass of {@link org.xml.sax.SAXException SAXException}.</p>
	*
	* @param message The error or warning message, or null to
	*                use the message from the embedded exception.
	* @param locator The locator object for the error or warning (may be
	*        null).
	* @param e Any exception.
	* @see org.xml.sax.Locator
	*/
	@:overload @:public public function new(message : String, locator : org.xml.sax.Locator, e : java.lang.Exception) : Void;
	
	/**
	* Create a new SAXParseException.
	*
	* <p>This constructor is most useful for parser writers.</p>
	*
	* <p>All parameters except the message are as if
	* they were provided by a {@link Locator}.  For example, if the
	* system identifier is a URL (including relative filename), the
	* caller must resolve it fully before creating the exception.</p>
	*
	*
	* @param message The error or warning message.
	* @param publicId The public identifier of the entity that generated
	*                 the error or warning.
	* @param systemId The system identifier of the entity that generated
	*                 the error or warning.
	* @param lineNumber The line number of the end of the text that
	*                   caused the error or warning.
	* @param columnNumber The column number of the end of the text that
	*                     cause the error or warning.
	*/
	@:overload @:public public function new(message : String, publicId : String, systemId : String, lineNumber : Int, columnNumber : Int) : Void;
	
	/**
	* Create a new SAXParseException with an embedded exception.
	*
	* <p>This constructor is most useful for parser writers who
	* need to wrap an exception that is not a subclass of
	* {@link org.xml.sax.SAXException SAXException}.</p>
	*
	* <p>All parameters except the message and exception are as if
	* they were provided by a {@link Locator}.  For example, if the
	* system identifier is a URL (including relative filename), the
	* caller must resolve it fully before creating the exception.</p>
	*
	* @param message The error or warning message, or null to use
	*                the message from the embedded exception.
	* @param publicId The public identifier of the entity that generated
	*                 the error or warning.
	* @param systemId The system identifier of the entity that generated
	*                 the error or warning.
	* @param lineNumber The line number of the end of the text that
	*                   caused the error or warning.
	* @param columnNumber The column number of the end of the text that
	*                     cause the error or warning.
	* @param e Another exception to embed in this one.
	*/
	@:overload @:public public function new(message : String, publicId : String, systemId : String, lineNumber : Int, columnNumber : Int, e : java.lang.Exception) : Void;
	
	/**
	* Get the public identifier of the entity where the exception occurred.
	*
	* @return A string containing the public identifier, or null
	*         if none is available.
	* @see org.xml.sax.Locator#getPublicId
	*/
	@:overload @:public public function getPublicId() : String;
	
	/**
	* Get the system identifier of the entity where the exception occurred.
	*
	* <p>If the system identifier is a URL, it will have been resolved
	* fully.</p>
	*
	* @return A string containing the system identifier, or null
	*         if none is available.
	* @see org.xml.sax.Locator#getSystemId
	*/
	@:overload @:public public function getSystemId() : String;
	
	/**
	* The line number of the end of the text where the exception occurred.
	*
	* <p>The first line is line 1.</p>
	*
	* @return An integer representing the line number, or -1
	*         if none is available.
	* @see org.xml.sax.Locator#getLineNumber
	*/
	@:overload @:public public function getLineNumber() : Int;
	
	/**
	* The column number of the end of the text where the exception occurred.
	*
	* <p>The first column in a line is position 1.</p>
	*
	* @return An integer representing the column number, or -1
	*         if none is available.
	* @see org.xml.sax.Locator#getColumnNumber
	*/
	@:overload @:public public function getColumnNumber() : Int;
	
	/**
	* Override toString to provide more detailed error message.
	*
	* @return A string representation of this exception.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
