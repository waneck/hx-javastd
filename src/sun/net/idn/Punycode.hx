package sun.net.idn;
/*
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
*******************************************************************************
* Copyright (C) 2003-2004, International Business Machines Corporation and    *
* others. All Rights Reserved.                                                *
*******************************************************************************
*/
////
//// CHANGELOG
////      2005-05-19 Edward Wang
////          - copy this file from icu4jsrc_3_2/src/com/ibm/icu/text/Punycode.java
////          - move from package com.ibm.icu.text to package sun.net.idn
////          - use ParseException instead of StringPrepParseException
////      2007-08-14 Martin Buchholz
////          - remove redundant casts
////
extern class Punycode
{
	/**
	* Converts Unicode to Punycode.
	* The input string must not contain single, unpaired surrogates.
	* The output will be represented as an array of ASCII code points.
	*
	* @param src
	* @param caseFlags
	* @return
	* @throws ParseException
	*/
	@:overload public static function encode(src : java.lang.StringBuffer, caseFlags : java.NativeArray<Bool>) : java.lang.StringBuffer;
	
	/**
	* Converts Punycode to Unicode.
	* The Unicode string will be at most as long as the Punycode string.
	*
	* @param src
	* @param caseFlags
	* @return
	* @throws ParseException
	*/
	@:overload public static function decode(src : java.lang.StringBuffer, caseFlags : java.NativeArray<Bool>) : java.lang.StringBuffer;
	
	
}
