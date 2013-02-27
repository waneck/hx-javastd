package java.net;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class URLEncoder
{
	/**
	* Translates a string into <code>x-www-form-urlencoded</code>
	* format. This method uses the platform's default encoding
	* as the encoding scheme to obtain the bytes for unsafe characters.
	*
	* @param   s   <code>String</code> to be translated.
	* @deprecated The resulting string may vary depending on the platform's
	*             default encoding. Instead, use the encode(String,String)
	*             method to specify the encoding.
	* @return  the translated <code>String</code>.
	*/
	@:overload public static function encode(s : String) : String;
	
	/**
	* Translates a string into <code>application/x-www-form-urlencoded</code>
	* format using a specific encoding scheme. This method uses the
	* supplied encoding scheme to obtain the bytes for unsafe
	* characters.
	* <p>
	* <em><strong>Note:</strong> The <a href=
	* "http://www.w3.org/TR/html40/appendix/notes.html#non-ascii-chars">
	* World Wide Web Consortium Recommendation</a> states that
	* UTF-8 should be used. Not doing so may introduce
	* incompatibilites.</em>
	*
	* @param   s   <code>String</code> to be translated.
	* @param   enc   The name of a supported
	*    <a href="../lang/package-summary.html#charenc">character
	*    encoding</a>.
	* @return  the translated <code>String</code>.
	* @exception  UnsupportedEncodingException
	*             If the named encoding is not supported
	* @see URLDecoder#decode(java.lang.String, java.lang.String)
	* @since 1.4
	*/
	@:require(java4) @:overload public static function encode(s : String, enc : String) : String;
	
	
}
