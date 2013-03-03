package com.sun.tools.doclets.internal.toolkit;
/*
* Copyright (c) 2010, 2011, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/**
* A class to create content for javadoc output pages.
*
* @author Bhavesh Patel
*/
extern class Content
{
	/**
	* Returns a string representation of the content.
	*
	* @return string representation of the content
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Adds content to the existing content.
	*
	* @param content content that needs to be added
	*/
	@:overload @:public @:abstract public function addContent(content : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds a string content to the existing content.
	*
	* @param stringContent the string content to be added
	*/
	@:overload @:public @:abstract public function addContent(stringContent : String) : Void;
	
	/**
	* Writes content to a StringBuilder.
	*
	*/
	@:overload @:public @:abstract public function write(contentBuilder : java.lang.StringBuilder) : Void;
	
	/**
	* Returns true if the content is empty.
	*
	* @return true if no content to be displayed else return false
	*/
	@:overload @:public @:abstract public function isEmpty() : Bool;
	
	/**
	* Returns true if the content is valid.
	*
	* @return true if the content is valid else return false
	*/
	@:overload @:public public function isValid() : Bool;
	
	/**
	* Checks for null values.
	*
	* @param t reference type to check for null values
	* @return the reference type if not null or else throws a null pointer exception
	*/
	@:overload @:protected @:static private static function nullCheck<T>(t : T) : T;
	
	/**
	* Returns true if the content ends with a newline character. Empty content
	* is considered as ending with new line.
	*
	* @param contentBuilder content to test for newline character at the end
	* @return true if the content ends with newline.
	*/
	@:overload @:protected private function endsWithNewLine(contentBuilder : java.lang.StringBuilder) : Bool;
	
	
}
