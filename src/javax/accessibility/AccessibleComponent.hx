package javax.accessibility;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
* The AccessibleComponent interface should be supported by any object
* that is rendered on the screen.  This interface provides the standard
* mechanism for an assistive technology to determine and set the
* graphical representation of an object.  Applications can determine
* if an object supports the AccessibleComponent interface by first
* obtaining its AccessibleContext
* and then calling the
* {@link AccessibleContext#getAccessibleComponent} method.
* If the return value is not null, the object supports this interface.
*
* @see Accessible
* @see Accessible#getAccessibleContext
* @see AccessibleContext
* @see AccessibleContext#getAccessibleComponent
*
* @author      Peter Korn
* @author      Hans Muller
* @author      Willie Walker
*/
extern interface AccessibleComponent
{
	/**
	* Gets the background color of this object.
	*
	* @return the background color, if supported, of the object;
	* otherwise, null
	* @see #setBackground
	*/
	@:overload @:public public function getBackground() : java.awt.Color;
	
	/**
	* Sets the background color of this object.
	*
	* @param c the new Color for the background
	* @see #setBackground
	*/
	@:overload @:public public function setBackground(c : java.awt.Color) : Void;
	
	/**
	* Gets the foreground color of this object.
	*
	* @return the foreground color, if supported, of the object;
	* otherwise, null
	* @see #setForeground
	*/
	@:overload @:public public function getForeground() : java.awt.Color;
	
	/**
	* Sets the foreground color of this object.
	*
	* @param c the new Color for the foreground
	* @see #getForeground
	*/
	@:overload @:public public function setForeground(c : java.awt.Color) : Void;
	
	/**
	* Gets the Cursor of this object.
	*
	* @return the Cursor, if supported, of the object; otherwise, null
	* @see #setCursor
	*/
	@:overload @:public public function getCursor() : java.awt.Cursor;
	
	/**
	* Sets the Cursor of this object.
	*
	* @param cursor  the new Cursor for the object
	* @see #getCursor
	*/
	@:overload @:public public function setCursor(cursor : java.awt.Cursor) : Void;
	
	/**
	* Gets the Font of this object.
	*
	* @return the Font,if supported, for the object; otherwise, null
	* @see #setFont
	*/
	@:overload @:public public function getFont() : java.awt.Font;
	
	/**
	* Sets the Font of this object.
	*
	* @param f the new Font for the object
	* @see #getFont
	*/
	@:overload @:public public function setFont(f : java.awt.Font) : Void;
	
	/**
	* Gets the FontMetrics of this object.
	*
	* @param f the Font
	* @return the FontMetrics, if supported, the object; otherwise, null
	* @see #getFont
	*/
	@:overload @:public public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Determines if the object is enabled.  Objects that are enabled
	* will also have the AccessibleState.ENABLED state set in their
	* AccessibleStateSets.
	*
	* @return true if object is enabled; otherwise, false
	* @see #setEnabled
	* @see AccessibleContext#getAccessibleStateSet
	* @see AccessibleState#ENABLED
	* @see AccessibleStateSet
	*/
	@:overload @:public public function isEnabled() : Bool;
	
	/**
	* Sets the enabled state of the object.
	*
	* @param b if true, enables this object; otherwise, disables it
	* @see #isEnabled
	*/
	@:overload @:public public function setEnabled(b : Bool) : Void;
	
	/**
	* Determines if the object is visible.  Note: this means that the
	* object intends to be visible; however, it may not be
	* showing on the screen because one of the objects that this object
	* is contained by is currently not visible.  To determine if an object is
	* showing on the screen, use isShowing().
	* <p>Objects that are visible will also have the
	* AccessibleState.VISIBLE state set in their AccessibleStateSets.
	*
	* @return true if object is visible; otherwise, false
	* @see #setVisible
	* @see AccessibleContext#getAccessibleStateSet
	* @see AccessibleState#VISIBLE
	* @see AccessibleStateSet
	*/
	@:overload @:public public function isVisible() : Bool;
	
	/**
	* Sets the visible state of the object.
	*
	* @param b if true, shows this object; otherwise, hides it
	* @see #isVisible
	*/
	@:overload @:public public function setVisible(b : Bool) : Void;
	
	/**
	* Determines if the object is showing.  This is determined by checking
	* the visibility of the object and its ancestors.
	* Note: this
	* will return true even if the object is obscured by another (for example,
	* it is underneath a menu that was pulled down).
	*
	* @return true if object is showing; otherwise, false
	*/
	@:overload @:public public function isShowing() : Bool;
	
	/**
	* Checks whether the specified point is within this object's bounds,
	* where the point's x and y coordinates are defined to be relative to the
	* coordinate system of the object.
	*
	* @param p the Point relative to the coordinate system of the object
	* @return true if object contains Point; otherwise false
	* @see #getBounds
	*/
	@:overload @:public public function contains(p : java.awt.Point) : Bool;
	
	/**
	* Returns the location of the object on the screen.
	*
	* @return the location of the object on screen; null if this object
	* is not on the screen
	* @see #getBounds
	* @see #getLocation
	*/
	@:overload @:public public function getLocationOnScreen() : java.awt.Point;
	
	/**
	* Gets the location of the object relative to the parent in the form
	* of a point specifying the object's top-left corner in the screen's
	* coordinate space.
	*
	* @return An instance of Point representing the top-left corner of the
	* object's bounds in the coordinate space of the screen; null if
	* this object or its parent are not on the screen
	* @see #getBounds
	* @see #getLocationOnScreen
	*/
	@:overload @:public public function getLocation() : java.awt.Point;
	
	/**
	* Sets the location of the object relative to the parent.
	* @param p the new position for the top-left corner
	* @see #getLocation
	*/
	@:overload @:public public function setLocation(p : java.awt.Point) : Void;
	
	/**
	* Gets the bounds of this object in the form of a Rectangle object.
	* The bounds specify this object's width, height, and location
	* relative to its parent.
	*
	* @return A rectangle indicating this component's bounds; null if
	* this object is not on the screen.
	* @see #contains
	*/
	@:overload @:public public function getBounds() : java.awt.Rectangle;
	
	/**
	* Sets the bounds of this object in the form of a Rectangle object.
	* The bounds specify this object's width, height, and location
	* relative to its parent.
	*
	* @param r rectangle indicating this component's bounds
	* @see #getBounds
	*/
	@:overload @:public public function setBounds(r : java.awt.Rectangle) : Void;
	
	/**
	* Returns the size of this object in the form of a Dimension object.
	* The height field of the Dimension object contains this object's
	* height, and the width field of the Dimension object contains this
	* object's width.
	*
	* @return A Dimension object that indicates the size of this component;
	* null if this object is not on the screen
	* @see #setSize
	*/
	@:overload @:public public function getSize() : java.awt.Dimension;
	
	/**
	* Resizes this object so that it has width and height.
	*
	* @param d The dimension specifying the new size of the object.
	* @see #getSize
	*/
	@:overload @:public public function setSize(d : java.awt.Dimension) : Void;
	
	/**
	* Returns the Accessible child, if one exists, contained at the local
	* coordinate Point.
	*
	* @param p The point relative to the coordinate system of this object.
	* @return the Accessible, if it exists, at the specified location;
	* otherwise null
	*/
	@:overload @:public public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	/**
	* Returns whether this object can accept focus or not.   Objects that
	* can accept focus will also have the AccessibleState.FOCUSABLE state
	* set in their AccessibleStateSets.
	*
	* @return true if object can accept focus; otherwise false
	* @see AccessibleContext#getAccessibleStateSet
	* @see AccessibleState#FOCUSABLE
	* @see AccessibleState#FOCUSED
	* @see AccessibleStateSet
	*/
	@:overload @:public public function isFocusTraversable() : Bool;
	
	/**
	* Requests focus for this object.  If this object cannot accept focus,
	* nothing will happen.  Otherwise, the object will attempt to take
	* focus.
	* @see #isFocusTraversable
	*/
	@:overload @:public public function requestFocus() : Void;
	
	/**
	* Adds the specified focus listener to receive focus events from this
	* component.
	*
	* @param l the focus listener
	* @see #removeFocusListener
	*/
	@:overload @:public public function addFocusListener(l : java.awt.event.FocusListener) : Void;
	
	/**
	* Removes the specified focus listener so it no longer receives focus
	* events from this component.
	*
	* @param l the focus listener
	* @see #addFocusListener
	*/
	@:overload @:public public function removeFocusListener(l : java.awt.event.FocusListener) : Void;
	
	
}
