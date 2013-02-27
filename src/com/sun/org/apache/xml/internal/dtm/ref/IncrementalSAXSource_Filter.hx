package com.sun.org.apache.xml.internal.dtm.ref;
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
* $Id: IncrementalSAXSource_Filter.java,v 1.2.4.1 2005/09/15 08:15:07 suresh_emailid Exp $
*/
@:internal extern class IncrementalSAXSource_Filter implements com.sun.org.apache.xml.internal.dtm.ref.IncrementalSAXSource implements org.xml.sax.ContentHandler implements org.xml.sax.DTDHandler implements org.xml.sax.ext.LexicalHandler implements org.xml.sax.ErrorHandler implements java.lang.Runnable
{
	@:overload public function new() : Void;
	
	/** Create a IncrementalSAXSource_Filter which is not yet bound to a specific
	* SAX event source.
	* */
	@:overload public function new(co : com.sun.org.apache.xml.internal.dtm.ref.CoroutineManager, controllerCoroutineID : Int) : Void;
	
	@:overload public static function createIncrementalSAXSource(co : com.sun.org.apache.xml.internal.dtm.ref.CoroutineManager, controllerCoroutineID : Int) : com.sun.org.apache.xml.internal.dtm.ref.IncrementalSAXSource;
	
	@:overload public function init(co : com.sun.org.apache.xml.internal.dtm.ref.CoroutineManager, controllerCoroutineID : Int, sourceCoroutineID : Int) : Void;
	
	/** Bind our input streams to an XMLReader.
	*
	* Just a convenience routine; obviously you can explicitly register
	* this as a listener with the same effect.
	* */
	@:overload public function setXMLReader(eventsource : org.xml.sax.XMLReader) : Void;
	
	@:overload public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	@:overload public function setLexicalHandler(handler : org.xml.sax.ext.LexicalHandler) : Void;
	
	@:overload public function setErrHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload public function setReturnFrequency(events : Int) : Void;
	
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	@:overload public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload public function skippedEntity(name : String) : Void;
	
	@:overload public function startDocument() : Void;
	
	@:overload public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function endCDATA() : Void;
	
	@:overload public function endDTD() : Void;
	
	@:overload public function endEntity(name : String) : Void;
	
	@:overload public function startCDATA() : Void;
	
	@:overload public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload public function startEntity(name : String) : Void;
	
	@:overload public function notationDecl(a : String, b : String, c : String) : Void;
	
	@:overload public function unparsedEntityDecl(a : String, b : String, c : String, d : String) : Void;
	
	@:overload public function error(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload public function fatalError(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload public function warning(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload public function getSourceCoroutineID() : Int;
	
	@:overload public function getControllerCoroutineID() : Int;
	
	/** @return the CoroutineManager this CoroutineFilter object is bound to.
	* If you're using the do...() methods, applications should only
	* need to talk to the CoroutineManager once, to obtain the
	* application's Coroutine ID.
	* */
	@:overload public function getCoroutineManager() : com.sun.org.apache.xml.internal.dtm.ref.CoroutineManager;
	
	/** <p>In the SAX delegation code, I've inlined the count-down in
	* the hope of encouraging compilers to deliver better
	* performance. However, if we subclass (eg to directly connect the
	* output to a DTM builder), that would require calling super in
	* order to run that logic... which seems inelegant.  Hence this
	* routine for the convenience of subclasses: every [frequency]
	* invocations, issue a co_yield.</p>
	*
	* @param moreExepected Should always be true unless this is being called
	* at the end of endDocument() handling.
	* */
	@:overload private function count_and_yield(moreExpected : Bool) : Void;
	
	/** Launch a thread that will run an XMLReader's parse() operation within
	*  a thread, feeding events to this IncrementalSAXSource_Filter. Mostly a convenience
	*  routine, but has the advantage that -- since we invoked parse() --
	*  we can halt parsing quickly via a StopException rather than waiting
	*  for the SAX stream to end by itself.
	*
	* @throws SAXException is parse thread is already in progress
	* or parsing can not be started.
	* */
	@:overload public function startParse(source : org.xml.sax.InputSource) : Void;
	
	/* Thread logic to support startParseThread()
	*/
	@:overload public function run() : Void;
	
	/** deliverMoreNodes() is a simple API which tells the coroutine
	* parser that we need more nodes.  This is intended to be called
	* from one of our partner routines, and serves to encapsulate the
	* details of how incremental parsing has been achieved.
	*
	* @param parsemore If true, tells the incremental filter to generate
	* another chunk of output. If false, tells the filter that we're
	* satisfied and it can terminate parsing of this document.
	*
	* @return Boolean.TRUE if there may be more events available by invoking
	* deliverMoreNodes() again. Boolean.FALSE if parsing has run to completion (or been
	* terminated by deliverMoreNodes(false). Or an exception object if something
	* malfunctioned. %REVIEW% We _could_ actually throw the exception, but
	* that would require runinng deliverMoreNodes() in a try/catch... and for many
	* applications, exception will be simply be treated as "not TRUE" in
	* any case.
	* */
	@:overload public function deliverMoreNodes(parsemore : Bool) : Dynamic;
	
	
}
/** Used to quickly terminate parse when running under a
startParse() thread. Only its type is important. */
@:native('com$sun$org$apache$xml$internal$dtm$ref$IncrementalSAXSource_Filter$StopException') @:internal extern class IncrementalSAXSource_Filter_StopException extends java.lang.RuntimeException
{
	
}
