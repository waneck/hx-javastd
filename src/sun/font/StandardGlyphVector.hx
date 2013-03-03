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
extern class StandardGlyphVector extends java.awt.font.GlyphVector
{
	@:overload @:public public function new(font : java.awt.Font, str : String, frc : java.awt.font.FontRenderContext) : Void;
	
	@:overload @:public public function new(font : java.awt.Font, text : java.NativeArray<java.StdTypes.Char16>, frc : java.awt.font.FontRenderContext) : Void;
	
	@:overload @:public public function new(font : java.awt.Font, text : java.NativeArray<java.StdTypes.Char16>, start : Int, count : Int, frc : java.awt.font.FontRenderContext) : Void;
	
	@:overload @:public public function new(font : java.awt.Font, frc : java.awt.font.FontRenderContext, glyphs : java.NativeArray<Int>, positions : java.NativeArray<Single>, indices : java.NativeArray<Int>, flags : Int) : Void;
	
	@:overload @:public public function initGlyphVector(font : java.awt.Font, frc : java.awt.font.FontRenderContext, glyphs : java.NativeArray<Int>, positions : java.NativeArray<Single>, indices : java.NativeArray<Int>, flags : Int) : Void;
	
	@:overload @:public public function new(font : java.awt.Font, iter : java.text.CharacterIterator, frc : java.awt.font.FontRenderContext) : Void;
	
	@:overload @:public public function new(font : java.awt.Font, glyphs : java.NativeArray<Int>, frc : java.awt.font.FontRenderContext) : Void;
	
	/* This is called from the rendering loop. FontInfo is supplied
	* because a GV caches a strike and glyph images suitable for its FRC.
	* LCD text isn't currently supported on all surfaces, in which case
	* standard AA must be used. This is most likely to occur when LCD text
	* is requested and the surface is some non-standard type or hardward
	* surface for which there are no accelerated loops.
	* We can detect this as being AA=="ON" in the FontInfo and AA!="ON"
	* and AA!="GASP" in the FRC - since this only occurs for LCD text we don't
	* need to check any more precisely what value is in the FRC.
	*/
	@:overload @:public @:static public static function getStandardGV(gv : java.awt.font.GlyphVector, info : sun.java2d.loops.FontInfo) : sun.font.StandardGlyphVector;
	
	@:overload @:public override public function getFont() : java.awt.Font;
	
	@:overload @:public override public function getFontRenderContext() : java.awt.font.FontRenderContext;
	
	@:overload @:public override public function performDefaultLayout() : Void;
	
	@:overload @:public override public function getNumGlyphs() : Int;
	
	@:overload @:public override public function getGlyphCode(glyphIndex : Int) : Int;
	
	@:overload @:public override public function getGlyphCodes(start : Int, count : Int, result : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	@:overload @:public override public function getGlyphCharIndex(ix : Int) : Int;
	
	@:overload @:public override public function getGlyphCharIndices(start : Int, count : Int, result : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	@:overload @:public override public function getLogicalBounds() : java.awt.geom.Rectangle2D;
	
	@:overload @:public override public function getVisualBounds() : java.awt.geom.Rectangle2D;
	
	@:overload @:public override public function getPixelBounds(renderFRC : java.awt.font.FontRenderContext, x : Single, y : Single) : java.awt.Rectangle;
	
	@:overload @:public override public function getOutline() : java.awt.Shape;
	
	@:overload @:public override public function getOutline(x : Single, y : Single) : java.awt.Shape;
	
	@:overload @:public override public function getGlyphOutline(ix : Int) : java.awt.Shape;
	
	@:overload @:public override public function getGlyphOutline(ix : Int, x : Single, y : Single) : java.awt.Shape;
	
	@:overload @:public override public function getGlyphPosition(ix : Int) : java.awt.geom.Point2D;
	
	@:overload @:public override public function setGlyphPosition(ix : Int, pos : java.awt.geom.Point2D) : Void;
	
	@:overload @:public override public function getGlyphTransform(ix : Int) : java.awt.geom.AffineTransform;
	
	@:overload @:public override public function setGlyphTransform(ix : Int, newTX : java.awt.geom.AffineTransform) : Void;
	
	@:overload @:public override public function getLayoutFlags() : Int;
	
	@:overload @:public override public function getGlyphPositions(start : Int, count : Int, result : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	@:overload @:public override public function getGlyphLogicalBounds(ix : Int) : java.awt.Shape;
	
	@:overload @:public override public function getGlyphVisualBounds(ix : Int) : java.awt.Shape;
	
	@:overload @:public override public function getGlyphPixelBounds(index : Int, renderFRC : java.awt.font.FontRenderContext, x : Single, y : Single) : java.awt.Rectangle;
	
	@:overload @:public override public function getGlyphMetrics(ix : Int) : java.awt.font.GlyphMetrics;
	
	@:overload @:public override public function getGlyphJustificationInfo(ix : Int) : java.awt.font.GlyphJustificationInfo;
	
	@:overload @:public override public function equals(rhs : java.awt.font.GlyphVector) : Bool;
	
	/**
	* As a concrete subclass of Object that implements equality, this must
	* implement hashCode.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Since we implement equality comparisons for GlyphVector, we implement
	* the inherited Object.equals(Object) as well.  GlyphVector should do
	* this, and define two glyphvectors as not equal if the classes differ.
	*/
	@:overload @:public public function equals(rhs : Dynamic) : Bool;
	
	/**
	* Sometimes I wish java had covariant return types...
	*/
	@:overload @:public public function copy() : sun.font.StandardGlyphVector;
	
	/**
	* As a concrete subclass of GlyphVector, this must implement clone.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/*
	* Set a multiple glyph positions at one time.  GlyphVector only
	* provides API to set a single glyph at a time.
	*/
	@:overload @:public public function setGlyphPositions(srcPositions : java.NativeArray<Single>, srcStart : Int, start : Int, count : Int) : Void;
	
	/**
	* Set all the glyph positions, including the 'after last glyph' position.
	* The srcPositions array must be of length (numGlyphs + 1) * 2.
	*/
	@:overload @:public public function setGlyphPositions(srcPositions : java.NativeArray<Single>) : Void;
	
	/**
	* This is a convenience overload that gets all the glyph positions, which
	* is what you usually want to do if you're getting more than one.
	* !!! should I bother taking result parameter?
	*/
	@:overload @:public public function getGlyphPositions(result : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Get transform information for the requested range of glyphs.
	* If no glyphs have a transform, return null.
	* If a glyph has no transform (or is the identity transform) its entry in the result array will be null.
	* If the passed-in result is null an array will be allocated for the caller.
	* Each transform instance in the result array will unique, and independent of the GlyphVector's transform.
	*/
	@:overload @:public public function getGlyphTransforms(start : Int, count : Int, result : java.NativeArray<java.awt.geom.AffineTransform>) : java.NativeArray<java.awt.geom.AffineTransform>;
	
	/**
	* Convenience overload for getGlyphTransforms(int, int, AffineTransform[], int);
	*/
	@:overload @:public public function getGlyphTransforms() : java.NativeArray<java.awt.geom.AffineTransform>;
	
	/**
	* Set a number of glyph transforms.
	* Original transforms are unchanged.  The array may contain nulls, and also may
	* contain multiple references to the same transform instance.
	*/
	@:overload @:public public function setGlyphTransforms(srcTransforms : java.NativeArray<java.awt.geom.AffineTransform>, srcStart : Int, start : Int, count : Int) : Void;
	
	/**
	* Convenience overload of setGlyphTransforms(AffineTransform[], int, int, int).
	*/
	@:overload @:public public function setGlyphTransforms(srcTransforms : java.NativeArray<java.awt.geom.AffineTransform>) : Void;
	
	/**
	* For each glyph return posx, posy, advx, advy, visx, visy, visw, vish.
	*/
	@:overload @:public public function getGlyphInfo() : java.NativeArray<Single>;
	
	/**
	* !!! not used currently, but might be by getPixelbounds?
	*/
	@:overload @:public public function pixellate(renderFRC : java.awt.font.FontRenderContext, loc : java.awt.geom.Point2D, pxResult : java.awt.Point) : Void;
	
	/**
	* A flag used with getLayoutFlags that indicates whether this <code>GlyphVector</code> uses
	* a vertical baseline.
	*/
	@:public @:static @:final public static var FLAG_USES_VERTICAL_BASELINE(default, null) : Int;
	
	/**
	* A flag used with getLayoutFlags that indicates whether this <code>GlyphVector</code> uses
	* vertical glyph metrics.  A <code>GlyphVector</code> can use vertical metrics on a
	* horizontal line, or vice versa.
	*/
	@:public @:static @:final public static var FLAG_USES_VERTICAL_METRICS(default, null) : Int;
	
	/**
	* A flag used with getLayoutFlags that indicates whether this <code>GlyphVector</code> uses
	* the 'alternate orientation.'  Glyphs have a default orientation given a
	* particular baseline and metrics orientation, this is the orientation appropriate
	* for left-to-right text.  For example, the letter 'A' can have four orientations,
	* with the point at 12, 3, 6, or 9 'o clock.  The following table shows where the
	* point displays for different values of vertical baseline (vb), vertical
	* metrics (vm) and alternate orientation (fo):<br>
	* <blockquote>
	* vb vm ao
	* -- -- --  --
	*  f  f  f  12   ^  horizontal metrics on horizontal lines
	*  f  f  t   6   v
	*  f  t  f   9   <  vertical metrics on horizontal lines
	*  f  t  t   3   >
	*  t  f  f   3   >  horizontal metrics on vertical lines
	*  t  f  t   9   <
	*  t  t  f  12   ^  vertical metrics on vertical lines
	*  t  t  t   6   v
	* </blockquote>
	*/
	@:public @:static @:final public static var FLAG_USES_ALTERNATE_ORIENTATION(default, null) : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('sun$font$StandardGlyphVector$GlyphTransformInfo') @:internal extern class StandardGlyphVector_GlyphTransformInfo
{
	@:overload @:public public function equals(rhs : sun.font.StandardGlyphVector.StandardGlyphVector_GlyphTransformInfo) : Bool;
	
	
}
@:native('sun$font$StandardGlyphVector$GlyphStrike') extern class StandardGlyphVector_GlyphStrike
{
	
}
@:native('sun$font$StandardGlyphVector$ADL') @:internal extern class StandardGlyphVector_ADL
{
	@:public public var ascentX : Single;
	
	@:public public var ascentY : Single;
	
	@:public public var descentX : Single;
	
	@:public public var descentY : Single;
	
	@:public public var leadingX : Single;
	
	@:public public var leadingY : Single;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:protected private function toStringBuffer(result : java.lang.StringBuffer) : java.lang.StringBuffer;
	
	
}
