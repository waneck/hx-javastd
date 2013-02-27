package com.sun.org.apache.xalan.internal.xslt;
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
* $Id: Process.java,v 1.2.4.2 2005/09/15 18:21:57 jeffsuttor Exp $
*/
extern class Process
{
	/**
	* Prints argument options.
	*
	* @param resbundle Resource bundle
	*/
	@:overload private static function printArgOptions(resbundle : java.util.ResourceBundle) : Void;
	
	/**
	* Command line interface to transform an XML document according to
	* the instructions found in an XSL stylesheet.
	* <p>The Process class provides basic functionality for
	* performing transformations from the command line.  To see a
	* list of arguments supported, call with zero arguments.</p>
	* <p>To set stylesheet parameters from the command line, use
	* <code>-PARAM name expression</code>. If you want to set the
	* parameter to a string value, simply pass the string value
	* as-is, and it will be interpreted as a string.  (Note: if
	* the value has spaces in it, you may need to quote it depending
	* on your shell environment).</p>
	*
	* @param argv Input parameters from command line
	*/
	@:overload public static function _main(argv : java.NativeArray<String>) : Void;
	
	
}
