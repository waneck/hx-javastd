package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicGraphicsUtils
{
	@:overload @:public @:static public static function drawEtchedRect(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, shadow : java.awt.Color, darkShadow : java.awt.Color, highlight : java.awt.Color, lightHighlight : java.awt.Color) : Void;
	
	/**
	* Returns the amount of space taken up by a border drawn by
	* <code>drawEtchedRect()</code>
	*
	* @return  the inset of an etched rect
	*/
	@:overload @:public @:static public static function getEtchedInsets() : java.awt.Insets;
	
	@:overload @:public @:static public static function drawGroove(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, shadow : java.awt.Color, highlight : java.awt.Color) : Void;
	
	/**
	* Returns the amount of space taken up by a border drawn by
	* <code>drawGroove()</code>
	*
	* @return  the inset of a groove border
	*/
	@:overload @:public @:static public static function getGrooveInsets() : java.awt.Insets;
	
	@:overload @:public @:static public static function drawBezel(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, isPressed : Bool, isDefault : Bool, shadow : java.awt.Color, darkShadow : java.awt.Color, highlight : java.awt.Color, lightHighlight : java.awt.Color) : Void;
	
	@:overload @:public @:static public static function drawLoweredBezel(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, shadow : java.awt.Color, darkShadow : java.awt.Color, highlight : java.awt.Color, lightHighlight : java.awt.Color) : Void;
	
	/** Draw a string with the graphics <code>g</code> at location (x,y)
	*  just like <code>g.drawString</code> would.
	*  The first occurrence of <code>underlineChar</code>
	*  in text will be underlined. The matching algorithm is
	*  not case sensitive.
	*/
	@:overload @:public @:static public static function drawString(g : java.awt.Graphics, text : String, underlinedChar : Int, x : Int, y : Int) : Void;
	
	/**
	* Draw a string with the graphics <code>g</code> at location
	* (<code>x</code>, <code>y</code>)
	* just like <code>g.drawString</code> would.
	* The character at index <code>underlinedIndex</code>
	* in text will be underlined. If <code>index</code> is beyond the
	* bounds of <code>text</code> (including < 0), nothing will be
	* underlined.
	*
	* @param g Graphics to draw with
	* @param text String to draw
	* @param underlinedIndex Index of character in text to underline
	* @param x x coordinate to draw at
	* @param y y coordinate to draw at
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function drawStringUnderlineCharAt(g : java.awt.Graphics, text : String, underlinedIndex : Int, x : Int, y : Int) : Void;
	
	@:overload @:public @:static public static function drawDashedRect(g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public @:static public static function getPreferredButtonSize(b : javax.swing.AbstractButton, textIconGap : Int) : java.awt.Dimension;
	
	
}
