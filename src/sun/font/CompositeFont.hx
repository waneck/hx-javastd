package sun.font;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class CompositeFont extends sun.font.Font2D
{
	@:overload public function new(name : String, compFileNames : java.NativeArray<String>, compNames : java.NativeArray<String>, metricsSlotCnt : Int, exclRanges : java.NativeArray<Int>, maxIndexes : java.NativeArray<Int>, defer : Bool, fm : sun.font.SunFontManager) : Void;
	
	@:overload public function isExcludedChar(slot : Int, charcode : Int) : Bool;
	
	@:overload public function getStyleMetrics(pointSize : Single, metrics : java.NativeArray<Single>, offset : Int) : Void;
	
	@:overload public function getNumSlots() : Int;
	
	@:overload public function getSlotFont(slot : Int) : sun.font.PhysicalFont;
	
	/* This is set false when the composite is created using a specified
	* physical font as the first slot and called by code which
	* selects composites by locale preferences to know that this
	* isn't a font which should be adjusted.
	*/
	@:overload public function isStdComposite() : Bool;
	
	/* This isn't very efficient but its infrequently used.
	* StandardGlyphVector uses it when the client assigns the glyph codes.
	* These may not be valid. This validates them substituting the missing
	* glyph elsewhere.
	*/
	@:overload private function getValidatedGlyphCode(glyphCode : Int) : Int;
	
	@:overload public function getMapper() : sun.font.CharToGlyphMapper;
	
	@:overload public function hasSupplementaryChars() : Bool;
	
	@:overload public function getNumGlyphs() : Int;
	
	@:overload public function getMissingGlyphCode() : Int;
	
	@:overload public function canDisplay(c : java.StdTypes.Char16) : Bool;
	
	@:overload public function useAAForPtSize(ptsize : Int) : Bool;
	
	@:overload public function toString() : String;
	
	
}
