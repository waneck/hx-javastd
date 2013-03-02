package com.sun.tools.javac.util;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
/** A class that defines source code positions as simple character
*  offsets from the beginning of the file. The first character
*  is at position 0.
*
*  Support is also provided for (line,column) coordinates, but tab
*  expansion is optional and no Unicode excape translation is considered.
*  The first character is at location (1,1).
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Position
{
	public static var NOPOS(default, null) : Int;
	
	public static var FIRSTPOS(default, null) : Int;
	
	public static var FIRSTLINE(default, null) : Int;
	
	public static var FIRSTCOLUMN(default, null) : Int;
	
	public static var LINESHIFT(default, null) : Int;
	
	public static var MAXCOLUMN(default, null) : Int;
	
	public static var MAXLINE(default, null) : Int;
	
	public static var MAXPOS(default, null) : Int;
	
	/** A two-way map between line/column numbers and positions,
	*  derived from a scan done at creation time.  Tab expansion is
	*  optionally supported via a character map.  Text content
	*  is not retained.
	*<p>
	*  Notes:  The first character position FIRSTPOS is at
	*  (FIRSTLINE,FIRSTCOLUMN).  No account is taken of Unicode escapes.
	*
	* @param   src         Source characters
	* @param   max         Number of characters to read
	* @param   expandTabs  If true, expand tabs when calculating columns
	*/
	@:overload public static function makeLineMap(src : java.NativeArray<java.StdTypes.Char16>, max : Int, expandTabs : Bool) : Position_LineMap;
	
	/** Encode line and column numbers in an integer as:
	*  line-number << LINESHIFT + column-number
	*  {@link Position.NOPOS represents an undefined position.
	*
	* @param  line  number of line (first is 1)
	* @param  col   number of character on line (first is 1)
	* @return       an encoded position or {@link Position.NOPOS
	*               if the line or column number is too big to
	*               represent in the encoded format
	* @throws IllegalArgumentException if line or col is less than 1
	*/
	@:overload public static function encodePosition(line : Int, col : Int) : Int;
	
	
}
@:native('com$sun$tools$javac$util$Position$LineMap') extern interface Position_LineMap extends com.sun.source.tree.LineMap
{
	/** Find the start position of a line.
	*
	* @param line number of line (first is 1)
	* @return     position of first character in line
	* @throws  ArrayIndexOutOfBoundsException
	*           if <tt>lineNumber < 1</tt>
	*           if <tt>lineNumber > no. of lines</tt>
	*/
	@:overload public function getStartPosition(line : Int) : Int;
	
	/** Find the position corresponding to a (line,column).
	*
	* @param   line    number of line (first is 1)
	* @param   column  number of character on line (first is 1)
	*
	* @return  position of character
	* @throws  ArrayIndexOutOfBoundsException
	*           if <tt>line < 1</tt>
	*           if <tt>line > no. of lines</tt>
	*/
	@:overload public function getPosition(line : Int, column : Int) : Int;
	
	/** Find the line containing a position; a line termination
	* character is on the line it terminates.
	*
	* @param   pos  character offset of the position
	* @return the line number on which pos occurs (first line is 1)
	*/
	@:overload public function getLineNumber(pos : Int) : Int;
	
	/** Find the column for a character position.
	*  Note:  this method does not handle tab expansion.
	*  If tab expansion is needed, use a LineTabMap instead.
	*
	* @param  pos   character offset of the position
	* @return       the column number at which pos occurs
	*/
	@:overload public function getColumnNumber(pos : Int) : Int;
	
	
}
@:native('com$sun$tools$javac$util$Position$LineMapImpl') @:internal extern class Position_LineMapImpl implements com.sun.source.tree.LineMap
{
	private var startPosition : java.NativeArray<Int>;
	
	@:overload private function new() : Void;
	
	@:overload private function build(src : java.NativeArray<java.StdTypes.Char16>, max : Int) : Void;
	
	@:overload public function getStartPosition(line : Int) : Int;
	
	@:overload public function getStartPosition(line : haxe.Int64) : haxe.Int64;
	
	@:overload public function getPosition(line : Int, column : Int) : Int;
	
	@:overload public function getPosition(line : haxe.Int64, column : haxe.Int64) : haxe.Int64;
	
	@:overload public function getLineNumber(pos : Int) : Int;
	
	@:overload public function getLineNumber(pos : haxe.Int64) : haxe.Int64;
	
	@:overload public function getColumnNumber(pos : Int) : Int;
	
	@:overload public function getColumnNumber(pos : haxe.Int64) : haxe.Int64;
	
	@:overload private function setTabPosition(offset : Int) : Void;
	
	
}
/**
* A LineMap that handles tab expansion correctly.  The cost is
* an additional bit per character in the source array.
*/
@:native('com$sun$tools$javac$util$Position$LineTabMapImpl') extern class Position_LineTabMapImpl extends Position_LineMapImpl
{
	@:overload public function new(max : Int) : Void;
	
	@:overload override private function setTabPosition(offset : Int) : Void;
	
	@:overload override public function getColumnNumber(pos : Int) : Int;
	
	@:overload override public function getPosition(line : Int, column : Int) : Int;
	
	
}
