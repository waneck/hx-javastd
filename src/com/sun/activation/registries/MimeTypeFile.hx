package com.sun.activation.registries;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class MimeTypeFile
{
	/**
	* The construtor that takes a filename as an argument.
	*
	* @param new_fname The file name of the mime types file.
	*/
	@:overload @:public public function new(new_fname : String) : Void;
	
	@:overload @:public public function new(is : java.io.InputStream) : Void;
	
	/**
	* Creates an empty DB.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* get the MimeTypeEntry based on the file extension
	*/
	@:overload @:public public function getMimeTypeEntry(file_ext : String) : com.sun.activation.registries.MimeTypeEntry;
	
	/**
	* Get the MIME type string corresponding to the file extension.
	*/
	@:overload @:public public function getMIMETypeString(file_ext : String) : String;
	
	/**
	* Appends string of entries to the types registry, must be valid
	* .mime.types format.
	* A mime.types entry is one of two forms:
	*
	*  type/subtype    ext1 ext2 ...
	* or
	*  type=type/subtype desc="description of type" exts=ext1,ext2,...
	*
	* Example:
	* # this is a test
	* audio/basic            au
	* text/plain             txt text
	* type=application/postscript exts=ps,eps
	*/
	@:overload @:public public function appendToRegistry(mime_types : String) : Void;
	
	
}
@:internal extern class LineTokenizer
{
	/**
	* Constructs a tokenizer for the specified string.
	* <p>
	*
	* @param   str            a string to be parsed.
	*/
	@:overload @:public public function new(str : String) : Void;
	
	/**
	* Tests if there are more tokens available from this tokenizer's string.
	*
	* @return  <code>true</code> if there are more tokens available from this
	*          tokenizer's string; <code>false</code> otherwise.
	*/
	@:overload @:public public function hasMoreTokens() : Bool;
	
	/**
	* Returns the next token from this tokenizer.
	*
	* @return     the next token from this tokenizer.
	* @exception  NoSuchElementException  if there are no more tokens in this
	*               tokenizer's string.
	*/
	@:overload @:public public function nextToken() : String;
	
	@:overload @:public public function pushToken(token : String) : Void;
	
	
}
