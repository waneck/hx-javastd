package java.awt.font;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996 - 1997, All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998, All Rights Reserved
*
* The original version of this source code and documentation is
* copyrighted and owned by Taligent, Inc., a wholly-owned subsidiary
* of IBM. These materials are provided under terms of a License
* Agreement between Taligent and Sun. This technology is protected
* by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class GlyphMetrics
{
	/**
	* Indicates a glyph that represents a single standard
	* character.
	*/
	public static var STANDARD(default, null) : java.StdTypes.Int8;
	
	/**
	* Indicates a glyph that represents multiple characters
	* as a ligature, for example 'fi' or 'ffi'.  It is followed by
	* filler glyphs for the remaining characters. Filler and combining
	* glyphs can be intermixed to control positioning of accent marks
	* on the logically preceeding ligature.
	*/
	public static var LIGATURE(default, null) : java.StdTypes.Int8;
	
	/**
	* Indicates a glyph that represents a combining character,
	* such as an umlaut.  There is no caret position between this glyph
	* and the preceeding glyph.
	*/
	public static var COMBINING(default, null) : java.StdTypes.Int8;
	
	/**
	* Indicates a glyph with no corresponding character in the
	* backing store.  The glyph is associated with the character
	* represented by the logicaly preceeding non-component glyph.  This
	* is used for kashida justification or other visual modifications to
	* existing glyphs.  There is no caret position between this glyph
	* and the preceeding glyph.
	*/
	public static var COMPONENT(default, null) : java.StdTypes.Int8;
	
	/**
	* Indicates a glyph with no visual representation. It can
	* be added to the other code values to indicate an invisible glyph.
	*/
	public static var WHITESPACE(default, null) : java.StdTypes.Int8;
	
	/**
	* Constructs a <code>GlyphMetrics</code> object.
	* @param advance the advance width of the glyph
	* @param bounds the black box bounds of the glyph
	* @param glyphType the type of the glyph
	*/
	@:overload public function new(advance : Single, bounds : java.awt.geom.Rectangle2D, glyphType : java.StdTypes.Int8) : Void;
	
	/**
	* Constructs a <code>GlyphMetrics</code> object.
	* @param horizontal if true, metrics are for a horizontal baseline,
	*   otherwise they are for a vertical baseline
	* @param advanceX the X-component of the glyph's advance
	* @param advanceY the Y-component of the glyph's advance
	* @param bounds the visual bounds of the glyph
	* @param glyphType the type of the glyph
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(horizontal : Bool, advanceX : Single, advanceY : Single, bounds : java.awt.geom.Rectangle2D, glyphType : java.StdTypes.Int8) : Void;
	
	/**
	* Returns the advance of the glyph along the baseline (either
	* horizontal or vertical).
	* @return the advance of the glyph
	*/
	@:overload public function getAdvance() : Single;
	
	/**
	* Returns the x-component of the advance of the glyph.
	* @return the x-component of the advance of the glyph
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAdvanceX() : Single;
	
	/**
	* Returns the y-component of the advance of the glyph.
	* @return the y-component of the advance of the glyph
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAdvanceY() : Single;
	
	/**
	* Returns the bounds of the glyph. This is the bounding box of the glyph outline.
	* Because of rasterization and pixel alignment effects, it does not necessarily
	* enclose the pixels that are affected when rendering the glyph.
	* @return a {@link Rectangle2D} that is the bounds of the glyph.
	*/
	@:overload public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the left (top) side bearing of the glyph.
	* <p>
	* This is the distance from 0,&nbsp;0 to the left (top) of the glyph
	* bounds.  If the bounds of the glyph is to the left of (above) the
	* origin, the LSB is negative.
	* @return the left side bearing of the glyph.
	*/
	@:overload public function getLSB() : Single;
	
	/**
	* Returns the right (bottom) side bearing of the glyph.
	* <p>
	* This is the distance from the right (bottom) of the glyph bounds to
	* the advance. If the bounds of the glyph is to the right of (below)
	* the advance, the RSB is negative.
	* @return the right side bearing of the glyph.
	*/
	@:overload public function getRSB() : Single;
	
	/**
	* Returns the raw glyph type code.
	* @return the raw glyph type code.
	*/
	@:overload public function getType() : Int;
	
	/**
	* Returns <code>true</code> if this is a standard glyph.
	* @return <code>true</code> if this is a standard glyph;
	*          <code>false</code> otherwise.
	*/
	@:overload public function isStandard() : Bool;
	
	/**
	* Returns <code>true</code> if this is a ligature glyph.
	* @return <code>true</code> if this is a ligature glyph;
	*          <code>false</code> otherwise.
	*/
	@:overload public function isLigature() : Bool;
	
	/**
	* Returns <code>true</code> if this is a combining glyph.
	* @return <code>true</code> if this is a combining glyph;
	*          <code>false</code> otherwise.
	*/
	@:overload public function isCombining() : Bool;
	
	/**
	* Returns <code>true</code> if this is a component glyph.
	* @return <code>true</code> if this is a component glyph;
	*          <code>false</code> otherwise.
	*/
	@:overload public function isComponent() : Bool;
	
	/**
	* Returns <code>true</code> if this is a whitespace glyph.
	* @return <code>true</code> if this is a whitespace glyph;
	*          <code>false</code> otherwise.
	*/
	@:overload public function isWhitespace() : Bool;
	
	
}
