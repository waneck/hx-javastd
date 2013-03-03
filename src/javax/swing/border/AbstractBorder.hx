package javax.swing.border;
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
extern class AbstractBorder implements javax.swing.border.Border implements java.io.Serializable
{
	/**
	* This default implementation does no painting.
	* @param c the component for which this border is being painted
	* @param g the paint graphics
	* @param x the x position of the painted border
	* @param y the y position of the painted border
	* @param width the width of the painted border
	* @param height the height of the painted border
	*/
	@:overload @:public public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* This default implementation returns a new {@link Insets} object
	* that is initialized by the {@link #getBorderInsets(Component,Insets)}
	* method.
	* By default the {@code top}, {@code left}, {@code bottom},
	* and {@code right} fields are set to {@code 0}.
	*
	* @param c  the component for which this border insets value applies
	* @return a new {@link Insets} object
	*/
	@:overload @:public public function getBorderInsets(c : java.awt.Component) : java.awt.Insets;
	
	/**
	* Reinitializes the insets parameter with this Border's current Insets.
	* @param c the component for which this border insets value applies
	* @param insets the object to be reinitialized
	* @return the <code>insets</code> object
	*/
	@:overload @:public public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* This default implementation returns false.
	* @return false
	*/
	@:overload @:public public function isBorderOpaque() : Bool;
	
	/**
	* This convenience method calls the static method.
	* @param c the component for which this border is being computed
	* @param x the x position of the border
	* @param y the y position of the border
	* @param width the width of the border
	* @param height the height of the border
	* @return a <code>Rectangle</code> containing the interior coordinates
	*/
	@:overload @:public public function getInteriorRectangle(c : java.awt.Component, x : Int, y : Int, width : Int, height : Int) : java.awt.Rectangle;
	
	/**
	* Returns a rectangle using the arguments minus the
	* insets of the border. This is useful for determining the area
	* that components should draw in that will not intersect the border.
	* @param c the component for which this border is being computed
	* @param b the <code>Border</code> object
	* @param x the x position of the border
	* @param y the y position of the border
	* @param width the width of the border
	* @param height the height of the border
	* @return a <code>Rectangle</code> containing the interior coordinates
	*/
	@:native('getInteriorRectangle') @:overload @:public @:static public static function _getInteriorRectangle(c : java.awt.Component, b : javax.swing.border.Border, x : Int, y : Int, width : Int, height : Int) : java.awt.Rectangle;
	
	/**
	* Returns the baseline.  A return value less than 0 indicates the border
	* does not have a reasonable baseline.
	* <p>
	* The default implementation returns -1.  Subclasses that support
	* baseline should override appropriately.  If a value &gt;= 0 is
	* returned, then the component has a valid baseline for any
	* size &gt;= the minimum size and <code>getBaselineResizeBehavior</code>
	* can be used to determine how the baseline changes with size.
	*
	* @param c <code>Component</code> baseline is being requested for
	* @param width the width to get the baseline for
	* @param height the height to get the baseline for
	* @return the baseline or &lt; 0 indicating there is no reasonable
	*         baseline
	* @throws IllegalArgumentException if width or height is &lt; 0
	* @see java.awt.Component#getBaseline(int,int)
	* @see java.awt.Component#getBaselineResizeBehavior()
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getBaseline(c : java.awt.Component, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of a component
	* changes as the size changes.  This method is primarily meant for
	* layout managers and GUI builders.
	* <p>
	* The default implementation returns
	* <code>BaselineResizeBehavior.OTHER</code>, subclasses that support
	* baseline should override appropriately.  Subclasses should
	* never return <code>null</code>; if the baseline can not be
	* calculated return <code>BaselineResizeBehavior.OTHER</code>.  Callers
	* should first ask for the baseline using
	* <code>getBaseline</code> and if a value &gt;= 0 is returned use
	* this method.  It is acceptable for this method to return a
	* value other than <code>BaselineResizeBehavior.OTHER</code> even if
	* <code>getBaseline</code> returns a value less than 0.
	*
	* @param c <code>Component</code> to return baseline resize behavior for
	* @return an enum indicating how the baseline changes as the border is
	*         resized
	* @see java.awt.Component#getBaseline(int,int)
	* @see java.awt.Component#getBaselineResizeBehavior()
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getBaselineResizeBehavior(c : java.awt.Component) : java.awt.Component.Component_BaselineResizeBehavior;
	
	
}
