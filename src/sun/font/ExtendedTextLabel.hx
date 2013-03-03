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
* (C) Copyright IBM Corp. 1998-2003- All Rights Reserved.
*/
extern class ExtendedTextLabel extends sun.font.TextLabel implements sun.font.TextLineComponent
{
	/**
	* Return the number of characters represented by this label.
	*/
	@:overload @:public @:abstract public function getNumCharacters() : Int;
	
	/**
	* Return the line metrics for all text in this label.
	*/
	@:overload @:public @:abstract public function getCoreMetrics() : sun.font.CoreMetrics;
	
	/**
	* Return the x location of the character at the given logical index.
	*/
	@:overload @:public @:abstract public function getCharX(logicalIndex : Int) : Single;
	
	/**
	* Return the y location of the character at the given logical index.
	*/
	@:overload @:public @:abstract public function getCharY(logicalIndex : Int) : Single;
	
	/**
	* Return the advance of the character at the given logical index.
	*/
	@:overload @:public @:abstract public function getCharAdvance(logicalIndex : Int) : Single;
	
	/**
	* Return the visual bounds of the character at the given logical index.
	* This bounds encloses all the pixels of the character when the label is rendered
	* at x, y.
	*/
	@:overload @:public @:abstract public function getCharVisualBounds(logicalIndex : Int, x : Single, y : Single) : java.awt.geom.Rectangle2D;
	
	/**
	* Return the visual index of the character at the given logical index.
	*/
	@:overload @:public @:abstract public function logicalToVisual(logicalIndex : Int) : Int;
	
	/**
	* Return the logical index of the character at the given visual index.
	*/
	@:overload @:public @:abstract public function visualToLogical(visualIndex : Int) : Int;
	
	/**
	* Return the logical index of the character, starting with the character at
	* logicalStart, whose accumulated advance exceeds width.  If the advances of
	* all characters do not exceed width, return getNumCharacters.  If width is
	* less than zero, return logicalStart - 1.
	*/
	@:overload @:public @:abstract public function getLineBreakIndex(logicalStart : Int, width : Single) : Int;
	
	/**
	* Return the accumulated advances of all characters between logicalStart and
	* logicalLimit.
	*/
	@:overload @:public @:abstract public function getAdvanceBetween(logicalStart : Int, logicalLimit : Int) : Single;
	
	/**
	* Return whether a caret can exist on the leading edge of the
	* character at offset.  If the character is part of a ligature
	* (for example) a caret may not be appropriate at offset.
	*/
	@:overload @:public @:abstract public function caretAtOffsetIsValid(offset : Int) : Bool;
	
	/**
	* A convenience overload of getCharVisualBounds that defaults the label origin
	* to 0, 0.
	*/
	@:overload @:public public function getCharVisualBounds(logicalIndex : Int) : java.awt.geom.Rectangle2D;
	
	@:overload @:public @:abstract public function getSubset(start : Int, limit : Int, dir : Int) : sun.font.TextLineComponent;
	
	/**
	* Return the number of justification records this uses.
	*/
	@:overload @:public @:abstract public function getNumJustificationInfos() : Int;
	
	/**
	* Return GlyphJustificationInfo objects for the characters between
	* charStart and charLimit, starting at offset infoStart.  Infos
	* will be in visual order.  All positions between infoStart and
	* getNumJustificationInfos will be set.  If a position corresponds
	* to a character outside the provided range, it is set to null.
	*/
	@:overload @:public @:abstract public function getJustificationInfos(infos : java.NativeArray<java.awt.font.GlyphJustificationInfo>, infoStart : Int, charStart : Int, charLimit : Int) : Void;
	
	/**
	* Apply deltas to the data in this component, starting at offset
	* deltaStart, and return the new component.  There are two floats
	* for each justification info, for a total of 2 * getNumJustificationInfos.
	* The first delta is the left adjustment, the second is the right
	* adjustment.
	* <p>
	* If flags[0] is true on entry, rejustification is allowed.  If
	* the new component requires rejustification (ligatures were
	* formed or split), flags[0] will be set on exit.
	*/
	@:overload @:public @:abstract public function applyJustificationDeltas(deltas : java.NativeArray<Single>, deltaStart : Int, flags : java.NativeArray<Bool>) : sun.font.TextLineComponent;
	
	@:overload @:public @:public override public function getLogicalBounds() : java.awt.geom.Rectangle2D;
	
	@:overload @:public @:public override public function getVisualBounds() : java.awt.geom.Rectangle2D;
	
	@:overload @:public @:public override public function getItalicBounds() : java.awt.geom.Rectangle2D;
	
	@:overload @:public @:public public function getBaselineTransform() : java.awt.geom.AffineTransform;
	
	@:overload @:public @:public public function getAdvance() : Single;
	
	@:overload @:public @:public override public function getOutline(x : Single, y : Single) : java.awt.Shape;
	
	@:overload @:public @:public public function isSimple() : Bool;
	
	@:overload @:public @:public public function getPixelBounds(frc : java.awt.font.FontRenderContext, x : Single, y : Single) : java.awt.Rectangle;
	
	@:overload @:public @:public override public function draw(g2d : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	
}
