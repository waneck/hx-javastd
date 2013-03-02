package java.awt.font;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. 1998-2003, All Rights Reserved
*
*/
@:internal extern class TextLine
{
	@:overload public function new(frc : java.awt.font.FontRenderContext, components : java.NativeArray<sun.font.TextLineComponent>, baselineOffsets : java.NativeArray<Single>, chars : java.NativeArray<java.StdTypes.Char16>, charsStart : Int, charsLimit : Int, charLogicalOrder : java.NativeArray<Int>, charLevels : java.NativeArray<java.StdTypes.Int8>, isDirectionLTR : Bool) : Void;
	
	@:overload public function getPixelBounds(frc : java.awt.font.FontRenderContext, x : Single, y : Single) : java.awt.Rectangle;
	
	@:overload public function characterCount() : Int;
	
	@:overload public function isDirectionLTR() : Bool;
	
	@:overload public function getMetrics() : java.awt.font.TextLine.TextLine_TextLineMetrics;
	
	@:overload public function visualToLogical(visualIndex : Int) : Int;
	
	@:overload public function logicalToVisual(logicalIndex : Int) : Int;
	
	@:overload public function getCharLevel(logicalIndex : Int) : java.StdTypes.Int8;
	
	@:overload public function isCharLTR(logicalIndex : Int) : Bool;
	
	@:overload public function getCharType(logicalIndex : Int) : Int;
	
	@:overload public function isCharSpace(logicalIndex : Int) : Bool;
	
	@:overload public function isCharWhitespace(logicalIndex : Int) : Bool;
	
	@:overload public function getCharAngle(logicalIndex : Int) : Single;
	
	@:overload public function getCoreMetricsAt(logicalIndex : Int) : sun.font.CoreMetrics;
	
	@:overload public function getCharAscent(logicalIndex : Int) : Single;
	
	@:overload public function getCharDescent(logicalIndex : Int) : Single;
	
	@:overload public function getCharShift(logicalIndex : Int) : Single;
	
	@:overload public function getCharAdvance(logicalIndex : Int) : Single;
	
	@:overload public function getCharXPosition(logicalIndex : Int) : Single;
	
	@:overload public function getCharYPosition(logicalIndex : Int) : Single;
	
	@:overload public function getCharLinePosition(logicalIndex : Int) : Single;
	
	@:overload public function getCharLinePosition(logicalIndex : Int, leading : Bool) : Single;
	
	@:overload public function caretAtOffsetIsValid(offset : Int) : Bool;
	
	@:overload public function getCharBounds(logicalIndex : Int) : java.awt.geom.Rectangle2D;
	
	@:overload public function draw(g2 : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	/**
	* Return the union of the visual bounds of all the components.
	* This incorporates the path.  It does not include logical
	* bounds (used by carets).
	*/
	@:overload public function getVisualBounds() : java.awt.geom.Rectangle2D;
	
	@:overload public function getItalicBounds() : java.awt.geom.Rectangle2D;
	
	@:overload public function getOutline(tx : java.awt.geom.AffineTransform) : java.awt.Shape;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	/**
	* Create a TextLine from the text.  The Font must be able to
	* display all of the text.
	* attributes==null is equivalent to using an empty Map for
	* attributes
	*/
	@:overload public static function fastCreateTextLine(frc : java.awt.font.FontRenderContext, chars : java.NativeArray<java.StdTypes.Char16>, font : java.awt.Font, lm : sun.font.CoreMetrics, attributes : java.util.Map<Dynamic, Dynamic>) : java.awt.font.TextLine;
	
	/**
	* Returns an array in logical order of the TextLineComponents on
	* the text in the given range, with the given attributes.
	*/
	@:overload public static function createComponentsOnRun(runStart : Int, runLimit : Int, chars : java.NativeArray<java.StdTypes.Char16>, charsLtoV : java.NativeArray<Int>, levels : java.NativeArray<java.StdTypes.Int8>, factory : sun.font.TextLabelFactory, font : java.awt.Font, cm : sun.font.CoreMetrics, frc : java.awt.font.FontRenderContext, decorator : sun.font.Decoration, components : java.NativeArray<sun.font.TextLineComponent>, numComponents : Int) : java.NativeArray<sun.font.TextLineComponent>;
	
	/**
	* Returns an array (in logical order) of the TextLineComponents representing
	* the text.  The components are both logically and visually contiguous.
	*/
	@:overload public static function getComponents(styledParagraph : java.awt.font.StyledParagraph, chars : java.NativeArray<java.StdTypes.Char16>, textStart : Int, textLimit : Int, charsLtoV : java.NativeArray<Int>, levels : java.NativeArray<java.StdTypes.Int8>, factory : sun.font.TextLabelFactory) : java.NativeArray<sun.font.TextLineComponent>;
	
	/**
	* Create a TextLine from the Font and character data over the
	* range.  The range is relative to both the StyledParagraph and the
	* character array.
	*/
	@:overload public static function createLineFromText(chars : java.NativeArray<java.StdTypes.Char16>, styledParagraph : java.awt.font.StyledParagraph, factory : sun.font.TextLabelFactory, isDirectionLTR : Bool, baselineOffsets : java.NativeArray<Single>) : java.awt.font.TextLine;
	
	/**
	* Create a TextLine from the text.  chars is just the text in the iterator.
	*/
	@:overload public static function standardCreateTextLine(frc : java.awt.font.FontRenderContext, text : java.text.AttributedCharacterIterator, chars : java.NativeArray<java.StdTypes.Char16>, baselineOffsets : java.NativeArray<Single>) : java.awt.font.TextLine;
	
	/*
	* create a new line with characters between charStart and charLimit
	* justified using the provided width and ratio.
	*/
	@:overload public function getJustifiedLine(justificationWidth : Single, justifyRatio : Single, justStart : Int, justLimit : Int) : java.awt.font.TextLine;
	
	@:overload public static function getAdvanceBetween(components : java.NativeArray<sun.font.TextLineComponent>, start : Int, limit : Int) : Single;
	
	
}
@:native('java$awt$font$TextLine$TextLineMetrics') @:internal extern class TextLine_TextLineMetrics
{
	public var ascent(default, null) : Single;
	
	public var descent(default, null) : Single;
	
	public var leading(default, null) : Single;
	
	public var advance(default, null) : Single;
	
	@:overload public function new(ascent : Single, descent : Single, leading : Single, advance : Single) : Void;
	
	
}
@:native('java$awt$font$TextLine$Function') @:internal extern class TextLine_Function
{
	
}
