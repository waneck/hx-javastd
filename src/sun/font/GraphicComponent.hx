package sun.font;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class GraphicComponent implements sun.font.TextLineComponent implements sun.font.Decoration.Decoration_Label
{
	public static var GRAPHIC_LEADING(default, null) : Single;
	
	/**
	* Create a new GraphicComponent.  start and limit are indices
	* into charLtoV and levels.  charsLtoV and levels may be adopted.
	*/
	@:overload public function new(graphic : java.awt.font.GraphicAttribute, decorator : sun.font.Decoration, charsLtoV : java.NativeArray<Int>, levels : java.NativeArray<java.StdTypes.Int8>, start : Int, limit : Int, baseTx : java.awt.geom.AffineTransform) : Void;
	
	@:overload public function isSimple() : Bool;
	
	@:overload public function getPixelBounds(frc : java.awt.font.FontRenderContext, x : Single, y : Single) : java.awt.Rectangle;
	
	@:overload public function handleGetVisualBounds() : java.awt.geom.Rectangle2D;
	
	@:overload public function getCoreMetrics() : sun.font.CoreMetrics;
	
	@:overload public static function createCoreMetrics(graphic : java.awt.font.GraphicAttribute) : sun.font.CoreMetrics;
	
	@:overload public function getItalicAngle() : Single;
	
	@:overload public function getVisualBounds() : java.awt.geom.Rectangle2D;
	
	@:overload public function handleGetOutline(x : Single, y : Single) : java.awt.Shape;
	
	@:overload public function getBaselineTransform() : java.awt.geom.AffineTransform;
	
	@:overload public function getOutline(x : Single, y : Single) : java.awt.Shape;
	
	@:overload public function handleDraw(g2d : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	@:overload public function draw(g2d : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	@:overload public function getCharVisualBounds(index : Int) : java.awt.geom.Rectangle2D;
	
	@:overload public function getNumCharacters() : Int;
	
	@:overload public function getCharX(index : Int) : Single;
	
	@:overload public function getCharY(index : Int) : Single;
	
	@:overload public function getCharAdvance(index : Int) : Single;
	
	@:overload public function caretAtOffsetIsValid(index : Int) : Bool;
	
	@:overload public function handleGetCharVisualBounds(index : Int) : java.awt.geom.Rectangle2D;
	
	@:overload public function getLineBreakIndex(start : Int, width : Single) : Int;
	
	@:overload public function getAdvanceBetween(start : Int, limit : Int) : Single;
	
	@:overload public function getLogicalBounds() : java.awt.geom.Rectangle2D;
	
	@:overload public function getAdvance() : Single;
	
	@:overload public function getItalicBounds() : java.awt.geom.Rectangle2D;
	
	@:overload public function getSubset(start : Int, limit : Int, dir : Int) : sun.font.TextLineComponent;
	
	@:overload public function toString() : String;
	
	/**
	* Return the number of justification records this uses.
	*/
	@:overload public function getNumJustificationInfos() : Int;
	
	/**
	* Return GlyphJustificationInfo objects for the characters between
	* charStart and charLimit, starting at offset infoStart.  Infos
	* will be in visual order.  All positions between infoStart and
	* getNumJustificationInfos will be set.  If a position corresponds
	* to a character outside the provided range, it is set to null.
	*/
	@:overload public function getJustificationInfos(infos : java.NativeArray<java.awt.font.GlyphJustificationInfo>, infoStart : Int, charStart : Int, charLimit : Int) : Void;
	
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
	@:overload public function applyJustificationDeltas(deltas : java.NativeArray<Single>, deltaStart : Int, flags : java.NativeArray<Bool>) : sun.font.TextLineComponent;
	
	
}
