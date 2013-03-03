package com.sun.xml.internal.ws.encoding;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class HeaderTokenizer
{
	
}
/**
* The Token class represents tokens returned by the
* HeaderTokenizer.
*/
@:native('com$sun$xml$internal$ws$encoding$HeaderTokenizer$Token') @:internal extern class HeaderTokenizer_Token
{
	/**
	* Token type indicating an ATOM.
	*/
	@:public @:static @:final public static var ATOM(default, null) : Int;
	
	/**
	* Token type indicating a quoted string. The value
	* field contains the string without the quotes.
	*/
	@:public @:static @:final public static var QUOTEDSTRING(default, null) : Int;
	
	/**
	* Token type indicating a comment. The value field
	* contains the comment string without the comment
	* start and end symbols.
	*/
	@:public @:static @:final public static var COMMENT(default, null) : Int;
	
	/**
	* Token type indicating end of input.
	*/
	@:public @:static @:final public static var EOF(default, null) : Int;
	
	/**
	* Constructor.
	* @param       type    Token type
	* @param       value   Token value
	*/
	@:overload @:public public function new(type : Int, value : String) : Void;
	
	/**
	* Return the type of the token. If the token represents a
	* delimiter or a control character, the type is that character
	* itself, converted to an integer. Otherwise, it's value is
	* one of the following:
	* <ul>
	* <li><code>ATOM</code> A sequence of ASCII characters
	*      delimited by either SPACE, CTL, "(", <"> or the
	*      specified SPECIALS
	* <li><code>QUOTEDSTRING</code> A sequence of ASCII characters
	*      within quotes
	* <li><code>COMMENT</code> A sequence of ASCII characters
	*      within "(" and ")".
	* <li><code>EOF</code> End of header
	* </ul>
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Returns the value of the token just read. When the current
	* token is a quoted string, this field contains the body of the
	* string, without the quotes. When the current token is a comment,
	* this field contains the body of the comment.
	*
	* @return      token value
	*/
	@:overload @:public public function getValue() : String;
	
	
}
