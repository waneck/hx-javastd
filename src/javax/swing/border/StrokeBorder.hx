package javax.swing.border;
/*
* Copyright (c) 2010, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class StrokeBorder extends javax.swing.border.AbstractBorder
{
	/**
	* Creates a border of the specified {@code stroke}.
	* The component's foreground color will be used to render the border.
	*
	* @param stroke  the {@link BasicStroke} object used to stroke a shape
	*
	* @throws NullPointerException if the specified {@code stroke} is {@code null}
	*/
	@:overload public function new(stroke : java.awt.BasicStroke) : Void;
	
	/**
	* Creates a border of the specified {@code stroke} and {@code paint}.
	* If the specified {@code paint} is {@code null},
	* the component's foreground color will be used to render the border.
	*
	* @param stroke  the {@link BasicStroke} object used to stroke a shape
	* @param paint   the {@link Paint} object used to generate a color
	*
	* @throws NullPointerException if the specified {@code stroke} is {@code null}
	*/
	@:overload public function new(stroke : java.awt.BasicStroke, paint : java.awt.Paint) : Void;
	
	/**
	* Paints the border for the specified component
	* with the specified position and size.
	* If the border was not specified with a {@link Paint} object,
	* the component's foreground color will be used to render the border.
	* If the component's foreground color is not available,
	* the default color of the {@link Graphics} object will be used.
	*
	* @param c       the component for which this border is being painted
	* @param g       the paint graphics
	* @param x       the x position of the painted border
	* @param y       the y position of the painted border
	* @param width   the width of the painted border
	* @param height  the height of the painted border
	*
	* @throws NullPointerException if the specified {@code g} is {@code null}
	*/
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Reinitializes the {@code insets} parameter
	* with this border's current insets.
	* Every inset is the smallest (closest to negative infinity) integer value
	* that is greater than or equal to the line width of the stroke
	* that is used to paint the border.
	*
	* @param c       the component for which this border insets value applies
	* @param insets  the {@code Insets} object to be reinitialized
	* @return the reinitialized {@code insets} parameter
	*
	* @throws NullPointerException if the specified {@code insets} is {@code null}
	*
	* @see Math#ceil
	*/
	@:overload override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Returns the {@link BasicStroke} object used to stroke a shape
	* during the border rendering.
	*
	* @return the {@link BasicStroke} object
	*/
	@:overload public function getStroke() : java.awt.BasicStroke;
	
	/**
	* Returns the {@link Paint} object used to generate a color
	* during the border rendering.
	*
	* @return the {@link Paint} object or {@code null}
	*         if the {@code paint} parameter is not set
	*/
	@:overload public function getPaint() : java.awt.Paint;
	
	
}
