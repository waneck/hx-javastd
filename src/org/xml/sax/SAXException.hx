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
//// $Id: SAXException.java,v 1.3 2004/11/03 22:55:32 jsuttor Exp $
/**
* Encapsulate a general SAX error or warning.
*
* <blockquote>
* <em>This module, both source code and documentation, is in the
* Public Domain, and comes with <strong>NO WARRANTY</strong>.</em>
* See <a href='http://www.saxproject.org'>http://www.saxproject.org</a>
* for further information.
* </blockquote>
*
* <p>This class can contain basic error or warning information from
* either the XML parser or the application: a parser writer or
* application writer can subclass it to provide additional
* functionality.  SAX handlers may throw this exception or
* any exception subclassed from it.</p>
*
* <p>If the application needs to pass through other types of
* exceptions, it must wrap those exceptions in a SAXException
* or an exception derived from a SAXException.</p>
*
* <p>If the parser or application needs to include information about a
* specific location in an XML document, it should use the
* {@link org.xml.sax.SAXParseException SAXParseException} subclass.</p>
*
* @since SAX 1.0
* @author David Megginson
* @version 2.0.1 (sax2r2)
* @see org.xml.sax.SAXParseException
*/
@:require(java0) extern class SAXException extends java.lang.Exception
{
	/**
	* Create a new SAXException.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create a new SAXException.
	*
	* @param message The error or warning message.
	*/
	@:overload @:public public function new(message : String) : Void;
	
	/**
	* Create a new SAXException wrapping an existing exception.
	*
	* <p>The existing exception will be embedded in the new
	* one, and its message will become the default message for
	* the SAXException.</p>
	*
	* @param e The exception to be wrapped in a SAXException.
	*/
	@:overload @:public public function new(e : java.lang.Exception) : Void;
	
	/**
	* Create a new SAXException from an existing exception.
	*
	* <p>The existing exception will be embedded in the new
	* one, but the new exception will have its own message.</p>
	*
	* @param message The detail message.
	* @param e The exception to be wrapped in a SAXException.
	*/
	@:overload @:public public function new(message : String, e : java.lang.Exception) : Void;
	
	/**
	* Return a detail message for this exception.
	*
	* <p>If there is an embedded exception, and if the SAXException
	* has no detail message of its own, this method will return
	* the detail message from the embedded exception.</p>
	*
	* @return The error or warning message.
	*/
	@:overload @:public override public function getMessage() : String;
	
	/**
	* Return the embedded exception, if any.
	*
	* @return The embedded exception, or null if there is none.
	*/
	@:overload @:public public function getException() : java.lang.Exception;
	
	/**
	* Return the cause of the exception
	*
	* @return Return the cause of the exception
	*/
	@:overload @:public override public function getCause() : java.lang.Throwable;
	
	/**
	* Override toString to pick up any embedded exception.
	*
	* @return A string representation of this exception.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
