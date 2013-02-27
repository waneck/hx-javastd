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
* $Id: CoroutineParser.java,v 1.2.4.1 2005/09/15 08:14:59 suresh_emailid Exp $
*/
extern interface CoroutineParser
{
	/** @return the coroutine ID number for this CoroutineParser object.
	* Note that this isn't useful unless you know which CoroutineManager
	* you're talking to. Also note that the do...() methods encapsulate
	* the common transactions with the CoroutineParser, so you shouldn't
	* need this in most cases.
	* */
	@:overload public function getParserCoroutineID() : Int;
	
	/** @return the CoroutineManager for this CoroutineParser object.
	* If you're using the do...() methods, applications should only
	* need to talk to the CoroutineManager once, to obtain the
	* application's Coroutine ID.
	* */
	@:overload public function getCoroutineManager() : com.sun.org.apache.xml.internal.dtm.ref.CoroutineManager;
	
	/** Register a SAX-style content handler for us to output to */
	@:overload public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	/**  Register a SAX-style lexical handler for us to output to
	*  Not all parsers support this...
	*
	* %REVIEW% Not called setLexicalHandler because Xalan uses that name
	* internally, which causes subclassing nuisances.
	*/
	@:overload public function setLexHandler(handler : org.xml.sax.ext.LexicalHandler) : Void;
	
	/** doParse() is a simple API which tells the coroutine parser
	* to begin reading from a file.  This is intended to be called from one
	* of our partner coroutines, and serves both to encapsulate the
	* communication protocol and to avoid having to explicitly use the
	* CoroutineParser's coroutine ID number.
	*
	* %REVIEW% Can/should this unify with doMore? (if URI hasn't changed,
	* parse more from same file, else end and restart parsing...?
	*
	* @param source The InputSource to parse from.
	* @param appCoroutine The coroutine ID number of the coroutine invoking
	* this method, so it can be resumed after the parser has responded to the
	* request.
	* @return Boolean.TRUE if the CoroutineParser believes more data may be available
	* for further parsing. Boolean.FALSE if parsing ran to completion.
	* Exception if the parser objected for some reason.
	* */
	@:overload public function doParse(source : org.xml.sax.InputSource, appCoroutine : Int) : Dynamic;
	
	/** doMore() is a simple API which tells the coroutine parser
	* that we need more nodes.  This is intended to be called from one
	* of our partner coroutines, and serves both to encapsulate the
	* communication protocol and to avoid having to explicitly use the
	* CoroutineParser's coroutine ID number.
	*
	* @param parsemore If true, tells the incremental parser to generate
	* another chunk of output. If false, tells the parser that we're
	* satisfied and it can terminate parsing of this document.
	* @param appCoroutine The coroutine ID number of the coroutine invoking
	* this method, so it can be resumed after the parser has responded to the
	* request.
	* @return Boolean.TRUE if the CoroutineParser believes more data may be available
	* for further parsing. Boolean.FALSE if parsing ran to completion.
	* Exception if the parser objected for some reason.
	* */
	@:overload public function doMore(parsemore : Bool, appCoroutine : Int) : Dynamic;
	
	/** doTerminate() is a simple API which tells the coroutine
	* parser to terminate itself.  This is intended to be called from
	* one of our partner coroutines, and serves both to encapsulate the
	* communication protocol and to avoid having to explicitly use the
	* CoroutineParser's coroutine ID number.
	*
	* Returns only after the CoroutineParser has acknowledged the request.
	*
	* @param appCoroutine The coroutine ID number of the coroutine invoking
	* this method, so it can be resumed after the parser has responded to the
	* request.
	* */
	@:overload public function doTerminate(appCoroutine : Int) : Void;
	
	/**
	* Initialize the coroutine parser. Same parameters could be passed
	* in a non-default constructor, or by using using context ClassLoader
	* and newInstance and then calling init()
	*/
	@:overload public function init(co : com.sun.org.apache.xml.internal.dtm.ref.CoroutineManager, appCoroutineID : Int, parser : org.xml.sax.XMLReader) : Void;
	
	
}
