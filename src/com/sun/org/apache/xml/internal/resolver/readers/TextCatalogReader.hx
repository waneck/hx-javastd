package com.sun.org.apache.xml.internal.resolver.readers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// TextCatalogReader.java - Read text/plain Catalog files
/*
* Copyright 2001-2004 The Apache Software Foundation or its licensors,
* as applicable.
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
extern class TextCatalogReader implements com.sun.org.apache.xml.internal.resolver.readers.CatalogReader
{
	/** The input stream used to read the catalog */
	private var catfile : java.io.InputStream;
	
	/**
	* Character lookahead stack. Reading a catalog sometimes requires
	* up to two characters of lookahead.
	*/
	private var stack : java.NativeArray<Int>;
	
	/**
	* Token stack. Recognizing an unexpected catalog entry requires
	* the ability to "push back" a token.
	*/
	private var tokenStack : java.util.Stack<Dynamic>;
	
	/** The current position on the lookahead stack */
	private var top : Int;
	
	/** Are keywords in the catalog case sensitive? */
	private var caseSensitive : Bool;
	
	/**
	* Construct a CatalogReader object.
	*/
	@:overload public function new() : Void;
	
	@:overload public function setCaseSensitive(isCaseSensitive : Bool) : Void;
	
	@:overload public function getCaseSensitive() : Bool;
	
	/**
	* Start parsing a text catalog file. The file is
	* actually read and parsed
	* as needed by <code>nextEntry</code>.</p>
	*
	* @param fileUrl  The URL or filename of the catalog file to process
	*
	* @throws MalformedURLException Improper fileUrl
	* @throws IOException Error reading catalog file
	*/
	@:overload public function readCatalog(catalog : com.sun.org.apache.xml.internal.resolver.Catalog, fileUrl : String) : Void;
	
	@:overload public function readCatalog(catalog : com.sun.org.apache.xml.internal.resolver.Catalog, is : java.io.InputStream) : Void;
	
	/**
	* The destructor.
	*
	* <p>Makes sure the catalog file is closed.</p>
	*/
	@:overload private function finalize() : Void;
	
	/**
	* Return the next token in the catalog file.
	*
	* <p>FYI: This code does not throw any sort of exception for
	* a file that contains an n
	*
	* @return The Catalog file token from the input stream.
	* @throws IOException If an error occurs reading from the stream.
	*/
	@:overload private function nextToken() : String;
	
	/**
	* Return the next logical character from the input stream.
	*
	* @return The next (logical) character from the input stream. The
	* character may be buffered from a previous lookahead.
	*
	* @throws IOException If an error occurs reading from the stream.
	*/
	@:overload private function nextChar() : Int;
	
	
}
