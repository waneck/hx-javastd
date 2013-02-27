package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
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
extern class DefaultErrorHandler implements com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler
{
	/** Print writer. */
	private var fOut : java.io.PrintWriter;
	
	/**
	* Constructs an error handler that prints error messages to
	* <code>System.err</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs an error handler that prints error messages to the
	* specified <code>PrintWriter</code.
	*/
	@:overload public function new(out : java.io.PrintWriter) : Void;
	
	/** Warning. */
	@:overload public function warning(domain : String, key : String, ex : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException) : Void;
	
	/** Error. */
	@:overload public function error(domain : String, key : String, ex : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException) : Void;
	
	/** Fatal error. */
	@:overload public function fatalError(domain : String, key : String, ex : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException) : Void;
	
	
}
