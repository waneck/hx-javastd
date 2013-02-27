package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002, 2004 The Apache Software Foundation.
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
extern class DOMErrorHandlerWrapper implements com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler implements org.w3c.dom.DOMErrorHandler
{
	/**
	* This class handles DOM errors .
	*
	* @see DOMErrorHandler
	*
	* @author Gopal Sharma, SUN Microsystems Inc.
	*/
	private var fDomErrorHandler : org.w3c.dom.DOMErrorHandler;
	
	private var fOut : java.io.PrintWriter;
	
	public var fCurrentNode : org.w3c.dom.Node;
	
	/** Error code for comparisons. **/
	private var fErrorCode(default, null) : com.sun.org.apache.xerces.internal.util.XMLErrorCode;
	
	private var fDOMError(default, null) : com.sun.org.apache.xerces.internal.dom.DOMErrorImpl;
	
	@:overload public function new() : Void;
	
	@:overload public function new(domErrorHandler : org.w3c.dom.DOMErrorHandler) : Void;
	
	/** Sets the DOM error handler. */
	@:overload public function setErrorHandler(errorHandler : org.w3c.dom.DOMErrorHandler) : Void;
	
	@:overload public function getErrorHandler() : org.w3c.dom.DOMErrorHandler;
	
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
	@:overload public function warning(domain : String, key : String, exception : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException) : Void;
	
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
	@:overload public function error(domain : String, key : String, exception : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException) : Void;
	
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
	@:overload public function fatalError(domain : String, key : String, exception : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException) : Void;
	
	@:overload public function handleError(error : org.w3c.dom.DOMError) : Bool;
	
	
}
/**
* A convenience class for converting between internal
* error codes and DOM error types.
*/
@:native('com$sun$org$apache$xerces$internal$util$DOMErrorHandlerWrapper$DOMErrorTypeMap') @:internal extern class DOMErrorHandlerWrapper_DOMErrorTypeMap
{
	@:overload public static function getDOMErrorType(error : com.sun.org.apache.xerces.internal.util.XMLErrorCode) : String;
	
	
}
