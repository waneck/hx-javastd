package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2004 The Apache Software Foundation.
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
* $Id: ListingErrorHandler.java,v 1.2.4.1 2005/09/15 08:15:46 suresh_emailid Exp $
*/
extern class ListingErrorHandler implements org.xml.sax.ErrorHandler implements javax.xml.transform.ErrorListener
{
	/**
	* Sample implementation of similar SAX ErrorHandler and JAXP ErrorListener.
	*
	* <p>This implementation is suitable for various use cases, and
	* provides some basic configuration API's as well to control
	* when we re-throw errors, etc.</p>
	*
	* @author shane_curcuru@us.ibm.com
	* @xsl.usage general
	*/
	private var m_pw : java.io.PrintWriter;
	
	/**
	* Constructor ListingErrorHandler; user-supplied PrintWriter.
	*/
	@:overload public function new(pw : java.io.PrintWriter) : Void;
	
	/**
	* Constructor ListingErrorHandler; uses System.err.
	*/
	@:overload public function new() : Void;
	
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
	* <p>Filters may use this method to report other, non-XML warnings
	* as well.</p>
	*
	* @param exception The warning information encapsulated in a
	*                  SAX parse exception.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	* wrapping another exception; only if setThrowOnWarning is true.
	* @see org.xml.sax.SAXParseException
	*/
	@:overload public function warning(exception : org.xml.sax.SAXParseException) : Void;
	
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
	* <p>Filters may use this method to report other, non-XML errors
	* as well.</p>
	*
	* @param exception The error information encapsulated in a
	*                  SAX parse exception.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	* wrapping another exception; only if setThrowOnErroris true.
	* @see org.xml.sax.SAXParseException
	*/
	@:overload public function error(exception : org.xml.sax.SAXParseException) : Void;
	
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
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	* wrapping another exception; only if setThrowOnFatalError is true.
	* @see org.xml.sax.SAXParseException
	*/
	@:overload public function fatalError(exception : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Receive notification of a warning.
	*
	* <p>{@link javax.xml.transform.Transformer} can use this method to report
	* conditions that are not errors or fatal errors.  The default behaviour
	* is to take no action.</p>
	*
	* <p>After invoking this method, the Transformer must continue with
	* the transformation. It should still be possible for the
	* application to process the document through to the end.</p>
	*
	* @param exception The warning information encapsulated in a
	*                  transformer exception.
	*
	* @throws javax.xml.transform.TransformerException  only if
	* setThrowOnWarning is true.
	*
	* @see javax.xml.transform.TransformerException
	*/
	@:overload public function warning(exception : javax.xml.transform.TransformerException) : Void;
	
	/**
	* Receive notification of a recoverable error.
	*
	* <p>The transformer must continue to try and provide normal transformation
	* after invoking this method.  It should still be possible for the
	* application to process the document through to the end if no other errors
	* are encountered.</p>
	*
	* @param exception The error information encapsulated in a
	*                  transformer exception.
	*
	* @throws javax.xml.transform.TransformerException  only if
	* setThrowOnError is true.
	*
	* @see javax.xml.transform.TransformerException
	*/
	@:overload public function error(exception : javax.xml.transform.TransformerException) : Void;
	
	/**
	* Receive notification of a non-recoverable error.
	*
	* <p>The transformer must continue to try and provide normal transformation
	* after invoking this method.  It should still be possible for the
	* application to process the document through to the end if no other errors
	* are encountered, but there is no guarantee that the output will be
	* useable.</p>
	*
	* @param exception The error information encapsulated in a
	*                  transformer exception.
	*
	* @throws javax.xml.transform.TransformerException  only if
	* setThrowOnError is true.
	*
	* @see javax.xml.transform.TransformerException
	*/
	@:overload public function fatalError(exception : javax.xml.transform.TransformerException) : Void;
	
	/**
	* Print out location information about the exception.
	*
	* Cribbed from DefaultErrorHandler.printLocation()
	* @param pw PrintWriter to send output to
	* @param exception TransformerException or SAXParseException
	* to log information about
	*/
	@:overload public static function logExceptionLocation(pw : java.io.PrintWriter, exception : java.lang.Throwable) : Void;
	
	/**
	* Print out the specific source line that caused the exception,
	* if possible to load it.
	*
	* @param pw PrintWriter to send output to
	* @param locator Xalan wrapper for either a JAXP or a SAX
	* source location object
	*/
	@:overload public static function logSourceLine(pw : java.io.PrintWriter, locator : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* Return the specific source line that caused the exception,
	* if possible to load it; allow exceptions to be thrown.
	*
	* @author shane_curcuru@us.ibm.com
	*/
	@:overload private static function getSourceLine(sourceUrl : String, lineNum : Int) : String;
	
	/**
	* User-settable behavior: when to re-throw exceptions.
	*
	* <p>This allows per-instance configuration of
	* ListingErrorHandlers.  You can ask us to either throw
	* an exception when we're called for various warning /
	* error / fatalErrors, or simply log them and continue.</p>
	*
	* @param b if we should throw an exception on warnings
	*/
	@:overload public function setThrowOnWarning(b : Bool) : Void;
	
	/**
	* User-settable behavior: when to re-throw exceptions.
	*
	* @return if we throw an exception on warnings
	*/
	@:overload public function getThrowOnWarning() : Bool;
	
	/** If we should throw exception on warnings; default:false.  */
	private var throwOnWarning : Bool;
	
	/**
	* User-settable behavior: when to re-throw exceptions.
	*
	* <p>This allows per-instance configuration of
	* ListingErrorHandlers.  You can ask us to either throw
	* an exception when we're called for various warning /
	* error / fatalErrors, or simply log them and continue.</p>
	*
	* <p>Note that the behavior of many parsers/transformers
	* after an error is not necessarily defined!</p>
	*
	* @param b if we should throw an exception on errors
	*/
	@:overload public function setThrowOnError(b : Bool) : Void;
	
	/**
	* User-settable behavior: when to re-throw exceptions.
	*
	* @return if we throw an exception on errors
	*/
	@:overload public function getThrowOnError() : Bool;
	
	/** If we should throw exception on errors; default:true.  */
	private var throwOnError : Bool;
	
	/**
	* User-settable behavior: when to re-throw exceptions.
	*
	* <p>This allows per-instance configuration of
	* ListingErrorHandlers.  You can ask us to either throw
	* an exception when we're called for various warning /
	* error / fatalErrors, or simply log them and continue.</p>
	*
	* <p>Note that the behavior of many parsers/transformers
	* after a fatalError is not necessarily defined, most
	* products will probably barf if you continue.</p>
	*
	* @param b if we should throw an exception on fatalErrors
	*/
	@:overload public function setThrowOnFatalError(b : Bool) : Void;
	
	/**
	* User-settable behavior: when to re-throw exceptions.
	*
	* @return if we throw an exception on fatalErrors
	*/
	@:overload public function getThrowOnFatalError() : Bool;
	
	/** If we should throw exception on fatalErrors; default:true.  */
	private var throwOnFatalError : Bool;
	
	
}
