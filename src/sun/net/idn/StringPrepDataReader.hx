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
/*
******************************************************************************
* Copyright (C) 2003, International Business Machines Corporation and   *
* others. All Rights Reserved.                                               *
******************************************************************************
*
* Created on May 2, 2003
*
* To change the template for this generated file go to
* Window>Preferences>Java>Code Generation>Code and Comments
*/
//// CHANGELOG
////      2005-05-19 Edward Wang
////          - copy this file from icu4jsrc_3_2/src/com/ibm/icu/impl/StringPrepDataReader.java
////          - move from package com.ibm.icu.impl to package sun.net.idn
////
@:internal extern class StringPrepDataReader implements sun.text.normalizer.ICUBinary.ICUBinary_Authenticate
{
	/**
	* <p>private constructor.</p>
	* @param inputStream ICU uprop.dat file input stream
	* @exception IOException throw if data file fails authentication
	* @draft 2.1
	*/
	@:overload public function new(inputStream : java.io.InputStream) : Void;
	
	@:overload public function read(idnaBytes : java.NativeArray<java.StdTypes.Int8>, mappingTable : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload public function getDataFormatVersion() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function isDataVersionAcceptable(version : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	@:overload public function readIndexes(length : Int) : java.NativeArray<Int>;
	
	@:overload public function getUnicodeVersion() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
