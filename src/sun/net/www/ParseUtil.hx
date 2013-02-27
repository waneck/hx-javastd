package sun.net.www;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class ParseUtil
{
	/**
	* Constructs an encoded version of the specified path string suitable
	* for use in the construction of a URL.
	*
	* A path separator is replaced by a forward slash. The string is UTF8
	* encoded. The % escape sequence is used for characters that are above
	* 0x7F or those defined in RFC2396 as reserved or excluded in the path
	* component of a URL.
	*/
	@:overload public static function encodePath(path : String) : String;
	
	/*
	* flag indicates whether path uses platform dependent
	* File.separatorChar or not. True indicates path uses platform
	* dependent File.separatorChar.
	*/
	@:overload public static function encodePath(path : String, flag : Bool) : String;
	
	/**
	* Returns a new String constructed from the specified String by replacing
	* the URL escape sequences and UTF8 encoding with the characters they
	* represent.
	*/
	@:overload public static function decode(s : String) : String;
	
	/**
	* Returns a canonical version of the specified string.
	*/
	@:overload public function canonizeString(file : String) : String;
	
	@:overload public static function fileToEncodedURL(file : java.io.File) : java.net.URL;
	
	@:overload public static function toURI(url : java.net.URL) : java.net.URI;
	
	
}
