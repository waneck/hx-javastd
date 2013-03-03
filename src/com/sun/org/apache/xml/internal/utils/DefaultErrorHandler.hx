package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: DefaultErrorHandler.java,v 1.2.4.1 2005/09/15 08:15:43 suresh_emailid Exp $
*/
extern class DefaultErrorHandler implements org.xml.sax.ErrorHandler implements javax.xml.transform.ErrorListener
{
	/**
	* Constructor DefaultErrorHandler
	*/
	@:overload @:public public function new(pw : java.io.PrintWriter) : Void;
	
	/**
	* Constructor DefaultErrorHandler
	*/
	@:overload @:public public function new(pw : java.io.PrintStream) : Void;
	
	/**
	* Constructor DefaultErrorHandler
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructor DefaultErrorHandler
	*/
	@:overload @:public public function new(throwExceptionOnError : Bool) : Void;
	
	/**
	* Receive notification of a warning.
	*
	* <p>SAX parsers will use this method to report conditions that
	* are not errors or fatal errors as defined by the XML 1.0
	* recommendation.  The default behaviour is to take no action.</p>
	*
	* <p>The SAX parser must continue to provide normal parsing events
	* after invoking this method: it should still be possible for the
	* application to process the document through to the end.</p>
	*
	* @param exception The warning information encapsulated in a
	*                  SAX parse exception.
	* @throws SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*/
	@:overload @:public public function warning(exception : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Receive notification of a recoverable error.
	*
	* <p>This corresponds to the definition of "error" in section 1.2
	* of the W3C XML 1.0 Recommendation.  For example, a validating
	* parser would use this callback to report the violation of a
	* validity constraint.  The default behaviour is to take no
	* action.</p>
	*
	* <p>The SAX parser must continue to provide normal parsing events
	* after invoking this method: it should still be possible for the
	* application to process the document through to the end.  If the
	* application cannot do so, then the parser should report a fatal
	* error even if the XML 1.0 recommendation does not require it to
	* do so.</p>
	*
	* @param exception The error information encapsulated in a
	*                  SAX parse exception.
	* @throws SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*/
	@:overload @:public public function error(exception : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Receive notification of a non-recoverable error.
	*
	* <p>This corresponds to the definition of "fatal error" in
	* section 1.2 of the W3C XML 1.0 Recommendation.  For example, a
	* parser would use this callback to report the violation of a
	* well-formedness constraint.</p>
	*
	* <p>The application must assume that the document is unusable
	* after the parser has invoked this method, and should continue
	* (if at all) only for the sake of collecting addition error
	* messages: in fact, SAX parsers are free to stop reporting any
	* other events once this method has been invoked.</p>
	*
	* @param exception The error information encapsulated in a
	*                  SAX parse exception.
	* @throws SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*/
	@:overload @:public public function fatalError(exception : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Receive notification of a warning.
	*
	* <p>SAX parsers will use this method to report conditions that
	* are not errors or fatal errors as defined by the XML 1.0
	* recommendation.  The default behaviour is to take no action.</p>
	*
	* <p>The SAX parser must continue to provide normal parsing events
	* after invoking this method: it should still be possible for the
	* application to process the document through to the end.</p>
	*
	* @param exception The warning information encapsulated in a
	*                  SAX parse exception.
	* @throws javax.xml.transform.TransformerException Any SAX exception, possibly
	*            wrapping another exception.
	* @see javax.xml.transform.TransformerException
	*/
	@:overload @:public public function warning(exception : javax.xml.transform.TransformerException) : Void;
	
	/**
	* Receive notification of a recoverable error.
	*
	* <p>This corresponds to the definition of "error" in section 1.2
	* of the W3C XML 1.0 Recommendation.  For example, a validating
	* parser would use this callback to report the violation of a
	* validity constraint.  The default behaviour is to take no
	* action.</p>
	*
	* <p>The SAX parser must continue to provide normal parsing events
	* after invoking this method: it should still be possible for the
	* application to process the document through to the end.  If the
	* application cannot do so, then the parser should report a fatal
	* error even if the XML 1.0 recommendation does not require it to
	* do so.</p>
	*
	* @param exception The error information encapsulated in a
	*                  SAX parse exception.
	* @throws javax.xml.transform.TransformerException Any SAX exception, possibly
	*            wrapping another exception.
	* @see javax.xml.transform.TransformerException
	*/
	@:overload @:public public function error(exception : javax.xml.transform.TransformerException) : Void;
	
	/**
	* Receive notification of a non-recoverable error.
	*
	* <p>This corresponds to the definition of "fatal error" in
	* section 1.2 of the W3C XML 1.0 Recommendation.  For example, a
	* parser would use this callback to report the violation of a
	* well-formedness constraint.</p>
	*
	* <p>The application must assume that the document is unusable
	* after the parser has invoked this method, and should continue
	* (if at all) only for the sake of collecting addition error
	* messages: in fact, SAX parsers are free to stop reporting any
	* other events once this method has been invoked.</p>
	*
	* @param exception The error information encapsulated in a
	*                  SAX parse exception.
	* @throws javax.xml.transform.TransformerException Any SAX exception, possibly
	*            wrapping another exception.
	* @see javax.xml.transform.TransformerException
	*/
	@:overload @:public public function fatalError(exception : javax.xml.transform.TransformerException) : Void;
	
	@:overload @:public @:static public static function ensureLocationSet(exception : javax.xml.transform.TransformerException) : Void;
	
	@:overload @:public @:static public static function printLocation(pw : java.io.PrintStream, exception : javax.xml.transform.TransformerException) : Void;
	
	@:overload @:public @:static public static function printLocation(pw : java.io.PrintStream, exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public @:static public static function printLocation(pw : java.io.PrintWriter, exception : java.lang.Throwable) : Void;
	
	
}
