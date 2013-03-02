package sun.font;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
*
* (C) Copyright IBM Corp. 1998-2003 - All Rights Reserved
*/
extern class StandardTextSource extends sun.font.TextSource
{
	/**
	* Create a simple implementation of a TextSource.
	*
	* Chars is an array containing clen chars in the context, in
	* logical order, contiguously starting at cstart.  Start and len
	* represent that portion of the context representing the true
	* source; start, like cstart, is relative to the start of the
	* character array.
	*
	* Level is the bidi level (0-63 for the entire context. Flags is
	* the layout flags. Font is the font, frc is the render context,
	* and lm is the line metrics for the entire source text, but not
	* necessarily the context.
	*/
	@:overload public function new(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int, cstart : Int, clen : Int, level : Int, flags : Int, font : java.awt.Font, frc : java.awt.font.FontRenderContext, cm : sun.font.CoreMetrics) : Void;
	
	/** Create a StandardTextSource whose context is coextensive with the source. */
	@:overload public function new(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int, level : Int, flags : Int, font : java.awt.Font, frc : java.awt.font.FontRenderContext, cm : sun.font.CoreMetrics) : Void;
	
	/** Create a StandardTextSource whose context and source are coextensive with the entire char array. */
	@:overload public function new(chars : java.NativeArray<java.StdTypes.Char16>, level : Int, flags : Int, font : java.awt.Font, frc : java.awt.font.FontRenderContext) : Void;
	
	/** Create a StandardTextSource whose context and source are all the text in the String. */
	@:overload public function new(str : String, level : Int, flags : Int, font : java.awt.Font, frc : java.awt.font.FontRenderContext) : Void;
	
	@:overload public function getChars() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload public function getStart() : Int;
	
	@:overload public function getLength() : Int;
	
	@:overload public function getContextStart() : Int;
	
	@:overload public function getContextLength() : Int;
	
	@:overload public function getLayoutFlags() : Int;
	
	@:overload public function getBidiLevel() : Int;
	
	@:overload public function getFont() : java.awt.Font;
	
	@:overload public function getFRC() : java.awt.font.FontRenderContext;
	
	@:overload public function getCoreMetrics() : sun.font.CoreMetrics;
	
	@:overload public function getSubSource(start : Int, length : Int, dir : Int) : sun.font.TextSource;
	
	@:overload public function toString() : String;
	
	@:overload public function toString(withContext : Bool) : String;
	
	
}
