package sun.font;
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
extern class FontDesignMetrics extends java.awt.FontMetrics
{
	@:overload public static function getMetrics(font : java.awt.Font) : sun.font.FontDesignMetrics;
	
	@:overload public static function getMetrics(font : java.awt.Font, frc : java.awt.font.FontRenderContext) : sun.font.FontDesignMetrics;
	
	/* Override of FontMetrics.getFontRenderContext() */
	@:overload public function getFontRenderContext() : java.awt.font.FontRenderContext;
	
	@:overload public function charWidth(ch : java.StdTypes.Char16) : Int;
	
	@:overload public function charWidth(ch : Int) : Int;
	
	@:overload public function stringWidth(str : String) : Int;
	
	@:overload public function charsWidth(data : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Int;
	
	/**
	* Gets the advance widths of the first 256 characters in the
	* <code>Font</code>.  The advance is the
	* distance from the leftmost point to the rightmost point on the
	* character's baseline.  Note that the advance of a
	* <code>String</code> is not necessarily the sum of the advances
	* of its characters.
	* @return    an array storing the advance widths of the
	*                 characters in the <code>Font</code>
	*                 described by this <code>FontMetrics</code> object.
	*/
	@:overload public function getWidths() : java.NativeArray<Int>;
	
	@:overload public function getMaxAdvance() : Int;
	
	/*
	* Returns the typographic ascent of the font. This is the maximum distance
	* glyphs in this font extend above the base line (measured in typographic
	* units).
	*/
	@:overload public function getAscent() : Int;
	
	/*
	* Returns the typographic descent of the font. This is the maximum distance
	* glyphs in this font extend below the base line.
	*/
	@:overload public function getDescent() : Int;
	
	@:overload public function getLeading() : Int;
	
	@:overload public function getHeight() : Int;
	
	
}
/* Strongly cache up to 5 most recently requested FontMetrics objects,
* and softly cache as many as GC allows. In practice this means we
* should keep references around until memory gets low.
* We key the cache either by a Font or a combination of the Font and
* and FRC. A lot of callers use only the font so although there's code
* duplication, we allow just a font to be a key implying a default FRC.
* Also we put the references on a queue so that if they do get nulled
* out we can clear the keys from the table.
*/
@:native('sun$font$FontDesignMetrics$KeyReference') @:internal extern class FontDesignMetrics_KeyReference extends java.lang.ref.SoftReference<Dynamic> implements sun.java2d.DisposerRecord implements sun.java2d.Disposer.Disposer_PollDisposable
{
	/* It is possible that since this reference object has been
	* enqueued, that a new metrics has been put into the table
	* for the same key value. So we'll test to see if the table maps
	* to THIS reference. If its a new one, we'll leave it alone.
	* It is possible that a new entry comes in after our test, but
	* it is unlikely and if this were a problem we would need to
	* synchronize all 'put' and 'remove' accesses to the cache which
	* I would prefer not to do.
	*/
	@:overload public function dispose() : Void;
	
	
}
@:native('sun$font$FontDesignMetrics$MetricsKey') @:internal extern class FontDesignMetrics_MetricsKey
{
	@:overload public function equals(key : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
