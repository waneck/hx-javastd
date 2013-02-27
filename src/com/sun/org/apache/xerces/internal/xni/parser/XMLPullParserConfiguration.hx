package com.sun.org.apache.xerces.internal.xni.parser;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern interface XMLPullParserConfiguration extends com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration
{
	/**
	* Sets the input source for the document to parse.
	*
	* @param inputSource The document's input source.
	*
	* @exception XMLConfigurationException Thrown if there is a
	*                        configuration error when initializing the
	*                        parser.
	* @exception IOException Thrown on I/O error.
	*
	* @see #parse(boolean)
	*/
	@:overload public function setInputSource(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* Parses the document in a pull parsing fashion.
	*
	* @param complete True if the pull parser should parse the
	*                 remaining document completely.
	*
	* @return True if there is more document to parse.
	*
	* @exception XNIException Any XNI exception, possibly wrapping
	*                         another exception.
	* @exception IOException  An IO exception from the parser, possibly
	*                         from a byte stream or character stream
	*                         supplied by the parser.
	*
	* @see #setInputSource
	*/
	@:overload public function parse(complete : Bool) : Bool;
	
	/**
	* If the application decides to terminate parsing before the xml document
	* is fully parsed, the application should call this method to free any
	* resource allocated during parsing. For example, close all opened streams.
	*/
	@:overload public function cleanup() : Void;
	
	
}
