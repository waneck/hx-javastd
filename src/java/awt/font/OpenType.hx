package java.awt.font;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* The <code>OpenType</code> interface represents OpenType and
* TrueType fonts.  This interface makes it possible to obtain
* <i>sfnt</i> tables from the font.  A particular
* <code>Font</code> object can implement this interface.
* <p>
* For more information on TrueType and OpenType fonts, see the
* OpenType specification.
* ( <a href=http://www.microsoft.com/typography/otspec/">http://www.microsoft.com/typography/otspec/l</a> ).
*/
extern interface OpenType
{
	/**
	* Returns the version of the <code>OpenType</code> font.
	* 1.0 is represented as 0x00010000.
	* @return the version of the <code>OpenType</code> font.
	*/
	@:overload public function getVersion() : Int;
	
	/**
	* Returns the table as an array of bytes for a specified tag.
	* Tags for sfnt tables include items like <i>cmap</i>,
	* <i>name</i> and <i>head</i>.  The <code>byte</code> array
	* returned is a copy of the font data in memory.
	* @param     sfntTag a four-character code as a 32-bit integer
	* @return a <code>byte</code> array that is the table that
	* contains the font data corresponding to the specified
	* tag.
	*/
	@:overload public function getFontTable(sfntTag : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the table as an array of bytes for a specified tag.
	* Tags for sfnt tables include items like <i>cmap</i>,
	* <i>name</i> and <i>head</i>.  The byte array returned is a
	* copy of the font data in memory.
	* @param     strSfntTag a four-character code as a
	*            <code>String</code>
	* @return a <code>byte</code> array that is the table that
	* contains the font data corresponding to the specified
	* tag.
	*/
	@:overload public function getFontTable(strSfntTag : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a subset of the table as an array of bytes
	* for a specified tag.  Tags for sfnt tables include
	* items like <i>cmap</i>, <i>name</i> and <i>head</i>.
	* The byte array returned is a copy of the font data in
	* memory.
	* @param     sfntTag a four-character code as a 32-bit integer
	* @param     offset index of first byte to return from table
	* @param     count number of bytes to return from table
	* @return a subset of the table corresponding to
	*            <code>sfntTag</code> and containing the bytes
	*            starting at <code>offset</code> byte and including
	*            <code>count</code> bytes.
	*/
	@:overload public function getFontTable(sfntTag : Int, offset : Int, count : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a subset of the table as an array of bytes
	* for a specified tag.  Tags for sfnt tables include items
	* like <i>cmap</i>, <i>name</i> and <i>head</i>. The
	* <code>byte</code> array returned is a copy of the font
	* data in memory.
	* @param     strSfntTag a four-character code as a
	* <code>String</code>
	* @param     offset index of first byte to return from table
	* @param     count  number of bytes to return from table
	* @return a subset of the table corresponding to
	*            <code>strSfntTag</code> and containing the bytes
	*            starting at <code>offset</code> byte and including
	*            <code>count</code> bytes.
	*/
	@:overload public function getFontTable(strSfntTag : String, offset : Int, count : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the size of the table for a specified tag. Tags for sfnt
	* tables include items like <i>cmap</i>, <i>name</i> and <i>head</i>.
	* @param     sfntTag a four-character code as a 32-bit integer
	* @return the size of the table corresponding to the specified
	* tag.
	*/
	@:overload public function getFontTableSize(sfntTag : Int) : Int;
	
	/**
	* Returns the size of the table for a specified tag. Tags for sfnt
	* tables include items like <i>cmap</i>, <i>name</i> and <i>head</i>.
	* @param     strSfntTag a four-character code as a
	* <code>String</code>
	* @return the size of the table corresponding to the specified tag.
	*/
	@:overload public function getFontTableSize(strSfntTag : String) : Int;
	
	
}
