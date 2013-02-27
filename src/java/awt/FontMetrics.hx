package java.awt;
/*
* Copyright (c) 1995, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class FontMetrics implements java.io.Serializable
{
	/**
	* The actual {@link Font} from which the font metrics are
	* created.
	* This cannot be null.
	*
	* @serial
	* @see #getFont()
	*/
	private var font : java.awt.Font;
	
	/**
	* Creates a new <code>FontMetrics</code> object for finding out
	* height and width information about the specified <code>Font</code>
	* and specific character glyphs in that <code>Font</code>.
	* @param     font the <code>Font</code>
	* @see       java.awt.Font
	*/
	@:overload private function new(font : java.awt.Font) : Void;
	
	/**
	* Gets the <code>Font</code> described by this
	* <code>FontMetrics</code> object.
	* @return    the <code>Font</code> described by this
	* <code>FontMetrics</code> object.
	*/
	@:overload public function getFont() : java.awt.Font;
	
	/**
	* Gets the <code>FontRenderContext</code> used by this
	* <code>FontMetrics</code> object to measure text.
	* <p>
	* Note that methods in this class which take a <code>Graphics</code>
	* parameter measure text using the <code>FontRenderContext</code>
	* of that <code>Graphics</code> object, and not this
	* <code>FontRenderContext</code>
	* @return    the <code>FontRenderContext</code> used by this
	* <code>FontMetrics</code> object.
	* @since 1.6
	*/
	@:require(java6) @:overload public function getFontRenderContext() : java.awt.font.FontRenderContext;
	
	/**
	* Determines the <em>standard leading</em> of the
	* <code>Font</code> described by this <code>FontMetrics</code>
	* object.  The standard leading, or
	* interline spacing, is the logical amount of space to be reserved
	* between the descent of one line of text and the ascent of the next
	* line. The height metric is calculated to include this extra space.
	* @return    the standard leading of the <code>Font</code>.
	* @see   #getHeight()
	* @see   #getAscent()
	* @see   #getDescent()
	*/
	@:overload public function getLeading() : Int;
	
	/**
	* Determines the <em>font ascent</em> of the <code>Font</code>
	* described by this <code>FontMetrics</code> object. The font ascent
	* is the distance from the font's baseline to the top of most
	* alphanumeric characters. Some characters in the <code>Font</code>
	* might extend above the font ascent line.
	* @return     the font ascent of the <code>Font</code>.
	* @see        #getMaxAscent()
	*/
	@:overload public function getAscent() : Int;
	
	/**
	* Determines the <em>font descent</em> of the <code>Font</code>
	* described by this
	* <code>FontMetrics</code> object. The font descent is the distance
	* from the font's baseline to the bottom of most alphanumeric
	* characters with descenders. Some characters in the
	* <code>Font</code> might extend
	* below the font descent line.
	* @return     the font descent of the <code>Font</code>.
	* @see        #getMaxDescent()
	*/
	@:overload public function getDescent() : Int;
	
	/**
	* Gets the standard height of a line of text in this font.  This
	* is the distance between the baseline of adjacent lines of text.
	* It is the sum of the leading + ascent + descent. Due to rounding
	* this may not be the same as getAscent() + getDescent() + getLeading().
	* There is no guarantee that lines of text spaced at this distance are
	* disjoint; such lines may overlap if some characters overshoot
	* either the standard ascent or the standard descent metric.
	* @return    the standard height of the font.
	* @see       #getLeading()
	* @see       #getAscent()
	* @see       #getDescent()
	*/
	@:overload public function getHeight() : Int;
	
	/**
	* Determines the maximum ascent of the <code>Font</code>
	* described by this <code>FontMetrics</code> object.  No character
	* extends further above the font's baseline than this height.
	* @return    the maximum ascent of any character in the
	* <code>Font</code>.
	* @see       #getAscent()
	*/
	@:overload public function getMaxAscent() : Int;
	
	/**
	* Determines the maximum descent of the <code>Font</code>
	* described by this <code>FontMetrics</code> object.  No character
	* extends further below the font's baseline than this height.
	* @return    the maximum descent of any character in the
	* <code>Font</code>.
	* @see       #getDescent()
	*/
	@:overload public function getMaxDescent() : Int;
	
	/**
	* For backward compatibility only.
	* @return    the maximum descent of any character in the
	* <code>Font</code>.
	* @see #getMaxDescent()
	* @deprecated As of JDK version 1.1.1,
	* replaced by <code>getMaxDescent()</code>.
	*/
	@:overload public function getMaxDecent() : Int;
	
	/**
	* Gets the maximum advance width of any character in this
	* <code>Font</code>.  The advance is the
	* distance from the leftmost point to the rightmost point on the
	* string's baseline.  The advance of a <code>String</code> is
	* not necessarily the sum of the advances of its characters.
	* @return    the maximum advance width of any character
	*            in the <code>Font</code>, or <code>-1</code> if the
	*            maximum advance width is not known.
	*/
	@:overload public function getMaxAdvance() : Int;
	
	/**
	* Returns the advance width of the specified character in this
	* <code>Font</code>.  The advance is the
	* distance from the leftmost point to the rightmost point on the
	* character's baseline.  Note that the advance of a
	* <code>String</code> is not necessarily the sum of the advances
	* of its characters.
	*
	* <p>This method doesn't validate the specified character to be a
	* valid Unicode code point. The caller must validate the
	* character value using {@link
	* java.lang.Character#isValidCodePoint(int)
	* Character.isValidCodePoint} if necessary.
	*
	* @param codePoint the character (Unicode code point) to be measured
	* @return    the advance width of the specified character
	*            in the <code>Font</code> described by this
	*            <code>FontMetrics</code> object.
	* @see   #charsWidth(char[], int, int)
	* @see   #stringWidth(String)
	*/
	@:overload public function charWidth(codePoint : Int) : Int;
	
	/**
	* Returns the advance width of the specified character in this
	* <code>Font</code>.  The advance is the
	* distance from the leftmost point to the rightmost point on the
	* character's baseline.  Note that the advance of a
	* <code>String</code> is not necessarily the sum of the advances
	* of its characters.
	*
	* <p><b>Note:</b> This method cannot handle <a
	* href="../lang/Character.html#supplementary"> supplementary
	* characters</a>. To support all Unicode characters, including
	* supplementary characters, use the {@link #charWidth(int)} method.
	*
	* @param ch the character to be measured
	* @return     the advance width of the specified character
	*                  in the <code>Font</code> described by this
	*                  <code>FontMetrics</code> object.
	* @see        #charsWidth(char[], int, int)
	* @see        #stringWidth(String)
	*/
	@:overload public function charWidth(ch : java.StdTypes.Char16) : Int;
	
	/**
	* Returns the total advance width for showing the specified
	* <code>String</code> in this <code>Font</code>.  The advance
	* is the distance from the leftmost point to the rightmost point
	* on the string's baseline.
	* <p>
	* Note that the advance of a <code>String</code> is
	* not necessarily the sum of the advances of its characters.
	* @param str the <code>String</code> to be measured
	* @return    the advance width of the specified <code>String</code>
	*                  in the <code>Font</code> described by this
	*                  <code>FontMetrics</code>.
	* @throws NullPointerException if str is null.
	* @see       #bytesWidth(byte[], int, int)
	* @see       #charsWidth(char[], int, int)
	* @see       #getStringBounds(String, Graphics)
	*/
	@:overload public function stringWidth(str : String) : Int;
	
	/**
	* Returns the total advance width for showing the specified array
	* of characters in this <code>Font</code>.  The advance is the
	* distance from the leftmost point to the rightmost point on the
	* string's baseline.  The advance of a <code>String</code>
	* is not necessarily the sum of the advances of its characters.
	* This is equivalent to measuring a <code>String</code> of the
	* characters in the specified range.
	* @param data the array of characters to be measured
	* @param off the start offset of the characters in the array
	* @param len the number of characters to be measured from the array
	* @return    the advance width of the subarray of the specified
	*               <code>char</code> array in the font described by
	*               this <code>FontMetrics</code> object.
	* @throws    NullPointerException if <code>data</code> is null.
	* @throws    IndexOutOfBoundsException if the <code>off</code>
	*            and <code>len</code> arguments index characters outside
	*            the bounds of the <code>data</code> array.
	* @see       #charWidth(int)
	* @see       #charWidth(char)
	* @see       #bytesWidth(byte[], int, int)
	* @see       #stringWidth(String)
	*/
	@:overload public function charsWidth(data : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Int;
	
	/**
	* Returns the total advance width for showing the specified array
	* of bytes in this <code>Font</code>.  The advance is the
	* distance from the leftmost point to the rightmost point on the
	* string's baseline.  The advance of a <code>String</code>
	* is not necessarily the sum of the advances of its characters.
	* This is equivalent to measuring a <code>String</code> of the
	* characters in the specified range.
	* @param data the array of bytes to be measured
	* @param off the start offset of the bytes in the array
	* @param len the number of bytes to be measured from the array
	* @return    the advance width of the subarray of the specified
	*               <code>byte</code> array in the <code>Font</code>
	*                  described by
	*               this <code>FontMetrics</code> object.
	* @throws    NullPointerException if <code>data</code> is null.
	* @throws    IndexOutOfBoundsException if the <code>off</code>
	*            and <code>len</code> arguments index bytes outside
	*            the bounds of the <code>data</code> array.
	* @see       #charsWidth(char[], int, int)
	* @see       #stringWidth(String)
	*/
	@:overload public function bytesWidth(data : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
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
	
	/**
	* Checks to see if the <code>Font</code> has uniform line metrics.  A
	* composite font may consist of several different fonts to cover
	* various character sets.  In such cases, the
	* <code>FontLineMetrics</code> objects are not uniform.
	* Different fonts may have a different ascent, descent, metrics and
	* so on.  This information is sometimes necessary for line
	* measuring and line breaking.
	* @return <code>true</code> if the font has uniform line metrics;
	* <code>false</code> otherwise.
	* @see java.awt.Font#hasUniformLineMetrics()
	*/
	@:overload public function hasUniformLineMetrics() : Bool;
	
	/**
	* Returns the {@link LineMetrics} object for the specified
	* <code>String</code> in the specified {@link Graphics} context.
	* @param str the specified <code>String</code>
	* @param context the specified <code>Graphics</code> context
	* @return a <code>LineMetrics</code> object created with the
	* specified <code>String</code> and <code>Graphics</code> context.
	* @see java.awt.Font#getLineMetrics(String, FontRenderContext)
	*/
	@:overload public function getLineMetrics(str : String, context : java.awt.Graphics) : java.awt.font.LineMetrics;
	
	/**
	* Returns the {@link LineMetrics} object for the specified
	* <code>String</code> in the specified {@link Graphics} context.
	* @param str the specified <code>String</code>
	* @param beginIndex the initial offset of <code>str</code>
	* @param limit the end offset of <code>str</code>
	* @param context the specified <code>Graphics</code> context
	* @return a <code>LineMetrics</code> object created with the
	* specified <code>String</code> and <code>Graphics</code> context.
	* @see java.awt.Font#getLineMetrics(String, int, int, FontRenderContext)
	*/
	@:overload public function getLineMetrics(str : String, beginIndex : Int, limit : Int, context : java.awt.Graphics) : java.awt.font.LineMetrics;
	
	/**
	* Returns the {@link LineMetrics} object for the specified
	* character array in the specified {@link Graphics} context.
	* @param chars the specified character array
	* @param beginIndex the initial offset of <code>chars</code>
	* @param limit the end offset of <code>chars</code>
	* @param context the specified <code>Graphics</code> context
	* @return a <code>LineMetrics</code> object created with the
	* specified character array and <code>Graphics</code> context.
	* @see java.awt.Font#getLineMetrics(char[], int, int, FontRenderContext)
	*/
	@:overload public function getLineMetrics(chars : java.NativeArray<java.StdTypes.Char16>, beginIndex : Int, limit : Int, context : java.awt.Graphics) : java.awt.font.LineMetrics;
	
	/**
	* Returns the {@link LineMetrics} object for the specified
	* {@link CharacterIterator} in the specified {@link Graphics}
	* context.
	* @param ci the specified <code>CharacterIterator</code>
	* @param beginIndex the initial offset in <code>ci</code>
	* @param limit the end index of <code>ci</code>
	* @param context the specified <code>Graphics</code> context
	* @return a <code>LineMetrics</code> object created with the
	* specified arguments.
	* @see java.awt.Font#getLineMetrics(CharacterIterator, int, int, FontRenderContext)
	*/
	@:overload public function getLineMetrics(ci : java.text.CharacterIterator, beginIndex : Int, limit : Int, context : java.awt.Graphics) : java.awt.font.LineMetrics;
	
	/**
	* Returns the bounds of the specified <code>String</code> in the
	* specified <code>Graphics</code> context.  The bounds is used
	* to layout the <code>String</code>.
	* <p>Note: The returned bounds is in baseline-relative coordinates
	* (see {@link java.awt.FontMetrics class notes}).
	* @param str the specified <code>String</code>
	* @param context the specified <code>Graphics</code> context
	* @return a {@link Rectangle2D} that is the bounding box of the
	* specified <code>String</code> in the specified
	* <code>Graphics</code> context.
	* @see java.awt.Font#getStringBounds(String, FontRenderContext)
	*/
	@:overload public function getStringBounds(str : String, context : java.awt.Graphics) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the bounds of the specified <code>String</code> in the
	* specified <code>Graphics</code> context.  The bounds is used
	* to layout the <code>String</code>.
	* <p>Note: The returned bounds is in baseline-relative coordinates
	* (see {@link java.awt.FontMetrics class notes}).
	* @param str the specified <code>String</code>
	* @param beginIndex the offset of the beginning of <code>str</code>
	* @param limit the end offset of <code>str</code>
	* @param context the specified <code>Graphics</code> context
	* @return a <code>Rectangle2D</code> that is the bounding box of the
	* specified <code>String</code> in the specified
	* <code>Graphics</code> context.
	* @see java.awt.Font#getStringBounds(String, int, int, FontRenderContext)
	*/
	@:overload public function getStringBounds(str : String, beginIndex : Int, limit : Int, context : java.awt.Graphics) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the bounds of the specified array of characters
	* in the specified <code>Graphics</code> context.
	* The bounds is used to layout the <code>String</code>
	* created with the specified array of characters,
	* <code>beginIndex</code> and <code>limit</code>.
	* <p>Note: The returned bounds is in baseline-relative coordinates
	* (see {@link java.awt.FontMetrics class notes}).
	* @param chars an array of characters
	* @param beginIndex the initial offset of the array of
	* characters
	* @param limit the end offset of the array of characters
	* @param context the specified <code>Graphics</code> context
	* @return a <code>Rectangle2D</code> that is the bounding box of the
	* specified character array in the specified
	* <code>Graphics</code> context.
	* @see java.awt.Font#getStringBounds(char[], int, int, FontRenderContext)
	*/
	@:overload public function getStringBounds(chars : java.NativeArray<java.StdTypes.Char16>, beginIndex : Int, limit : Int, context : java.awt.Graphics) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the bounds of the characters indexed in the specified
	* <code>CharacterIterator</code> in the
	* specified <code>Graphics</code> context.
	* <p>Note: The returned bounds is in baseline-relative coordinates
	* (see {@link java.awt.FontMetrics class notes}).
	* @param ci the specified <code>CharacterIterator</code>
	* @param beginIndex the initial offset in <code>ci</code>
	* @param limit the end index of <code>ci</code>
	* @param context the specified <code>Graphics</code> context
	* @return a <code>Rectangle2D</code> that is the bounding box of the
	* characters indexed in the specified <code>CharacterIterator</code>
	* in the specified <code>Graphics</code> context.
	* @see java.awt.Font#getStringBounds(CharacterIterator, int, int, FontRenderContext)
	*/
	@:overload public function getStringBounds(ci : java.text.CharacterIterator, beginIndex : Int, limit : Int, context : java.awt.Graphics) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the bounds for the character with the maximum bounds
	* in the specified <code>Graphics</code> context.
	* @param context the specified <code>Graphics</code> context
	* @return a <code>Rectangle2D</code> that is the
	* bounding box for the character with the maximum bounds.
	* @see java.awt.Font#getMaxCharBounds(FontRenderContext)
	*/
	@:overload public function getMaxCharBounds(context : java.awt.Graphics) : java.awt.geom.Rectangle2D;
	
	/**
	* Returns a representation of this <code>FontMetrics</code>
	* object's values as a <code>String</code>.
	* @return    a <code>String</code> representation of this
	* <code>FontMetrics</code> object.
	* @since     JDK1.0.
	*/
	@:require(java0) @:overload public function toString() : String;
	
	
}
