package sun.font;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. 1999-2003 - All Rights Reserved
*
* The original version of this source code and documentation is
* copyrighted and owned by IBM. These materials are provided
* under terms of a License Agreement between IBM and Sun.
* This technology is protected by multiple US and International
* patents. This notice and attribution to IBM may not be removed.
*/
/*
* GlyphLayout is used to process a run of text into a run of run of
* glyphs, optionally with position and char mapping info.
*
* The text has already been processed for numeric shaping and bidi.
* The run of text that layout works on has a single bidi level.  It
* also has a single font/style.  Some operations need context to work
* on (shaping, script resolution) so context for the text run text is
* provided.  It is assumed that the text array contains sufficient
* context, and the offset and count delimit the portion of the text
* that needs to actually be processed.
*
* The font might be a composite font.  Layout generally requires
* tables from a single physical font to operate, and so it must
* resolve the 'single' font run into runs of physical fonts.
*
* Some characters are supported by several fonts of a composite, and
* in order to properly emulate the glyph substitution behavior of a
* single physical font, these characters might need to be mapped to
* different physical fonts.  The script code that is assigned
* characters normally considered 'common script' can be used to
* resolve which physical font to use for these characters. The input
* to the char to glyph mapper (which assigns physical fonts as it
* processes the glyphs) should include the script code, and the
* mapper should operate on runs of a single script.
*
* To perform layout, call get() to get a new (or reuse an old)
* GlyphLayout, call layout on it, then call done(GlyphLayout) when
* finished.  There's no particular problem if you don't call done,
* but it assists in reuse of the GlyphLayout.
*/
extern class GlyphLayout
{
	/**
	* Return a new instance of GlyphLayout, using the provided layout engine factory.
	* If null, the system layout engine factory will be used.
	*/
	@:overload public static function get(lef : GlyphLayout_LayoutEngineFactory) : GlyphLayout;
	
	/**
	* Return the old instance of GlyphLayout when you are done.  This enables reuse
	* of GlyphLayout objects.
	*/
	@:overload public static function done(gl : GlyphLayout) : Void;
	
	/**
	* Create a glyph vector.
	* @param font the font to use
	* @param frc the font render context
	* @param text the text, including optional context before start and after start + count
	* @param offset the start of the text to lay out
	* @param count the length of the text to lay out
	* @param flags bidi and context flags {@see #java.awt.Font}
	* @param result a StandardGlyphVector to modify, can be null
	* @return the layed out glyphvector, if result was passed in, it is returned
	*/
	@:overload public function layout(font : java.awt.Font, frc : java.awt.font.FontRenderContext, text : java.NativeArray<java.StdTypes.Char16>, offset : Int, count : Int, flags : Int, result : sun.font.StandardGlyphVector) : sun.font.StandardGlyphVector;
	
	
}
@:native('sun$font$GlyphLayout$LayoutEngineKey') extern class GlyphLayout_LayoutEngineKey
{
	@:overload public function equals(rhs : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
@:native('sun$font$GlyphLayout$LayoutEngineFactory') extern interface GlyphLayout_LayoutEngineFactory
{
	/**
	* Given a font, script, and language, determine a layout engine to use.
	*/
	@:overload public function getEngine(font : sun.font.Font2D, script : Int, lang : Int) : GlyphLayout_LayoutEngine;
	
	/**
	* Given a key, determine a layout engine to use.
	*/
	@:overload public function getEngine(key : GlyphLayout_LayoutEngineKey) : GlyphLayout_LayoutEngine;
	
	
}
@:native('sun$font$GlyphLayout$LayoutEngine') extern interface GlyphLayout_LayoutEngine
{
	/**
	* Given a strike descriptor, text, rtl flag, and starting point, append information about
	* glyphs, positions, and character indices to the glyphvector data, and advance the point.
	*
	* If the GVData does not have room for the glyphs, throws an IndexOutOfBoundsException and
	* leave pt and the gvdata unchanged.
	*/
	@:overload public function layout(sd : sun.font.FontStrikeDesc, mat : java.NativeArray<Single>, gmask : Int, baseIndex : Int, text : sun.font.TextRecord, typo_flags : Int, pt : java.awt.geom.Point2D.Point2D_Float, data : GlyphLayout_GVData) : Void;
	
	
}
@:native('sun$font$GlyphLayout$SDCache') @:internal extern class GlyphLayout_SDCache
{
	public var key_font : java.awt.Font;
	
	public var key_frc : java.awt.font.FontRenderContext;
	
	public var dtx : java.awt.geom.AffineTransform;
	
	public var invdtx : java.awt.geom.AffineTransform;
	
	public var gtx : java.awt.geom.AffineTransform;
	
	public var delta : java.awt.geom.Point2D.Point2D_Float;
	
	public var sd : sun.font.FontStrikeDesc;
	
	@:overload public static function get(font : java.awt.Font, frc : java.awt.font.FontRenderContext) : GlyphLayout_SDCache;
	
	
}
@:native('sun$font$GlyphLayout$SDCache$SDKey') @:internal extern class GlyphLayout_SDCache_SDKey
{
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	
}
/**
* Storage for layout to build glyph vector data, then generate a real GlyphVector
*/
@:native('sun$font$GlyphLayout$GVData') extern class GlyphLayout_GVData
{
	public var _count : Int;
	
	public var _flags : Int;
	
	public var _glyphs : java.NativeArray<Int>;
	
	public var _positions : java.NativeArray<Single>;
	
	public var _indices : java.NativeArray<Int>;
	
	@:overload public function init(size : Int) : Void;
	
	@:overload public function grow() : Void;
	
	@:overload public function grow(delta : Int) : Void;
	
	@:overload public function adjustPositions(invdtx : java.awt.geom.AffineTransform) : Void;
	
	@:overload public function createGlyphVector(font : java.awt.Font, frc : java.awt.font.FontRenderContext, result : sun.font.StandardGlyphVector) : sun.font.StandardGlyphVector;
	
	
}
/**
* Utility class to keep track of script runs, which may have to be reordered rtl when we're
* finished.
*/
@:native('sun$font$GlyphLayout$EngineRecord') @:internal extern class GlyphLayout_EngineRecord
{
	
}
