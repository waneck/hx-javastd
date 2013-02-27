package com.sun.org.apache.regexp.internal;
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
/**
* This is a class that contains utility helper methods for this package.
*
* @author <a href="mailto:jonl@muppetlabs.com">Jonathan Locke</a>
*/
extern class REUtil
{
	/**
	* Creates a regular expression, permitting simple or complex syntax
	* @param expression The expression, beginning with a prefix if it's complex or
	* having no prefix if it's simple
	* @param matchFlags Matching style flags
	* @return The regular expression object
	* @exception RESyntaxException thrown in case of error
	*/
	@:overload public static function createRE(expression : String, matchFlags : Int) : com.sun.org.apache.regexp.internal.RE;
	
	/**
	* Creates a regular expression, permitting simple or complex syntax
	* @param expression The expression, beginning with a prefix if it's complex or
	* having no prefix if it's simple
	* @return The regular expression object
	* @exception RESyntaxException thrown in case of error
	*/
	@:overload public static function createRE(expression : String) : com.sun.org.apache.regexp.internal.RE;
	
	
}
