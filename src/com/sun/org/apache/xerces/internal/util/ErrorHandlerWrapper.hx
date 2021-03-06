package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class ErrorHandlerWrapper implements com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler
{
	/** The SAX error handler. */
	@:protected private var fErrorHandler : org.xml.sax.ErrorHandler;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/** Wraps the specified SAX error handler. */
	@:overload @:public public function new(errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/** Sets the SAX error handler. */
	@:overload @:public public function setErrorHandler(errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/** Returns the SAX error handler. */
	@:overload @:public public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* Reports a warning. Warnings are non-fatal and can be safely ignored
	* by most applications.
	*
	* @param domain    The domain of the warning. The domain can be any
	*                  string but is suggested to be a valid URI. The
	*                  domain can be used to conveniently specify a web
	*                  site location of the relevent specification or
	*                  document pertaining to this warning.
	* @param key       The warning key. This key can be any string and
	*                  is implementation dependent.
	* @param exception Exception.
	*
	* @throws XNIException Thrown to signal that the parser should stop
	*                      parsing the document.
	*/
	@:overload @:public public function warning(domain : String, key : String, exception : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException) : Void;
	
	/**
	* Reports an error. Errors are non-fatal and usually signify that the
	* document is invalid with respect to its grammar(s).
	*
	* @param domain    The domain of the error. The domain can be any
	*                  string but is suggested to be a valid URI. The
	*                  domain can be used to conveniently specify a web
	*                  site location of the relevent specification or
	*                  document pertaining to this error.
	* @param key       The error key. This key can be any string and
	*                  is implementation dependent.
	* @param exception Exception.
	*
	* @throws XNIException Thrown to signal that the parser should stop
	*                      parsing the document.
	*/
	@:overload @:public public function error(domain : String, key : String, exception : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException) : Void;
	
	/**
	* Report a fatal error. Fatal errors usually occur when the document
	* is not well-formed and signifies that the parser cannot continue
	* normal operation.
	* <p>
	* <strong>Note:</strong> The error handler should <em>always</em>
	* throw an <code>XNIException</code> from this method. This exception
	* can either be the same exception that is passed as a parameter to
	* the method or a new XNI exception object. If the registered error
	* handler fails to throw an exception, the continuing operation of
	* the parser is undetermined.
	*
	* @param domain    The domain of the fatal error. The domain can be
	*                  any string but is suggested to be a valid URI. The
	*                  domain can be used to conveniently specify a web
	*                  site location of the relevent specification or
	*                  document pertaining to this fatal error.
	* @param key       The fatal error key. This key can be any string
	*                  and is implementation dependent.
	* @param exception Exception.
	*
	* @throws XNIException Thrown to signal that the parser should stop
	*                      parsing the document.
	*/
	@:overload @:public public function fatalError(domain : String, key : String, exception : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException) : Void;
	
	/** Creates a SAXParseException from an XMLParseException. */
	@:overload @:protected @:static private static function createSAXParseException(exception : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException) : org.xml.sax.SAXParseException;
	
	/** Creates an XMLParseException from a SAXParseException. */
	@:overload @:protected @:static private static function createXMLParseException(exception : org.xml.sax.SAXParseException) : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException;
	
	/** Creates an XNIException from a SAXException.
	NOTE:  care should be taken *not* to call this with a SAXParseException; this will
	lose information!!! */
	@:overload @:protected @:static private static function createXNIException(exception : org.xml.sax.SAXException) : com.sun.org.apache.xerces.internal.xni.XNIException;
	
	
}
