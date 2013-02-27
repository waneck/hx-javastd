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
* $Id: IncrementalSAXSource.java,v 1.2.4.1 2005/09/15 08:15:06 suresh_emailid Exp $
*/
extern interface IncrementalSAXSource
{
	/** Register a SAX-style content handler for us to output to
	*/
	@:overload public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	/**  Register a SAX-style lexical handler for us to output to
	*/
	@:overload public function setLexicalHandler(handler : org.xml.sax.ext.LexicalHandler) : Void;
	
	/**  Register a SAX-style DTD handler for us to output to
	*/
	@:overload public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	/** deliverMoreNodes() is a simple API which tells the thread in which the
	* IncrementalSAXSource is running to deliver more events (true),
	* or stop delivering events and close out its input (false).
	*
	* This is intended to be called from one of our partner coroutines,
	* and serves to encapsulate the coroutine communication protocol.
	*
	* @param parsemore If true, tells the incremental SAX stream to deliver
	* another chunk of events. If false, finishes out the stream.
	*
	* @return Boolean.TRUE if the IncrementalSAXSource believes more data
	* may be available for further parsing. Boolean.FALSE if parsing
	* ran to completion, or was ended by deliverMoreNodes(false).
	* */
	@:overload public function deliverMoreNodes(parsemore : Bool) : Dynamic;
	
	/** Launch an XMLReader's parsing operation, feeding events to this
	* IncrementalSAXSource. In some implementations, this may launch a
	* thread which runs the previously supplied XMLReader's parse() operation.
	* In others, it may do other forms of initialization.
	*
	* @throws SAXException is parse thread is already in progress
	* or parsing can not be started.
	* */
	@:overload public function startParse(source : org.xml.sax.InputSource) : Void;
	
	
}
