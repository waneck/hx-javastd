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
*/
@:internal extern class UCharacterPropertyReader implements sun.text.normalizer.ICUBinary.ICUBinary_Authenticate
{
	/**
* <p>Internal reader class for ICU data file uprops.icu containing
* Unicode codepoint data.</p>
* <p>This class simply reads uprops.icu, authenticates that it is a valid
* ICU data file and split its contents up into blocks of data for use in
* <a href=UCharacterProperty.html>com.ibm.icu.impl.UCharacterProperty</a>.
* </p>
* <p>uprops.icu which is in big-endian format is jared together with this
* package.</p>
*
* Unicode character properties file format see
* (ICU4C)/source/tools/genprops/store.c
*
* @author Syn Wee Quek
* @since release 2.1, February 1st 2002
*/
	@:require(java1) @:overload @:public public function isDataVersionAcceptable(version : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/**
	* <p>Protected constructor.</p>
	* @param inputStream ICU uprop.dat file input stream
	* @exception IOException throw if data file fails authentication
	*/
	@:overload @:protected private function new(inputStream : java.io.InputStream) : Void;
	
	/**
	* <p>Reads uprops.icu, parse it into blocks of data to be stored in
	* UCharacterProperty.</P
	* @param ucharppty UCharacterProperty instance
	* @exception IOException thrown when data reading fails
	*/
	@:overload @:protected private function read(ucharppty : sun.text.normalizer.UCharacterProperty) : Void;
	
	
}
