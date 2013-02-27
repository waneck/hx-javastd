package java.net;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class IDN
{
	/**
	* Flag to allow processing of unassigned code points
	*/
	public static var ALLOW_UNASSIGNED(default, null) : Int;
	
	/**
	* Flag to turn on the check against STD-3 ASCII rules
	*/
	public static var USE_STD3_ASCII_RULES(default, null) : Int;
	
	/**
	* Translates a string from Unicode to ASCII Compatible Encoding (ACE),
	* as defined by the ToASCII operation of <a href="http://www.ietf.org/rfc/rfc3490.txt">RFC 3490</a>.
	*
	* <p>ToASCII operation can fail. ToASCII fails if any step of it fails.
	* If ToASCII operation fails, an IllegalArgumentException will be thrown.
	* In this case, the input string should not be used in an internationalized domain name.
	*
	* <p> A label is an individual part of a domain name. The original ToASCII operation,
	* as defined in RFC 3490, only operates on a single label. This method can handle
	* both label and entire domain name, by assuming that labels in a domain name are
	* always separated by dots. The following characters are recognized as dots:
	* &#0092;u002E (full stop), &#0092;u3002 (ideographic full stop), &#0092;uFF0E (fullwidth full stop),
	* and &#0092;uFF61 (halfwidth ideographic full stop). if dots are
	* used as label separators, this method also changes all of them to &#0092;u002E (full stop)
	* in output translated string.
	*
	* @param input     the string to be processed
	* @param flag      process flag; can be 0 or any logical OR of possible flags
	*
	* @return          the translated <tt>String</tt>
	*
	* @throws IllegalArgumentException   if the input string doesn't conform to RFC 3490 specification
	*/
	@:overload public static function toASCII(input : String, flag : Int) : String;
	
	/**
	* Translates a string from Unicode to ASCII Compatible Encoding (ACE),
	* as defined by the ToASCII operation of <a href="http://www.ietf.org/rfc/rfc3490.txt">RFC 3490</a>.
	*
	* <p> This convenience method works as if by invoking the
	* two-argument counterpart as follows:
	* <blockquote><tt>
	* {@link #toASCII(String, int) toASCII}(input,&nbsp;0);
	* </tt></blockquote>
	*
	* @param input     the string to be processed
	*
	* @return          the translated <tt>String</tt>
	*
	* @throws IllegalArgumentException   if the input string doesn't conform to RFC 3490 specification
	*/
	@:overload public static function toASCII(input : String) : String;
	
	/**
	* Translates a string from ASCII Compatible Encoding (ACE) to Unicode,
	* as defined by the ToUnicode operation of <a href="http://www.ietf.org/rfc/rfc3490.txt">RFC 3490</a>.
	*
	* <p>ToUnicode never fails. In case of any error, the input string is returned unmodified.
	*
	* <p> A label is an individual part of a domain name. The original ToUnicode operation,
	* as defined in RFC 3490, only operates on a single label. This method can handle
	* both label and entire domain name, by assuming that labels in a domain name are
	* always separated by dots. The following characters are recognized as dots:
	* &#0092;u002E (full stop), &#0092;u3002 (ideographic full stop), &#0092;uFF0E (fullwidth full stop),
	* and &#0092;uFF61 (halfwidth ideographic full stop).
	*
	* @param input     the string to be processed
	* @param flag      process flag; can be 0 or any logical OR of possible flags
	*
	* @return          the translated <tt>String</tt>
	*/
	@:overload public static function toUnicode(input : String, flag : Int) : String;
	
	/**
	* Translates a string from ASCII Compatible Encoding (ACE) to Unicode,
	* as defined by the ToUnicode operation of <a href="http://www.ietf.org/rfc/rfc3490.txt">RFC 3490</a>.
	*
	* <p> This convenience method works as if by invoking the
	* two-argument counterpart as follows:
	* <blockquote><tt>
	* {@link #toUnicode(String, int) toUnicode}(input,&nbsp;0);
	* </tt></blockquote>
	*
	* @param input     the string to be processed
	*
	* @return          the translated <tt>String</tt>
	*/
	@:overload public static function toUnicode(input : String) : String;
	
	
}
