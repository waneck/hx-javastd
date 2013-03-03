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
* $Id: IncrementalSAXSource_Xerces.java,v 1.2.4.1 2005/09/15 08:15:08 suresh_emailid Exp $
*/
extern class IncrementalSAXSource_Xerces implements com.sun.org.apache.xml.internal.dtm.ref.IncrementalSAXSource
{
	/** Create a IncrementalSAXSource_Xerces, and create a SAXParser
	* to go with it. Xerces2 incremental parsing is only supported if
	* this constructor is used, due to limitations in the Xerces2 API (as of
	* Beta 3). If you don't like that restriction, tell the Xerces folks that
	* there should be a simpler way to request incremental SAX parsing.
	* */
	@:overload @:public public function new() : Void;
	
	/** Create a IncrementalSAXSource_Xerces wrapped around
	* an existing SAXParser. Currently this works only for recent
	* releases of Xerces-1.  Xerces-2 incremental is currently possible
	* only if we are allowed to create the parser instance, due to
	* limitations in the API exposed by Xerces-2 Beta 3; see the
	* no-args constructor for that code.
	*
	* @exception if the SAXParser class doesn't support the Xerces
	* incremental parse operations. In that case, caller should
	* fall back upon the IncrementalSAXSource_Filter approach.
	* */
	@:overload @:public public function new(parser : com.sun.org.apache.xerces.internal.parsers.SAXParser) : Void;
	
	@:overload @:static @:public public static function createIncrementalSAXSource() : com.sun.org.apache.xml.internal.dtm.ref.IncrementalSAXSource;
	
	@:overload @:static @:public public static function createIncrementalSAXSource(parser : com.sun.org.apache.xerces.internal.parsers.SAXParser) : com.sun.org.apache.xml.internal.dtm.ref.IncrementalSAXSource;
	
	@:overload @:public public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public public function setLexicalHandler(handler : org.xml.sax.ext.LexicalHandler) : Void;
	
	@:overload @:public public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	/** startParse() is a simple API which tells the IncrementalSAXSource
	* to begin reading a document.
	*
	* @throws SAXException is parse thread is already in progress
	* or parsing can not be started.
	* */
	@:overload @:public public function startParse(source : org.xml.sax.InputSource) : Void;
	
	/** deliverMoreNodes() is a simple API which tells the coroutine
	* parser that we need more nodes.  This is intended to be called
	* from one of our partner routines, and serves to encapsulate the
	* details of how incremental parsing has been achieved.
	*
	* @param parsemore If true, tells the incremental parser to generate
	* another chunk of output. If false, tells the parser that we're
	* satisfied and it can terminate parsing of this document.
	* @return Boolean.TRUE if the CoroutineParser believes more data may be available
	* for further parsing. Boolean.FALSE if parsing ran to completion.
	* Exception if the parser objected for some reason.
	* */
	@:overload @:public public function deliverMoreNodes(parsemore : Bool) : Dynamic;
	
	/** Simple unit test. Attempt coroutine parsing of document indicated
	* by first argument (as a URI), report progress.
	*/
	@:overload @:public @:static public static function _main(args : java.NativeArray<String>) : Void;
	
	
}
