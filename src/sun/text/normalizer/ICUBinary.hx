package sun.text.normalizer;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class ICUBinary
{
	/**
	* <p>ICU data header reader method.
	* Takes a ICU generated big-endian input stream, parse the ICU standard
	* file header and authenticates them.</p>
	* <p>Header format:
	* <ul>
	*     <li> Header size (char)
	*     <li> Magic number 1 (byte)
	*     <li> Magic number 2 (byte)
	*     <li> Rest of the header size (char)
	*     <li> Reserved word (char)
	*     <li> Big endian indicator (byte)
	*     <li> Character set family indicator (byte)
	*     <li> Size of a char (byte) for c++ and c use
	*     <li> Reserved byte (byte)
	*     <li> Data format identifier (4 bytes), each ICU data has its own
	*          identifier to distinguish them. [0] major [1] minor
	*                                          [2] milli [3] micro
	*     <li> Data version (4 bytes), the change version of the ICU data
	*                             [0] major [1] minor [2] milli [3] micro
	*     <li> Unicode version (4 bytes) this ICU is based on.
	* </ul>
	* </p>
	* <p>
	* Example of use:<br>
	* <pre>
	* try {
	*    FileInputStream input = new FileInputStream(filename);
	*    If (Utility.readICUDataHeader(input, dataformat, dataversion,
	*                                  unicode) {
	*        System.out.println("Verified file header, this is a ICU data file");
	*    }
	* } catch (IOException e) {
	*    System.out.println("This is not a ICU data file");
	* }
	* </pre>
	* </p>
	* @param inputStream input stream that contains the ICU data header
	* @param dataFormatIDExpected Data format expected. An array of 4 bytes
	*                     information about the data format.
	*                     E.g. data format ID 1.2.3.4. will became an array of
	*                     {1, 2, 3, 4}
	* @param authenticate user defined extra data authentication. This value
	*                     can be null, if no extra authentication is needed.
	* @exception IOException thrown if there is a read error or
	*            when header authentication fails.
	* @draft 2.1
	*/
	@:overload @:final public static function readHeader(inputStream : java.io.InputStream, dataFormatIDExpected : java.NativeArray<java.StdTypes.Int8>, authenticate : ICUBinary_Authenticate) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/**
* Special interface for data authentication
*/
@:native('sun$text$normalizer$ICUBinary$Authenticate') extern interface ICUBinary_Authenticate
{
	/**
	* Method used in ICUBinary.readHeader() to provide data format
	* authentication.
	* @param version version of the current data
	* @return true if dataformat is an acceptable version, false otherwise
	*/
	@:overload public function isDataVersionAcceptable(version : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	
}
