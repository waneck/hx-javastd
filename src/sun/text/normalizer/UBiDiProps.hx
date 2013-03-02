package sun.text.normalizer;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. and others, 1996-2009 - All Rights Reserved         *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*   file name:  UBiDiProps.java
*   encoding:   US-ASCII
*   tab size:   8 (not used)
*   indentation:4
*
*   created on: 2005jan16
*   created by: Markus W. Scherer
*
*   Low-level Unicode bidi/shaping properties access.
*   Java port of ubidi_props.h/.c.
*/
extern class UBiDiProps
{
	@:overload public function new() : Void;
	
	@:overload @:final @:synchronized public static function getSingleton() : sun.text.normalizer.UBiDiProps;
	
	/**
	* Get a singleton dummy object, one that works with no real data.
	* This can be used when the real data is not available.
	* Using the dummy can reduce checks for available data after an initial failure.
	* Port of ucase_getDummy().
	*/
	@:overload @:final @:synchronized public static function getDummy() : sun.text.normalizer.UBiDiProps;
	
	@:overload @:final public function getClass(c : Int) : Int;
	
	
}
@:native('sun$text$normalizer$UBiDiProps$IsAcceptable') @:internal extern class UBiDiProps_IsAcceptable implements sun.text.normalizer.ICUBinary.ICUBinary_Authenticate
{
	@:overload public function isDataVersionAcceptable(version : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	
}
