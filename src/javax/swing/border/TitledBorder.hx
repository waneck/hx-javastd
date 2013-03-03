package javax.swing.border;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class TitledBorder extends javax.swing.border.AbstractBorder
{
	/**
	* A class which implements an arbitrary border
	* with the addition of a String title in a
	* specified position and justification.
	* <p>
	* If the border, font, or color property values are not
	* specified in the constuctor or by invoking the appropriate
	* set methods, the property values will be defined by the current
	* look and feel, using the following property names in the
	* Defaults Table:
	* <ul>
	* <li>&quot;TitledBorder.border&quot;
	* <li>&quot;TitledBorder.font&quot;
	* <li>&quot;TitledBorder.titleColor&quot;
	* </ul>
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases. The current serialization support is
	* appropriate for short term storage or RMI between applications running
	* the same version of Swing.  As of 1.4, support for long term storage
	* of all JavaBeans<sup><font size="-2">TM</font></sup>
	* has been added to the <code>java.beans</code> package.
	* Please see {@link java.beans.XMLEncoder}.
	*
	* @author David Kloba
	* @author Amy Fowler
	*/
	@:protected private var title : String;
	
	@:protected private var border : javax.swing.border.Border;
	
	@:protected private var titlePosition : Int;
	
	@:protected private var titleJustification : Int;
	
	@:protected private var titleFont : java.awt.Font;
	
	@:protected private var titleColor : java.awt.Color;
	
	/**
	* Use the default vertical orientation for the title text.
	*/
	@:static @:public @:final public static var DEFAULT_POSITION(default, null) : Int;
	
	/** Position the title above the border's top line. */
	@:static @:public @:final public static var ABOVE_TOP(default, null) : Int;
	
	/** Position the title in the middle of the border's top line. */
	@:static @:public @:final public static var TOP(default, null) : Int;
	
	/** Position the title below the border's top line. */
	@:static @:public @:final public static var BELOW_TOP(default, null) : Int;
	
	/** Position the title above the border's bottom line. */
	@:static @:public @:final public static var ABOVE_BOTTOM(default, null) : Int;
	
	/** Position the title in the middle of the border's bottom line. */
	@:static @:public @:final public static var BOTTOM(default, null) : Int;
	
	/** Position the title below the border's bottom line. */
	@:static @:public @:final public static var BELOW_BOTTOM(default, null) : Int;
	
	/**
	* Use the default justification for the title text.
	*/
	@:static @:public @:final public static var DEFAULT_JUSTIFICATION(default, null) : Int;
	
	/** Position title text at the left side of the border line. */
	@:static @:public @:final public static var LEFT(default, null) : Int;
	
	/** Position title text in the center of the border line. */
	@:static @:public @:final public static var CENTER(default, null) : Int;
	
	/** Position title text at the right side of the border line. */
	@:static @:public @:final public static var RIGHT(default, null) : Int;
	
	/** Position title text at the left side of the border line
	*  for left to right orientation, at the right side of the
	*  border line for right to left orientation.
	*/
	@:static @:public @:final public static var LEADING(default, null) : Int;
	
	/** Position title text at the right side of the border line
	*  for left to right orientation, at the left side of the
	*  border line for right to left orientation.
	*/
	@:static @:public @:final public static var TRAILING(default, null) : Int;
	
	@:static @:protected @:final private static var EDGE_SPACING(default, null) : Int;
	
	@:static @:protected @:final private static var TEXT_SPACING(default, null) : Int;
	
	@:static @:protected @:final private static var TEXT_INSET_H(default, null) : Int;
	
	/**
	* Creates a TitledBorder instance.
	*
	* @param title  the title the border should display
	*/
	@:overload @:public public function new(title : String) : Void;
	
	/**
	* Creates a TitledBorder instance with the specified border
	* and an empty title.
	*
	* @param border  the border
	*/
	@:overload @:public public function new(border : javax.swing.border.Border) : Void;
	
	/**
	* Creates a TitledBorder instance with the specified border
	* and title.
	*
	* @param border  the border
	* @param title  the title the border should display
	*/
	@:overload @:public public function new(border : javax.swing.border.Border, title : String) : Void;
	
	/**
	* Creates a TitledBorder instance with the specified border,
	* title, title-justification, and title-position.
	*
	* @param border  the border
	* @param title  the title the border should display
	* @param titleJustification the justification for the title
	* @param titlePosition the position for the title
	*/
	@:overload @:public public function new(border : javax.swing.border.Border, title : String, titleJustification : Int, titlePosition : Int) : Void;
	
	/**
	* Creates a TitledBorder instance with the specified border,
	* title, title-justification, title-position, and title-font.
	*
	* @param border  the border
	* @param title  the title the border should display
	* @param titleJustification the justification for the title
	* @param titlePosition the position for the title
	* @param titleFont the font for rendering the title
	*/
	@:overload @:public public function new(border : javax.swing.border.Border, title : String, titleJustification : Int, titlePosition : Int, titleFont : java.awt.Font) : Void;
	
	/**
	* Creates a TitledBorder instance with the specified border,
	* title, title-justification, title-position, title-font, and
	* title-color.
	*
	* @param border  the border
	* @param title  the title the border should display
	* @param titleJustification the justification for the title
	* @param titlePosition the position for the title
	* @param titleFont the font of the title
	* @param titleColor the color of the title
	*/
	@:overload @:public public function new(border : javax.swing.border.Border, title : String, titleJustification : Int, titlePosition : Int, titleFont : java.awt.Font, titleColor : java.awt.Color) : Void;
	
	/**
	* Paints the border for the specified component with the
	* specified position and size.
	* @param c the component for which this border is being painted
	* @param g the paint graphics
	* @param x the x position of the painted border
	* @param y the y position of the painted border
	* @param width the width of the painted border
	* @param height the height of the painted border
	*/
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Reinitialize the insets parameter with this Border's current Insets.
	* @param c the component for which this border insets value applies
	* @param insets the object to be reinitialized
	*/
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Returns whether or not the border is opaque.
	*/
	@:overload @:public override public function isBorderOpaque() : Bool;
	
	/**
	* Returns the title of the titled border.
	*
	* @return the title of the titled border
	*/
	@:overload @:public public function getTitle() : String;
	
	/**
	* Returns the border of the titled border.
	*
	* @return the border of the titled border
	*/
	@:overload @:public public function getBorder() : javax.swing.border.Border;
	
	/**
	* Returns the title-position of the titled border.
	*
	* @return the title-position of the titled border
	*/
	@:overload @:public public function getTitlePosition() : Int;
	
	/**
	* Returns the title-justification of the titled border.
	*
	* @return the title-justification of the titled border
	*/
	@:overload @:public public function getTitleJustification() : Int;
	
	/**
	* Returns the title-font of the titled border.
	*
	* @return the title-font of the titled border
	*/
	@:overload @:public public function getTitleFont() : java.awt.Font;
	
	/**
	* Returns the title-color of the titled border.
	*
	* @return the title-color of the titled border
	*/
	@:overload @:public public function getTitleColor() : java.awt.Color;
	
	/**
	* Sets the title of the titled border.
	* @param title  the title for the border
	*/
	@:overload @:public public function setTitle(title : String) : Void;
	
	/**
	* Sets the border of the titled border.
	* @param border the border
	*/
	@:overload @:public public function setBorder(border : javax.swing.border.Border) : Void;
	
	/**
	* Sets the title-position of the titled border.
	* @param titlePosition the position for the border
	*/
	@:overload @:public public function setTitlePosition(titlePosition : Int) : Void;
	
	/**
	* Sets the title-justification of the titled border.
	* @param titleJustification the justification for the border
	*/
	@:overload @:public public function setTitleJustification(titleJustification : Int) : Void;
	
	/**
	* Sets the title-font of the titled border.
	* @param titleFont the font for the border title
	*/
	@:overload @:public public function setTitleFont(titleFont : java.awt.Font) : Void;
	
	/**
	* Sets the title-color of the titled border.
	* @param titleColor the color for the border title
	*/
	@:overload @:public public function setTitleColor(titleColor : java.awt.Color) : Void;
	
	/**
	* Returns the minimum dimensions this border requires
	* in order to fully display the border and title.
	* @param c the component where this border will be drawn
	* @return the {@code Dimension} object
	*/
	@:overload @:public public function getMinimumSize(c : java.awt.Component) : java.awt.Dimension;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaseline(c : java.awt.Component, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the border
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaselineResizeBehavior(c : java.awt.Component) : java.awt.Component.Component_BaselineResizeBehavior;
	
	@:overload @:protected private function getFont(c : java.awt.Component) : java.awt.Font;
	
	
}
