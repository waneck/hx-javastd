package com.sun.java.swing.plaf.motif;
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
extern class MotifGraphicsUtils implements javax.swing.SwingConstants
{
	/*
	* Convenience method for drawing a grooved line
	*
	*/
	@:overload @:public @:static public static function drawGroove(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, shadow : java.awt.Color, highlight : java.awt.Color) : Void;
	
	/** Draws <b>aString</b> in the rectangle defined by
	* (<b>x</b>, <b>y</b>, <b>width</b>, <b>height</b>).
	* <b>justification</b> specifies the text's justification, one of
	* LEFT, CENTER, or RIGHT.
	* <b>drawStringInRect()</b> does not clip to the rectangle, but instead
	* uses this rectangle and the desired justification to compute the point
	* at which to begin drawing the text.
	* @see #drawString
	*/
	@:overload @:public @:static public static function drawStringInRect(g : java.awt.Graphics, aString : String, x : Int, y : Int, width : Int, height : Int, justification : Int) : Void;
	
	/**
	* This method is not being used to paint menu item since
	* 6.0 This code left for compatibility only. Do not use or
	* override it, this will not cause any visible effect.
	*/
	@:overload @:public @:static public static function paintMenuItem(g : java.awt.Graphics, c : javax.swing.JComponent, checkIcon : javax.swing.Icon, arrowIcon : javax.swing.Icon, background : java.awt.Color, foreground : java.awt.Color, defaultTextIconGap : Int) : Void;
	
	
}
