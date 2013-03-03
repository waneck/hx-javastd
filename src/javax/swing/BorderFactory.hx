package javax.swing;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* Factory class for vending standard <code>Border</code> objects.  Wherever
* possible, this factory will hand out references to shared
* <code>Border</code> instances.
* For further information and examples see
* <a href="http://java.sun.com/docs/books/tutorial/uiswing/misc/border.html">How
to Use Borders</a>,
* a section in <em>The Java Tutorial</em>.
*
* @author David Kloba
*/
extern class BorderFactory
{
	/**
	* Creates a line border withe the specified color.
	*
	* @param color  a <code>Color</code> to use for the line
	* @return the <code>Border</code> object
	*/
	@:overload @:public @:static public static function createLineBorder(color : java.awt.Color) : javax.swing.border.Border;
	
	/**
	* Creates a line border with the specified color
	* and width. The width applies to all four sides of the
	* border. To specify widths individually for the top,
	* bottom, left, and right, use
	* {@link #createMatteBorder(int,int,int,int,Color)}.
	*
	* @param color  a <code>Color</code> to use for the line
	* @param thickness  an integer specifying the width in pixels
	* @return the <code>Border</code> object
	*/
	@:overload @:public @:static public static function createLineBorder(color : java.awt.Color, thickness : Int) : javax.swing.border.Border;
	
	/**
	* Creates a line border with the specified color, thickness, and corner shape.
	*
	* @param color      the color of the border
	* @param thickness  the thickness of the border
	* @param rounded    whether or not border corners should be round
	* @return the {@code Border} object
	*
	* @see LineBorder#LineBorder(Color, int, boolean)
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createLineBorder(color : java.awt.Color, thickness : Int, rounded : Bool) : javax.swing.border.Border;
	
	/**
	* Creates a border with a raised beveled edge, using
	* brighter shades of the component's current background color
	* for highlighting, and darker shading for shadows.
	* (In a raised border, highlights are on top and shadows
	*  are underneath.)
	*
	* @return the <code>Border</code> object
	*/
	@:overload @:public @:static public static function createRaisedBevelBorder() : javax.swing.border.Border;
	
	/**
	* Creates a border with a lowered beveled edge, using
	* brighter shades of the component's current background color
	* for highlighting, and darker shading for shadows.
	* (In a lowered border, shadows are on top and highlights
	*  are underneath.)
	*
	* @return the <code>Border</code> object
	*/
	@:overload @:public @:static public static function createLoweredBevelBorder() : javax.swing.border.Border;
	
	/**
	* Creates a beveled border of the specified type, using
	* brighter shades of the component's current background color
	* for highlighting, and darker shading for shadows.
	* (In a lowered border, shadows are on top and highlights
	*  are underneath.)
	*
	* @param type  an integer specifying either
	*                  <code>BevelBorder.LOWERED</code> or
	*                  <code>BevelBorder.RAISED</code>
	* @return the <code>Border</code> object
	*/
	@:overload @:public @:static public static function createBevelBorder(type : Int) : javax.swing.border.Border;
	
	/**
	* Creates a beveled border of the specified type, using
	* the specified highlighting and shadowing. The outer
	* edge of the highlighted area uses a brighter shade of
	* the highlight color. The inner edge of the shadow area
	* uses a brighter shade of the shadow color.
	*
	* @param type  an integer specifying either
	*                  <code>BevelBorder.LOWERED</code> or
	*                  <code>BevelBorder.RAISED</code>
	* @param highlight  a <code>Color</code> object for highlights
	* @param shadow     a <code>Color</code> object for shadows
	* @return the <code>Border</code> object
	*/
	@:overload @:public @:static public static function createBevelBorder(type : Int, highlight : java.awt.Color, shadow : java.awt.Color) : javax.swing.border.Border;
	
	/**
	* Creates a beveled border of the specified type, using
	* the specified colors for the inner and outer highlight
	* and shadow areas.
	*
	* @param type  an integer specifying either
	*          <code>BevelBorder.LOWERED</code> or
	*          <code>BevelBorder.RAISED</code>
	* @param highlightOuter  a <code>Color</code> object for the
	*                  outer edge of the highlight area
	* @param highlightInner  a <code>Color</code> object for the
	*                  inner edge of the highlight area
	* @param shadowOuter     a <code>Color</code> object for the
	*                  outer edge of the shadow area
	* @param shadowInner     a <code>Color</code> object for the
	*                  inner edge of the shadow area
	* @return the <code>Border</code> object
	*/
	@:overload @:public @:static public static function createBevelBorder(type : Int, highlightOuter : java.awt.Color, highlightInner : java.awt.Color, shadowOuter : java.awt.Color, shadowInner : java.awt.Color) : javax.swing.border.Border;
	
	/**
	* Creates a beveled border with a raised edge and softened corners,
	* using brighter shades of the component's current background color
	* for highlighting, and darker shading for shadows.
	* In a raised border, highlights are on top and shadows are underneath.
	*
	* @return the {@code Border} object
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createRaisedSoftBevelBorder() : javax.swing.border.Border;
	
	/**
	* Creates a beveled border with a lowered edge and softened corners,
	* using brighter shades of the component's current background color
	* for highlighting, and darker shading for shadows.
	* In a lowered border, shadows are on top and highlights are underneath.
	*
	* @return the {@code Border} object
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createLoweredSoftBevelBorder() : javax.swing.border.Border;
	
	/**
	* Creates a beveled border of the specified type with softened corners,
	* using brighter shades of the component's current background color
	* for highlighting, and darker shading for shadows.
	* The type is either {@link BevelBorder#RAISED} or {@link BevelBorder#LOWERED}.
	*
	* @param type  a type of a bevel
	* @return the {@code Border} object or {@code null}
	*         if the specified type is not valid
	*
	* @see BevelBorder#BevelBorder(int)
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createSoftBevelBorder(type : Int) : javax.swing.border.Border;
	
	/**
	* Creates a beveled border of the specified type with softened corners,
	* using the specified highlighting and shadowing.
	* The type is either {@link BevelBorder#RAISED} or {@link BevelBorder#LOWERED}.
	* The outer edge of the highlight area uses
	* a brighter shade of the {@code highlight} color.
	* The inner edge of the shadow area uses
	* a brighter shade of the {@code shadow} color.
	*
	* @param type       a type of a bevel
	* @param highlight  a basic color of the highlight area
	* @param shadow     a basic color of the shadow area
	* @return the {@code Border} object
	*
	* @see BevelBorder#BevelBorder(int, Color, Color)
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createSoftBevelBorder(type : Int, highlight : java.awt.Color, shadow : java.awt.Color) : javax.swing.border.Border;
	
	/**
	* Creates a beveled border of the specified type with softened corners,
	* using the specified colors for the inner and outer edges
	* of the highlight and the shadow areas.
	* The type is either {@link BevelBorder#RAISED} or {@link BevelBorder#LOWERED}.
	* Note: The shadow inner and outer colors are switched
	* for a lowered bevel border.
	*
	* @param type            a type of a bevel
	* @param highlightOuter  a color of the outer edge of the highlight area
	* @param highlightInner  a color of the inner edge of the highlight area
	* @param shadowOuter     a color of the outer edge of the shadow area
	* @param shadowInner     a color of the inner edge of the shadow area
	* @return the {@code Border} object
	*
	* @see BevelBorder#BevelBorder(int, Color, Color, Color, Color)
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createSoftBevelBorder(type : Int, highlightOuter : java.awt.Color, highlightInner : java.awt.Color, shadowOuter : java.awt.Color, shadowInner : java.awt.Color) : javax.swing.border.Border;
	
	/**
	* Creates a border with an "etched" look using
	* the component's current background color for
	* highlighting and shading.
	*
	* @return the <code>Border</code> object
	*/
	@:overload @:public @:static public static function createEtchedBorder() : javax.swing.border.Border;
	
	/**
	* Creates a border with an "etched" look using
	* the specified highlighting and shading colors.
	*
	* @param highlight  a <code>Color</code> object for the border highlights
	* @param shadow     a <code>Color</code> object for the border shadows
	* @return the <code>Border</code> object
	*/
	@:overload @:public @:static public static function createEtchedBorder(highlight : java.awt.Color, shadow : java.awt.Color) : javax.swing.border.Border;
	
	/**
	* Creates a border with an "etched" look using
	* the component's current background color for
	* highlighting and shading.
	*
	* @param type      one of <code>EtchedBorder.RAISED</code>, or
	*                  <code>EtchedBorder.LOWERED</code>
	* @return the <code>Border</code> object
	* @exception IllegalArgumentException if type is not either
	*                  <code>EtchedBorder.RAISED</code> or
	*                  <code>EtchedBorder.LOWERED</code>
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function createEtchedBorder(type : Int) : javax.swing.border.Border;
	
	/**
	* Creates a border with an "etched" look using
	* the specified highlighting and shading colors.
	*
	* @param type      one of <code>EtchedBorder.RAISED</code>, or
	*                  <code>EtchedBorder.LOWERED</code>
	* @param highlight  a <code>Color</code> object for the border highlights
	* @param shadow     a <code>Color</code> object for the border shadows
	* @return the <code>Border</code> object
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function createEtchedBorder(type : Int, highlight : java.awt.Color, shadow : java.awt.Color) : javax.swing.border.Border;
	
	/**
	* Creates a new titled border with the specified title,
	* the default border type (determined by the current look and feel),
	* the default text position (sitting on the top line),
	* the default justification (leading), and the default
	* font and text color (determined by the current look and feel).
	*
	* @param title      a <code>String</code> containing the text of the title
	* @return the <code>TitledBorder</code> object
	*/
	@:overload @:public @:static public static function createTitledBorder(title : String) : javax.swing.border.TitledBorder;
	
	/**
	* Creates a new titled border with an empty title,
	* the specified border object,
	* the default text position (sitting on the top line),
	* the default justification (leading), and the default
	* font and text color (determined by the current look and feel).
	*
	* @param border     the <code>Border</code> object to add the title to; if
	*                   <code>null</code> the <code>Border</code> is determined
	*                   by the current look and feel.
	* @return the <code>TitledBorder</code> object
	*/
	@:overload @:public @:static public static function createTitledBorder(border : javax.swing.border.Border) : javax.swing.border.TitledBorder;
	
	/**
	* Adds a title to an existing border,
	* with default positioning (sitting on the top line),
	* default justification (leading) and the default
	* font and text color (determined by the current look and feel).
	*
	* @param border     the <code>Border</code> object to add the title to
	* @param title      a <code>String</code> containing the text of the title
	* @return the <code>TitledBorder</code> object
	*/
	@:overload @:public @:static public static function createTitledBorder(border : javax.swing.border.Border, title : String) : javax.swing.border.TitledBorder;
	
	/**
	* Adds a title to an existing border, with the specified
	* positioning and using the default
	* font and text color (determined by the current look and feel).
	*
	* @param border      the <code>Border</code> object to add the title to
	* @param title       a <code>String</code> containing the text of the title
	* @param titleJustification  an integer specifying the justification
	*        of the title -- one of the following:
	*<ul>
	*<li><code>TitledBorder.LEFT</code>
	*<li><code>TitledBorder.CENTER</code>
	*<li><code>TitledBorder.RIGHT</code>
	*<li><code>TitledBorder.LEADING</code>
	*<li><code>TitledBorder.TRAILING</code>
	*<li><code>TitledBorder.DEFAULT_JUSTIFICATION</code> (leading)
	*</ul>
	* @param titlePosition       an integer specifying the vertical position of
	*        the text in relation to the border -- one of the following:
	*<ul>
	*<li><code> TitledBorder.ABOVE_TOP</code>
	*<li><code>TitledBorder.TOP</code> (sitting on the top line)
	*<li><code>TitledBorder.BELOW_TOP</code>
	*<li><code>TitledBorder.ABOVE_BOTTOM</code>
	*<li><code>TitledBorder.BOTTOM</code> (sitting on the bottom line)
	*<li><code>TitledBorder.BELOW_BOTTOM</code>
	*<li><code>TitledBorder.DEFAULT_POSITION</code> (top)
	*</ul>
	* @return the <code>TitledBorder</code> object
	*/
	@:overload @:public @:static public static function createTitledBorder(border : javax.swing.border.Border, title : String, titleJustification : Int, titlePosition : Int) : javax.swing.border.TitledBorder;
	
	/**
	* Adds a title to an existing border, with the specified
	* positioning and font, and using the default text color
	* (determined by the current look and feel).
	*
	* @param border      the <code>Border</code> object to add the title to
	* @param title       a <code>String</code> containing the text of the title
	* @param titleJustification  an integer specifying the justification
	*        of the title -- one of the following:
	*<ul>
	*<li><code>TitledBorder.LEFT</code>
	*<li><code>TitledBorder.CENTER</code>
	*<li><code>TitledBorder.RIGHT</code>
	*<li><code>TitledBorder.LEADING</code>
	*<li><code>TitledBorder.TRAILING</code>
	*<li><code>TitledBorder.DEFAULT_JUSTIFICATION</code> (leading)
	*</ul>
	* @param titlePosition       an integer specifying the vertical position of
	*        the text in relation to the border -- one of the following:
	*<ul>
	*<li><code> TitledBorder.ABOVE_TOP</code>
	*<li><code>TitledBorder.TOP</code> (sitting on the top line)
	*<li><code>TitledBorder.BELOW_TOP</code>
	*<li><code>TitledBorder.ABOVE_BOTTOM</code>
	*<li><code>TitledBorder.BOTTOM</code> (sitting on the bottom line)
	*<li><code>TitledBorder.BELOW_BOTTOM</code>
	*<li><code>TitledBorder.DEFAULT_POSITION</code> (top)
	*</ul>
	* @param titleFont           a Font object specifying the title font
	* @return the TitledBorder object
	*/
	@:overload @:public @:static public static function createTitledBorder(border : javax.swing.border.Border, title : String, titleJustification : Int, titlePosition : Int, titleFont : java.awt.Font) : javax.swing.border.TitledBorder;
	
	/**
	* Adds a title to an existing border, with the specified
	* positioning, font and color.
	*
	* @param border      the <code>Border</code> object to add the title to
	* @param title       a <code>String</code> containing the text of the title
	* @param titleJustification  an integer specifying the justification
	*        of the title -- one of the following:
	*<ul>
	*<li><code>TitledBorder.LEFT</code>
	*<li><code>TitledBorder.CENTER</code>
	*<li><code>TitledBorder.RIGHT</code>
	*<li><code>TitledBorder.LEADING</code>
	*<li><code>TitledBorder.TRAILING</code>
	*<li><code>TitledBorder.DEFAULT_JUSTIFICATION</code> (leading)
	*</ul>
	* @param titlePosition       an integer specifying the vertical position of
	*        the text in relation to the border -- one of the following:
	*<ul>
	*<li><code> TitledBorder.ABOVE_TOP</code>
	*<li><code>TitledBorder.TOP</code> (sitting on the top line)
	*<li><code>TitledBorder.BELOW_TOP</code>
	*<li><code>TitledBorder.ABOVE_BOTTOM</code>
	*<li><code>TitledBorder.BOTTOM</code> (sitting on the bottom line)
	*<li><code>TitledBorder.BELOW_BOTTOM</code>
	*<li><code>TitledBorder.DEFAULT_POSITION</code> (top)
	*</ul>
	* @param titleFont   a <code>Font</code> object specifying the title font
	* @param titleColor  a <code>Color</code> object specifying the title color
	* @return the <code>TitledBorder</code> object
	*/
	@:overload @:public @:static public static function createTitledBorder(border : javax.swing.border.Border, title : String, titleJustification : Int, titlePosition : Int, titleFont : java.awt.Font, titleColor : java.awt.Color) : javax.swing.border.TitledBorder;
	
	/**
	* Creates an empty border that takes up no space. (The width
	* of the top, bottom, left, and right sides are all zero.)
	*
	* @return the <code>Border</code> object
	*/
	@:overload @:public @:static public static function createEmptyBorder() : javax.swing.border.Border;
	
	/**
	* Creates an empty border that takes up space but which does
	* no drawing, specifying the width of the top, left, bottom, and
	* right sides.
	*
	* @param top     an integer specifying the width of the top,
	*                  in pixels
	* @param left    an integer specifying the width of the left side,
	*                  in pixels
	* @param bottom  an integer specifying the width of the bottom,
	*                  in pixels
	* @param right   an integer specifying the width of the right side,
	*                  in pixels
	* @return the <code>Border</code> object
	*/
	@:overload @:public @:static public static function createEmptyBorder(top : Int, left : Int, bottom : Int, right : Int) : javax.swing.border.Border;
	
	/**
	* Creates a compound border with a <code>null</code> inside edge and a
	* <code>null</code> outside edge.
	*
	* @return the <code>CompoundBorder</code> object
	*/
	@:overload @:public @:static public static function createCompoundBorder() : javax.swing.border.CompoundBorder;
	
	/**
	* Creates a compound border specifying the border objects to use
	* for the outside and inside edges.
	*
	* @param outsideBorder  a <code>Border</code> object for the outer
	*                          edge of the compound border
	* @param insideBorder   a <code>Border</code> object for the inner
	*                          edge of the compound border
	* @return the <code>CompoundBorder</code> object
	*/
	@:overload @:public @:static public static function createCompoundBorder(outsideBorder : javax.swing.border.Border, insideBorder : javax.swing.border.Border) : javax.swing.border.CompoundBorder;
	
	/**
	* Creates a matte-look border using a solid color. (The difference between
	* this border and a line border is that you can specify the individual
	* border dimensions.)
	*
	* @param top     an integer specifying the width of the top,
	*                          in pixels
	* @param left    an integer specifying the width of the left side,
	*                          in pixels
	* @param bottom  an integer specifying the width of the right side,
	*                          in pixels
	* @param right   an integer specifying the width of the bottom,
	*                          in pixels
	* @param color   a <code>Color</code> to use for the border
	* @return the <code>MatteBorder</code> object
	*/
	@:overload @:public @:static public static function createMatteBorder(top : Int, left : Int, bottom : Int, right : Int, color : java.awt.Color) : javax.swing.border.MatteBorder;
	
	/**
	* Creates a matte-look border that consists of multiple tiles of a
	* specified icon. Multiple copies of the icon are placed side-by-side
	* to fill up the border area.
	* <p>
	* Note:<br>
	* If the icon doesn't load, the border area is painted gray.
	*
	* @param top     an integer specifying the width of the top,
	*                          in pixels
	* @param left    an integer specifying the width of the left side,
	*                          in pixels
	* @param bottom  an integer specifying the width of the right side,
	*                          in pixels
	* @param right   an integer specifying the width of the bottom,
	*                          in pixels
	* @param tileIcon  the <code>Icon</code> object used for the border tiles
	* @return the <code>MatteBorder</code> object
	*/
	@:overload @:public @:static public static function createMatteBorder(top : Int, left : Int, bottom : Int, right : Int, tileIcon : javax.swing.Icon) : javax.swing.border.MatteBorder;
	
	/**
	* Creates a border of the specified {@code stroke}.
	* The component's foreground color will be used to render the border.
	*
	* @param stroke  the {@link BasicStroke} object used to stroke a shape
	* @return the {@code Border} object
	*
	* @throws NullPointerException if the specified {@code stroke} is {@code null}
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createStrokeBorder(stroke : java.awt.BasicStroke) : javax.swing.border.Border;
	
	/**
	* Creates a border of the specified {@code stroke} and {@code paint}.
	* If the specified {@code paint} is {@code null},
	* the component's foreground color will be used to render the border.
	*
	* @param stroke  the {@link BasicStroke} object used to stroke a shape
	* @param paint   the {@link Paint} object used to generate a color
	* @return the {@code Border} object
	*
	* @throws NullPointerException if the specified {@code stroke} is {@code null}
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createStrokeBorder(stroke : java.awt.BasicStroke, paint : java.awt.Paint) : javax.swing.border.Border;
	
	/**
	* Creates a dashed border of the specified {@code paint}.
	* If the specified {@code paint} is {@code null},
	* the component's foreground color will be used to render the border.
	* The width of a dash line is equal to {@code 1}.
	* The relative length of a dash line and
	* the relative spacing between dash lines are equal to {@code 1}.
	* A dash line is not rounded.
	*
	* @param paint  the {@link Paint} object used to generate a color
	* @return the {@code Border} object
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createDashedBorder(paint : java.awt.Paint) : javax.swing.border.Border;
	
	/**
	* Creates a dashed border of the specified {@code paint},
	* relative {@code length}, and relative {@code spacing}.
	* If the specified {@code paint} is {@code null},
	* the component's foreground color will be used to render the border.
	* The width of a dash line is equal to {@code 1}.
	* A dash line is not rounded.
	*
	* @param paint    the {@link Paint} object used to generate a color
	* @param length   the relative length of a dash line
	* @param spacing  the relative spacing between dash lines
	* @return the {@code Border} object
	*
	* @throws IllegalArgumentException if the specified {@code length} is less than {@code 1}, or
	*                                  if the specified {@code spacing} is less than {@code 0}
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createDashedBorder(paint : java.awt.Paint, length : Single, spacing : Single) : javax.swing.border.Border;
	
	/**
	* Creates a dashed border of the specified {@code paint}, {@code thickness},
	* line shape, relative {@code length}, and relative {@code spacing}.
	* If the specified {@code paint} is {@code null},
	* the component's foreground color will be used to render the border.
	*
	* @param paint      the {@link Paint} object used to generate a color
	* @param thickness  the width of a dash line
	* @param length     the relative length of a dash line
	* @param spacing    the relative spacing between dash lines
	* @param rounded    whether or not line ends should be round
	* @return the {@code Border} object
	*
	* @throws IllegalArgumentException if the specified {@code thickness} is less than {@code 1}, or
	*                                  if the specified {@code length} is less than {@code 1}, or
	*                                  if the specified {@code spacing} is less than {@code 0}
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function createDashedBorder(paint : java.awt.Paint, thickness : Single, length : Single, spacing : Single, rounded : Bool) : javax.swing.border.Border;
	
	
}
