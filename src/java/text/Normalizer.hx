package java.text;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. 1996-2005 - All Rights Reserved                     *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
extern class Normalizer
{
	/**
	* Normalize a sequence of char values.
	* The sequence will be normalized according to the specified normalization
	* from.
	* @param src        The sequence of char values to normalize.
	* @param form       The normalization form; one of
	*                   {@link java.text.Normalizer.Form#NFC},
	*                   {@link java.text.Normalizer.Form#NFD},
	*                   {@link java.text.Normalizer.Form#NFKC},
	*                   {@link java.text.Normalizer.Form#NFKD}
	* @return The normalized String
	* @throws NullPointerException If <code>src</code> or <code>form</code>
	* is null.
	*/
	@:overload public static function normalize(src : java.lang.CharSequence, form : Normalizer_Form) : String;
	
	/**
	* Determines if the given sequence of char values is normalized.
	* @param src        The sequence of char values to be checked.
	* @param form       The normalization form; one of
	*                   {@link java.text.Normalizer.Form#NFC},
	*                   {@link java.text.Normalizer.Form#NFD},
	*                   {@link java.text.Normalizer.Form#NFKC},
	*                   {@link java.text.Normalizer.Form#NFKD}
	* @return true if the sequence of char values is normalized;
	* false otherwise.
	* @throws NullPointerException If <code>src</code> or <code>form</code>
	* is null.
	*/
	@:overload public static function isNormalized(src : java.lang.CharSequence, form : Normalizer_Form) : Bool;
	
	
}
/**
* This enum provides constants of the four Unicode normalization forms
* that are described in
* <a href="http://www.unicode.org/unicode/reports/tr15/tr15-23.html">
* Unicode Standard Annex #15 &mdash; Unicode Normalization Forms</a>
* and two methods to access them.
*
* @since 1.6
*/
@:require(java6) @:native('java$text$Normalizer$Form') extern enum Normalizer_Form
{
	/**
	* Canonical decomposition.
	*/
	NFD;
	/**
	* Canonical decomposition, followed by canonical composition.
	*/
	NFC;
	/**
	* Compatibility decomposition.
	*/
	NFKD;
	/**
	* Compatibility decomposition, followed by canonical composition.
	*/
	NFKC;
	
}

