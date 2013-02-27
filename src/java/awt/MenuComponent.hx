package java.awt;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class MenuComponent implements java.io.Serializable
{
	/**
	* Creates a <code>MenuComponent</code>.
	* @exception HeadlessException if
	*    <code>GraphicsEnvironment.isHeadless</code>
	*    returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new() : Void;
	
	/**
	* Gets the name of the menu component.
	* @return        the name of the menu component
	* @see           java.awt.MenuComponent#setName(java.lang.String)
	* @since         JDK1.1
	*/
	@:require(java1) @:overload public function getName() : String;
	
	/**
	* Sets the name of the component to the specified string.
	* @param         name    the name of the menu component
	* @see           java.awt.MenuComponent#getName
	* @since         JDK1.1
	*/
	@:require(java1) @:overload public function setName(name : String) : Void;
	
	/**
	* Returns the parent container for this menu component.
	* @return    the menu component containing this menu component,
	*                 or <code>null</code> if this menu component
	*                 is the outermost component, the menu bar itself
	*/
	@:overload public function getParent() : java.awt.MenuContainer;
	
	/**
	* @deprecated As of JDK version 1.1,
	* programs should not directly manipulate peers.
	*/
	@:overload public function getPeer() : java.awt.peer.MenuComponentPeer;
	
	/**
	* Gets the font used for this menu component.
	* @return   the font used in this menu component, if there is one;
	*                  <code>null</code> otherwise
	* @see     java.awt.MenuComponent#setFont
	*/
	@:overload public function getFont() : java.awt.Font;
	
	/**
	* Sets the font to be used for this menu component to the specified
	* font. This font is also used by all subcomponents of this menu
	* component, unless those subcomponents specify a different font.
	* <p>
	* Some platforms may not support setting of all font attributes
	* of a menu component; in such cases, calling <code>setFont</code>
	* will have no effect on the unsupported font attributes of this
	* menu component.  Unless subcomponents of this menu component
	* specify a different font, this font will be used by those
	* subcomponents if supported by the underlying platform.
	*
	* @param     f   the font to be set
	* @see       #getFont
	* @see       Font#getAttributes
	* @see       java.awt.font.TextAttribute
	*/
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	/**
	* Removes the menu component's peer.  The peer allows us to modify the
	* appearance of the menu component without changing the functionality of
	* the menu component.
	*/
	@:overload public function removeNotify() : Void;
	
	/**
	* Posts the specified event to the menu.
	* This method is part of the Java&nbsp;1.0 event system
	* and it is maintained only for backwards compatibility.
	* Its use is discouraged, and it may not be supported
	* in the future.
	* @param evt the event which is to take place
	* @deprecated As of JDK version 1.1, replaced by {@link
	* #dispatchEvent(AWTEvent) dispatchEvent}.
	*/
	@:overload public function postEvent(evt : java.awt.Event) : Bool;
	
	/**
	* Delivers an event to this component or one of its sub components.
	* @param e the event
	*/
	@:overload @:final public function dispatchEvent(e : java.awt.AWTEvent) : Void;
	
	/**
	* Processes events occurring on this menu component.
	* <p>Note that if the event parameter is <code>null</code>
	* the behavior is unspecified and may result in an
	* exception.
	*
	* @param e the event
	* @since JDK1.1
	*/
	@:require(java1) @:overload private function processEvent(e : java.awt.AWTEvent) : Void;
	
	/**
	* Returns a string representing the state of this
	* <code>MenuComponent</code>. This method is intended to be used
	* only for debugging purposes, and the content and format of the
	* returned string may vary between implementations. The returned
	* string may be empty but may not be <code>null</code>.
	*
	* @return     the parameter string of this menu component
	*/
	@:overload private function paramString() : String;
	
	/**
	* Returns a representation of this menu component as a string.
	* @return  a string representation of this menu component
	*/
	@:overload public function toString() : String;
	
	/**
	* Gets this component's locking object (the object that owns the thread
	* sychronization monitor) for AWT component-tree and layout
	* operations.
	* @return this component's locking object
	*/
	@:overload @:final private function getTreeLock() : Dynamic;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with
	* this <code>MenuComponent</code>.
	*
	* The method implemented by this base class returns <code>null</code>.
	* Classes that extend <code>MenuComponent</code>
	* should implement this method to return the
	* <code>AccessibleContext</code> associated with the subclass.
	*
	* @return the <code>AccessibleContext</code> of this
	*     <code>MenuComponent</code>
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* Inner class of <code>MenuComponent</code> used to provide
* default support for accessibility.  This class is not meant
* to be used directly by application developers, but is instead
* meant only to be subclassed by menu component developers.
* <p>
* The class used to obtain the accessible role for this object.
* @since 1.3
*/
@:require(java3) @:native('java$awt$MenuComponent$AccessibleAWTMenuComponent') extern class MenuComponent_AccessibleAWTMenuComponent extends javax.accessibility.AccessibleContext implements java.io.Serializable implements javax.accessibility.AccessibleComponent implements javax.accessibility.AccessibleSelection
{
	/**
	* Although the class is abstract, this should be called by
	* all sub-classes.
	*/
	@:overload private function new() : Void;
	
	/**
	* Gets the <code>AccessibleSelection</code> associated with this
	* object which allows its <code>Accessible</code> children to be selected.
	*
	* @return <code>AccessibleSelection</code> if supported by object;
	*      else return <code>null</code>
	* @see AccessibleSelection
	*/
	@:overload override public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Gets the accessible name of this object.  This should almost never
	* return <code>java.awt.MenuComponent.getName</code>, as that
	* generally isn't a localized name, and doesn't have meaning for the
	* user.  If the object is fundamentally a text object (e.g. a menu item), the
	* accessible name should be the text of the object (e.g. "save").
	* If the object has a tooltip, the tooltip text may also be an
	* appropriate String to return.
	*
	* @return the localized name of the object -- can be <code>null</code>
	*         if this object does not have a name
	* @see AccessibleContext#setAccessibleName
	*/
	@:overload override public function getAccessibleName() : String;
	
	/**
	* Gets the accessible description of this object.  This should be
	* a concise, localized description of what this object is - what
	* is its meaning to the user.  If the object has a tooltip, the
	* tooltip text may be an appropriate string to return, assuming
	* it contains a concise description of the object (instead of just
	* the name of the object - e.g. a "Save" icon on a toolbar that
	* had "save" as the tooltip text shouldn't return the tooltip
	* text as the description, but something like "Saves the current
	* text document" instead).
	*
	* @return the localized description of the object -- can be
	*     <code>null</code> if this object does not have a description
	* @see AccessibleContext#setAccessibleDescription
	*/
	@:overload override public function getAccessibleDescription() : String;
	
	/**
	* Gets the role of this object.
	*
	* @return an instance of <code>AccessibleRole</code>
	*     describing the role of the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the state of this object.
	*
	* @return an instance of <code>AccessibleStateSet</code>
	*     containing the current state set of the object
	* @see AccessibleState
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Gets the <code>Accessible</code> parent of this object.
	* If the parent of this object implements <code>Accessible</code>,
	* this method should simply return <code>getParent</code>.
	*
	* @return the <code>Accessible</code> parent of this object -- can
	*    be <code>null</code> if this object does not have an
	*    <code>Accessible</code> parent
	*/
	@:overload override public function getAccessibleParent() : javax.accessibility.Accessible;
	
	/**
	* Gets the index of this object in its accessible parent.
	*
	* @return the index of this object in its parent; -1 if this
	*     object does not have an accessible parent
	* @see #getAccessibleParent
	*/
	@:overload override public function getAccessibleIndexInParent() : Int;
	
	/**
	* Returns the number of accessible children in the object.  If all
	* of the children of this object implement <code>Accessible</code>,
	* then this method should return the number of children of this object.
	*
	* @return the number of accessible children in the object
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Returns the nth <code>Accessible</code> child of the object.
	*
	* @param i zero-based index of child
	* @return the nth Accessible child of the object
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns the locale of this object.
	*
	* @return the locale of this object
	*/
	@:overload override public function getLocale() : java.util.Locale;
	
	/**
	* Gets the <code>AccessibleComponent</code> associated with
	* this object if one exists.  Otherwise return <code>null</code>.
	*
	* @return the component
	*/
	@:overload override public function getAccessibleComponent() : javax.accessibility.AccessibleComponent;
	
	/**
	* Gets the background color of this object.
	*
	* @return the background color, if supported, of the object;
	*     otherwise, <code>null</code>
	*/
	@:overload public function getBackground() : java.awt.Color;
	
	/**
	* Sets the background color of this object.
	* (For transparency, see <code>isOpaque</code>.)
	*
	* @param c the new <code>Color</code> for the background
	* @see Component#isOpaque
	*/
	@:overload public function setBackground(c : java.awt.Color) : Void;
	
	/**
	* Gets the foreground color of this object.
	*
	* @return the foreground color, if supported, of the object;
	*     otherwise, <code>null</code>
	*/
	@:overload public function getForeground() : java.awt.Color;
	
	/**
	* Sets the foreground color of this object.
	*
	* @param c the new <code>Color</code> for the foreground
	*/
	@:overload public function setForeground(c : java.awt.Color) : Void;
	
	/**
	* Gets the <code>Cursor</code> of this object.
	*
	* @return the <code>Curso</code>, if supported, of the object;
	*     otherwise, <code>null</code>
	*/
	@:overload public function getCursor() : java.awt.Cursor;
	
	/**
	* Sets the <code>Cursor</code> of this object.
	* <p>
	* The method may have no visual effect if the Java platform
	* implementation and/or the native system do not support
	* changing the mouse cursor shape.
	* @param cursor the new <code>Cursor</code> for the object
	*/
	@:overload public function setCursor(cursor : java.awt.Cursor) : Void;
	
	/**
	* Gets the <code>Font</code> of this object.
	*
	* @return the <code>Font</code>,if supported, for the object;
	*     otherwise, <code>null</code>
	*/
	@:overload public function getFont() : java.awt.Font;
	
	/**
	* Sets the <code>Font</code> of this object.
	*
	* @param f the new <code>Font</code> for the object
	*/
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	/**
	* Gets the <code>FontMetrics</code> of this object.
	*
	* @param f the <code>Font</code>
	* @return the FontMetrics, if supported, the object;
	*              otherwise, <code>null</code>
	* @see #getFont
	*/
	@:overload public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Determines if the object is enabled.
	*
	* @return true if object is enabled; otherwise, false
	*/
	@:overload public function isEnabled() : Bool;
	
	/**
	* Sets the enabled state of the object.
	*
	* @param b if true, enables this object; otherwise, disables it
	*/
	@:overload public function setEnabled(b : Bool) : Void;
	
	/**
	* Determines if the object is visible.  Note: this means that the
	* object intends to be visible; however, it may not in fact be
	* showing on the screen because one of the objects that this object
	* is contained by is not visible.  To determine if an object is
	* showing on the screen, use <code>isShowing</code>.
	*
	* @return true if object is visible; otherwise, false
	*/
	@:overload public function isVisible() : Bool;
	
	/**
	* Sets the visible state of the object.
	*
	* @param b if true, shows this object; otherwise, hides it
	*/
	@:overload public function setVisible(b : Bool) : Void;
	
	/**
	* Determines if the object is showing.  This is determined by checking
	* the visibility of the object and ancestors of the object.  Note:
	* this will return true even if the object is obscured by another
	* (for example, it happens to be underneath a menu that was pulled
	* down).
	*
	* @return true if object is showing; otherwise, false
	*/
	@:overload public function isShowing() : Bool;
	
	/**
	* Checks whether the specified point is within this object's bounds,
	* where the point's x and y coordinates are defined to be relative to
	* the coordinate system of the object.
	*
	* @param p the <code>Point</code> relative to the coordinate
	*     system of the object
	* @return true if object contains <code>Point</code>; otherwise false
	*/
	@:overload public function contains(p : java.awt.Point) : Bool;
	
	/**
	* Returns the location of the object on the screen.
	*
	* @return location of object on screen -- can be <code>null</code>
	*     if this object is not on the screen
	*/
	@:overload public function getLocationOnScreen() : java.awt.Point;
	
	/**
	* Gets the location of the object relative to the parent in the form
	* of a point specifying the object's top-left corner in the screen's
	* coordinate space.
	*
	* @return an instance of <code>Point</code> representing the
	*    top-left corner of the object's bounds in the coordinate
	*    space of the screen; <code>null</code> if
	*    this object or its parent are not on the screen
	*/
	@:overload public function getLocation() : java.awt.Point;
	
	/**
	* Sets the location of the object relative to the parent.
	*/
	@:overload public function setLocation(p : java.awt.Point) : Void;
	
	/**
	* Gets the bounds of this object in the form of a
	* <code>Rectangle</code> object.
	* The bounds specify this object's width, height, and location
	* relative to its parent.
	*
	* @return a rectangle indicating this component's bounds;
	*     <code>null</code> if this object is not on the screen
	*/
	@:overload public function getBounds() : java.awt.Rectangle;
	
	/**
	* Sets the bounds of this object in the form of a
	* <code>Rectangle</code> object.
	* The bounds specify this object's width, height, and location
	* relative to its parent.
	*
	* @param r a rectangle indicating this component's bounds
	*/
	@:overload public function setBounds(r : java.awt.Rectangle) : Void;
	
	/**
	* Returns the size of this object in the form of a
	* <code>Dimension</code> object. The height field of
	* the <code>Dimension</code> object contains this object's
	* height, and the width field of the <code>Dimension</code>
	* object contains this object's width.
	*
	* @return a <code>Dimension</code> object that indicates the
	*         size of this component; <code>null</code>
	*         if this object is not on the screen
	*/
	@:overload public function getSize() : java.awt.Dimension;
	
	/**
	* Resizes this object.
	*
	* @param d - the <code>Dimension</code> specifying the
	*    new size of the object
	*/
	@:overload public function setSize(d : java.awt.Dimension) : Void;
	
	/**
	* Returns the <code>Accessible</code> child, if one exists,
	* contained at the local coordinate <code>Point</code>.
	* If there is no <code>Accessible</code> child, <code>null</code>
	* is returned.
	*
	* @param p the point defining the top-left corner of the
	*    <code>Accessible</code>, given in the coordinate space
	*    of the object's parent
	* @return the <code>Accessible</code>, if it exists,
	*    at the specified location; else <code>null</code>
	*/
	@:overload public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	/**
	* Returns whether this object can accept focus or not.
	*
	* @return true if object can accept focus; otherwise false
	*/
	@:overload public function isFocusTraversable() : Bool;
	
	/**
	* Requests focus for this object.
	*/
	@:overload public function requestFocus() : Void;
	
	/**
	* Adds the specified focus listener to receive focus events from this
	* component.
	*
	* @param l the focus listener
	*/
	@:overload public function addFocusListener(l : java.awt.event.FocusListener) : Void;
	
	/**
	* Removes the specified focus listener so it no longer receives focus
	* events from this component.
	*
	* @param l the focus listener
	*/
	@:overload public function removeFocusListener(l : java.awt.event.FocusListener) : Void;
	
	/**
	* Returns the number of <code>Accessible</code> children currently selected.
	* If no children are selected, the return value will be 0.
	*
	* @return the number of items currently selected
	*/
	@:overload public function getAccessibleSelectionCount() : Int;
	
	/**
	* Returns an <code>Accessible</code> representing the specified
	* selected child in the object.  If there isn't a selection, or there are
	* fewer children selected than the integer passed in, the return
	* value will be <code>null</code>.
	* <p>Note that the index represents the i-th selected child, which
	* is different from the i-th child.
	*
	* @param i the zero-based index of selected children
	* @return the i-th selected child
	* @see #getAccessibleSelectionCount
	*/
	@:overload public function getAccessibleSelection(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Determines if the current child of this object is selected.
	*
	* @return true if the current child of this object is selected;
	*    else false
	* @param i the zero-based index of the child in this
	*      <code>Accessible</code> object
	* @see AccessibleContext#getAccessibleChild
	*/
	@:overload public function isAccessibleChildSelected(i : Int) : Bool;
	
	/**
	* Adds the specified <code>Accessible</code> child of the object
	* to the object's selection.  If the object supports multiple selections,
	* the specified child is added to any existing selection, otherwise
	* it replaces any existing selection in the object.  If the
	* specified child is already selected, this method has no effect.
	*
	* @param i the zero-based index of the child
	* @see AccessibleContext#getAccessibleChild
	*/
	@:overload public function addAccessibleSelection(i : Int) : Void;
	
	/**
	* Removes the specified child of the object from the object's
	* selection.  If the specified item isn't currently selected, this
	* method has no effect.
	*
	* @param i the zero-based index of the child
	* @see AccessibleContext#getAccessibleChild
	*/
	@:overload public function removeAccessibleSelection(i : Int) : Void;
	
	/**
	* Clears the selection in the object, so that no children in the
	* object are selected.
	*/
	@:overload public function clearAccessibleSelection() : Void;
	
	/**
	* Causes every child of the object to be selected
	* if the object supports multiple selections.
	*/
	@:overload public function selectAllAccessibleSelection() : Void;
	
	
}
