package com.sun.activation.registries;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
*      A tokenizer for strings in the form of "foo/bar; prop1=val1; ... ".
*      Useful for parsing MIME content types.
*/
extern class MailcapTokenizer
{
	public static var UNKNOWN_TOKEN(default, null) : Int;
	
	public static var START_TOKEN(default, null) : Int;
	
	public static var STRING_TOKEN(default, null) : Int;
	
	public static var EOI_TOKEN(default, null) : Int;
	
	public static var SLASH_TOKEN(default, null) : Int;
	
	public static var SEMICOLON_TOKEN(default, null) : Int;
	
	public static var EQUALS_TOKEN(default, null) : Int;
	
	/**
	*  Constructor
	*
	*  @parameter  inputString the string to tokenize
	*/
	@:overload public function new(inputString : String) : Void;
	
	/**
	*  Set whether auto-quoting is on or off.
	*
	*  Auto-quoting means that all characters after the first
	*  non-whitespace, non-control character up to the auto-quote
	*  terminator character or EOI (minus any whitespace immediatley
	*  preceeding it) is considered a token.
	*
	*  This is required for handling command strings in a mailcap entry.
	*/
	@:overload public function setIsAutoquoting(value : Bool) : Void;
	
	/**
	*  Retrieve current token.
	*
	*  @returns    The current token value
	*/
	@:overload public function getCurrentToken() : Int;
	
	/*
	*  Get a String that describes the given token.
	*/
	@:overload public static function nameForToken(token : Int) : String;
	
	/*
	*  Retrieve current token value.
	*
	*  @returns    A String containing the current token value
	*/
	@:overload public function getCurrentTokenValue() : String;
	
	/*
	*  Process the next token.
	*
	*  @returns    the next token
	*/
	@:overload public function nextToken() : Int;
	
	
}
