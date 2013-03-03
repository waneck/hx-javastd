package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Wrapper for primitive graphics calls.
*
* @since 1.5
* @author Scott Violet
*/
@:require(java5) extern class SynthGraphicsUtils
{
	/**
	* Creates a <code>SynthGraphicsUtils</code>.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Draws a line between the two end points.
	*
	* @param context Identifies hosting region.
	* @param paintKey Identifies the portion of the component being asked
	*                 to paint, may be null.
	* @param g Graphics object to paint to
	* @param x1 x origin
	* @param y1 y origin
	* @param x2 x destination
	* @param y2 y destination
	*/
	@:overload @:public public function drawLine(context : javax.swing.plaf.synth.SynthContext, paintKey : Dynamic, g : java.awt.Graphics, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	/**
	* Draws a line between the two end points.
	* <p>This implementation supports only one line style key,
	* <code>"dashed"</code>. The <code>"dashed"</code> line style is applied
	* only to vertical and horizontal lines.
	* <p>Specifying <code>null</code> or any key different from
	* <code>"dashed"</code> will draw solid lines.
	*
	* @param context identifies hosting region
	* @param paintKey identifies the portion of the component being asked
	*                 to paint, may be null
	* @param g Graphics object to paint to
	* @param x1 x origin
	* @param y1 y origin
	* @param x2 x destination
	* @param y2 y destination
	* @param styleKey identifies the requested style of the line (e.g. "dashed")
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function drawLine(context : javax.swing.plaf.synth.SynthContext, paintKey : Dynamic, g : java.awt.Graphics, x1 : Int, y1 : Int, x2 : Int, y2 : Int, styleKey : Dynamic) : Void;
	
	/**
	* Lays out text and an icon returning, by reference, the location to
	* place the icon and text.
	*
	* @param ss SynthContext
	* @param fm FontMetrics for the Font to use, this may be ignored
	* @param text Text to layout
	* @param icon Icon to layout
	* @param hAlign horizontal alignment
	* @param vAlign vertical alignment
	* @param hTextPosition horizontal text position
	* @param vTextPosition vertical text position
	* @param viewR Rectangle to layout text and icon in.
	* @param iconR Rectangle to place icon bounds in
	* @param textR Rectangle to place text in
	* @param iconTextGap gap between icon and text
	*/
	@:overload @:public public function layoutText(ss : javax.swing.plaf.synth.SynthContext, fm : java.awt.FontMetrics, text : String, icon : javax.swing.Icon, hAlign : Int, vAlign : Int, hTextPosition : Int, vTextPosition : Int, viewR : java.awt.Rectangle, iconR : java.awt.Rectangle, textR : java.awt.Rectangle, iconTextGap : Int) : String;
	
	/**
	* Returns the size of the passed in string.
	*
	* @param ss SynthContext
	* @param font Font to use
	* @param metrics FontMetrics, may be ignored
	* @param text Text to get size of.
	*/
	@:overload @:public public function computeStringWidth(ss : javax.swing.plaf.synth.SynthContext, font : java.awt.Font, metrics : java.awt.FontMetrics, text : String) : Int;
	
	/**
	* Returns the minimum size needed to properly render an icon and text.
	*
	* @param ss SynthContext
	* @param font Font to use
	* @param text Text to layout
	* @param icon Icon to layout
	* @param hAlign horizontal alignment
	* @param vAlign vertical alignment
	* @param hTextPosition horizontal text position
	* @param vTextPosition vertical text position
	* @param iconTextGap gap between icon and text
	* @param mnemonicIndex Index into text to render the mnemonic at, -1
	*        indicates no mnemonic.
	*/
	@:overload @:public public function getMinimumSize(ss : javax.swing.plaf.synth.SynthContext, font : java.awt.Font, text : String, icon : javax.swing.Icon, hAlign : Int, vAlign : Int, hTextPosition : Int, vTextPosition : Int, iconTextGap : Int, mnemonicIndex : Int) : java.awt.Dimension;
	
	/**
	* Returns the maximum size needed to properly render an icon and text.
	*
	* @param ss SynthContext
	* @param font Font to use
	* @param text Text to layout
	* @param icon Icon to layout
	* @param hAlign horizontal alignment
	* @param vAlign vertical alignment
	* @param hTextPosition horizontal text position
	* @param vTextPosition vertical text position
	* @param iconTextGap gap between icon and text
	* @param mnemonicIndex Index into text to render the mnemonic at, -1
	*        indicates no mnemonic.
	*/
	@:overload @:public public function getMaximumSize(ss : javax.swing.plaf.synth.SynthContext, font : java.awt.Font, text : String, icon : javax.swing.Icon, hAlign : Int, vAlign : Int, hTextPosition : Int, vTextPosition : Int, iconTextGap : Int, mnemonicIndex : Int) : java.awt.Dimension;
	
	/**
	* Returns the maximum height of the the Font from the passed in
	* SynthContext.
	*
	* @param context SynthContext used to determine font.
	* @return maximum height of the characters for the font from the passed
	*         in context.
	*/
	@:overload @:public public function getMaximumCharHeight(context : javax.swing.plaf.synth.SynthContext) : Int;
	
	/**
	* Returns the preferred size needed to properly render an icon and text.
	*
	* @param ss SynthContext
	* @param font Font to use
	* @param text Text to layout
	* @param icon Icon to layout
	* @param hAlign horizontal alignment
	* @param vAlign vertical alignment
	* @param hTextPosition horizontal text position
	* @param vTextPosition vertical text position
	* @param iconTextGap gap between icon and text
	* @param mnemonicIndex Index into text to render the mnemonic at, -1
	*        indicates no mnemonic.
	*/
	@:overload @:public public function getPreferredSize(ss : javax.swing.plaf.synth.SynthContext, font : java.awt.Font, text : String, icon : javax.swing.Icon, hAlign : Int, vAlign : Int, hTextPosition : Int, vTextPosition : Int, iconTextGap : Int, mnemonicIndex : Int) : java.awt.Dimension;
	
	/**
	* Paints text at the specified location. This will not attempt to
	* render the text as html nor will it offset by the insets of the
	* component.
	*
	* @param ss SynthContext
	* @param g Graphics used to render string in.
	* @param text Text to render
	* @param bounds Bounds of the text to be drawn.
	* @param mnemonicIndex Index to draw string at.
	*/
	@:overload @:public public function paintText(ss : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, text : String, bounds : java.awt.Rectangle, mnemonicIndex : Int) : Void;
	
	/**
	* Paints text at the specified location. This will not attempt to
	* render the text as html nor will it offset by the insets of the
	* component.
	*
	* @param ss SynthContext
	* @param g Graphics used to render string in.
	* @param text Text to render
	* @param x X location to draw text at.
	* @param y Upper left corner to draw text at.
	* @param mnemonicIndex Index to draw string at.
	*/
	@:overload @:public public function paintText(ss : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, text : String, x : Int, y : Int, mnemonicIndex : Int) : Void;
	
	/**
	* Paints an icon and text. This will render the text as html, if
	* necessary, and offset the location by the insets of the component.
	*
	* @param ss SynthContext
	* @param g Graphics to render string and icon into
	* @param text Text to layout
	* @param icon Icon to layout
	* @param hAlign horizontal alignment
	* @param vAlign vertical alignment
	* @param hTextPosition horizontal text position
	* @param vTextPosition vertical text position
	* @param iconTextGap gap between icon and text
	* @param mnemonicIndex Index into text to render the mnemonic at, -1
	*        indicates no mnemonic.
	* @param textOffset Amount to offset the text when painting
	*/
	@:overload @:public public function paintText(ss : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, text : String, icon : javax.swing.Icon, hAlign : Int, vAlign : Int, hTextPosition : Int, vTextPosition : Int, iconTextGap : Int, mnemonicIndex : Int, textOffset : Int) : Void;
	
	
}
/**
* Wraps a SynthIcon around the Icon interface, forwarding calls to
* the SynthIcon with a given SynthContext.
*/
@:native('javax$swing$plaf$synth$SynthGraphicsUtils$SynthIconWrapper') @:internal extern class SynthGraphicsUtils_SynthIconWrapper implements javax.swing.Icon
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
