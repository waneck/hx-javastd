package com.sun.xml.internal.messaging.saaj.packaging.mime.internet;
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
/*
* @(#)HeaderTokenizer.java   1.9 02/03/27
*/
/**
* This class tokenizes RFC822 and MIME headers into the basic
* symbols specified by RFC822 and MIME. <p>
*
* This class handles folded headers (ie headers with embedded
* CRLF SPACE sequences). The folds are removed in the returned
* tokens.
*
* @version 1.9, 02/03/27
* @author  John Mani
*/
extern class HeaderTokenizer
{
	/**
	* RFC822 specials
	*/
	public static var RFC822(default, null) : String;
	
	/**
	* MIME specials
	*/
	public static var MIME(default, null) : String;
	
	/**
	* Constructor that takes a rfc822 style header.
	*
	* @param   header  The rfc822 header to be tokenized
	* @param   delimiters      Set of delimiter characters
	*                          to be used to delimit ATOMS. These
	*                          are usually <code>RFC822</code> or
	*                          <code>MIME</code>
	* @param   skipComments  If true, comments are skipped and
	*                          not returned as tokens
	*/
	@:overload public function new(header : String, delimiters : String, skipComments : Bool) : Void;
	
	/**
	* Constructor. Comments are ignored and not returned as tokens
	*
	* @param   header  The header that is tokenized
	* @param   delimiters  The delimiters to be used
	*/
	@:overload public function new(header : String, delimiters : String) : Void;
	
	/**
	* Constructor. The RFC822 defined delimiters - RFC822 - are
	* used to delimit ATOMS. Also comments are skipped and not
	* returned as tokens
	*/
	@:overload public function new(header : String) : Void;
	
	/**
	* Parses the next token from this String. <p>
	*
	* Clients sit in a loop calling next() to parse successive
	* tokens until an EOF Token is returned.
	*
	* @return          the next Token
	* @exception       ParseException if the parse fails
	*/
	@:overload public function next() : HeaderTokenizer_Token;
	
	/**
	* Peek at the next token, without actually removing the token
	* from the parse stream. Invoking this method multiple times
	* will return successive tokens, until <code>next()</code> is
	* called. <p>
	*
	* @return          the next Token
	* @exception       ParseException if the parse fails
	*/
	@:overload public function peek() : HeaderTokenizer_Token;
	
	/**
	* Return the rest of the Header.
	*
	* @return String   rest of header. null is returned if we are
	*                  already at end of header
	*/
	@:overload public function getRemainder() : String;
	
	
}
/**
* The Token class represents tokens returned by the
* HeaderTokenizer.
*/
@:native('com$sun$xml$internal$messaging$saaj$packaging$mime$internet$HeaderTokenizer$Token') extern class HeaderTokenizer_Token
{
	/**
	* Token type indicating an ATOM.
	*/
	public static var ATOM(default, null) : Int;
	
	/**
	* Token type indicating a quoted string. The value
	* field contains the string without the quotes.
	*/
	public static var QUOTEDSTRING(default, null) : Int;
	
	/**
	* Token type indicating a comment. The value field
	* contains the comment string without the comment
	* start and end symbols.
	*/
	public static var COMMENT(default, null) : Int;
	
	/**
	* Token type indicating end of input.
	*/
	public static var EOF(default, null) : Int;
	
	/**
	* Constructor.
	* @param       type    Token type
	* @param       value   Token value
	*/
	@:overload public function new(type : Int, value : String) : Void;
	
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
	@:overload public function getType() : Int;
	
	/**
	* Returns the value of the token just read. When the current
	* token is a quoted string, this field contains the body of the
	* string, without the quotes. When the current token is a comment,
	* this field contains the body of the comment.
	*
	* @return      token value
	*/
	@:overload public function getValue() : String;
	
	
}
