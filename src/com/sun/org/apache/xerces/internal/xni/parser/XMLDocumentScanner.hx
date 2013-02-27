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
extern interface XMLDocumentScanner extends com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource
{
	/**
	* Sets the input source.
	*
	* @param inputSource The input source.
	*
	* @throws IOException Thrown on i/o error.
	*/
	@:overload public function setInputSource(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* Scans a document.
	*
	* @param complete True if the scanner should scan the document
	*                 completely, pushing all events to the registered
	*                 document handler. A value of false indicates that
	*                 that the scanner should only scan the next portion
	*                 of the document and return. A scanner instance is
	*                 permitted to completely scan a document if it does
	*                 not support this "pull" scanning model.
	*
	* @return True if there is more to scan, false otherwise.
	*/
	@:overload public function scanDocument(complete : Bool) : Bool;
	
	@:overload public function next() : Int;
	
	
}
