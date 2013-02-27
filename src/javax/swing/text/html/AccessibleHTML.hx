package javax.swing.text.html;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AccessibleHTML implements javax.accessibility.Accessible
{
	@:overload public function new(pane : javax.swing.JEditorPane) : Void;
	
	/**
	* Returns the root AccessibleContext for the document
	*/
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/*
* The roow AccessibleContext for the document
*/
@:native('javax$swing$text$html$AccessibleHTML$RootHTMLAccessibleContext') @:internal extern class AccessibleHTML_RootHTMLAccessibleContext extends AccessibleHTML_HTMLAccessibleContext
{
	@:overload public function new(elementInfo : AccessibleHTML_ElementInfo) : Void;
	
	/**
	* Gets the accessibleName property of this object.  The accessibleName
	* property of an object is a localized String that designates the purpose
	* of the object.  For example, the accessibleName property of a label
	* or button might be the text of the label or button itself.  In the
	* case of an object that doesn't display its name, the accessibleName
	* should still be set.  For example, in the case of a text field used
	* to enter the name of a city, the accessibleName for the en_US locale
	* could be 'city.'
	*
	* @return the localized name of the object; null if this
	* object does not have a name
	*
	* @see #setAccessibleName
	*/
	@:overload override public function getAccessibleName() : String;
	
	/**
	* Gets the accessibleDescription property of this object.  If this
	* property isn't set, returns the content type of this
	* <code>JEditorPane</code> instead (e.g. "plain/text", "html/text").
	*
	* @return the localized description of the object; <code>null</code>
	*      if this object does not have a description
	*
	* @see #setAccessibleName
	*/
	@:overload override public function getAccessibleDescription() : String;
	
	/**
	* Gets the role of this object.  The role of the object is the generic
	* purpose or use of the class of this object.  For example, the role
	* of a push button is AccessibleRole.PUSH_BUTTON.  The roles in
	* AccessibleRole are provided so component developers can pick from
	* a set of predefined roles.  This enables assistive technologies to
	* provide a consistent interface to various tweaked subclasses of
	* components (e.g., use AccessibleRole.PUSH_BUTTON for all components
	* that act like a push button) as well as distinguish between sublasses
	* that behave differently (e.g., AccessibleRole.CHECK_BOX for check boxes
	* and AccessibleRole.RADIO_BUTTON for radio buttons).
	* <p>Note that the AccessibleRole class is also extensible, so
	* custom component developers can define their own AccessibleRole's
	* if the set of predefined roles is inadequate.
	*
	* @return an instance of AccessibleRole describing the role of the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
/*
* Base AccessibleContext class for HTML elements
*/
@:native('javax$swing$text$html$AccessibleHTML$HTMLAccessibleContext') extern class AccessibleHTML_HTMLAccessibleContext extends javax.accessibility.AccessibleContext implements javax.accessibility.Accessible implements javax.accessibility.AccessibleComponent
{
	private var elementInfo : AccessibleHTML_ElementInfo;
	
	@:overload public function new(elementInfo : AccessibleHTML_ElementInfo) : Void;
	
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	/**
	* Gets the state set of this object.
	*
	* @return an instance of AccessibleStateSet describing the states
	* of the object
	* @see AccessibleStateSet
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Gets the 0-based index of this object in its accessible parent.
	*
	* @return the 0-based index of this object in its parent; -1 if this
	* object does not have an accessible parent.
	*
	* @see #getAccessibleParent
	* @see #getAccessibleChildrenCount
	* @see #getAccessibleChild
	*/
	@:overload override public function getAccessibleIndexInParent() : Int;
	
	/**
	* Returns the number of accessible children of the object.
	*
	* @return the number of accessible children of the object.
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Returns the specified Accessible child of the object.  The Accessible
	* children of an Accessible object are zero-based, so the first child
	* of an Accessible child is at index 0, the second child is at index 1,
	* and so on.
	*
	* @param i zero-based index of child
	* @return the Accessible child of the object
	* @see #getAccessibleChildrenCount
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Gets the locale of the component. If the component does not have a
	* locale, then the locale of its parent is returned.
	*
	* @return this component's locale.  If this component does not have
	* a locale, the locale of its parent is returned.
	*
	* @exception IllegalComponentStateException
	* If the Component does not have its own locale and has not yet been
	* added to a containment hierarchy such that the locale can be
	* determined from the containing parent.
	*/
	@:overload override public function getLocale() : java.util.Locale;
	
	@:overload override public function getAccessibleComponent() : javax.accessibility.AccessibleComponent;
	
	/**
	* Gets the background color of this object.
	*
	* @return the background color, if supported, of the object;
	* otherwise, null
	* @see #setBackground
	*/
	@:overload public function getBackground() : java.awt.Color;
	
	/**
	* Sets the background color of this object.
	*
	* @param c the new Color for the background
	* @see #setBackground
	*/
	@:overload public function setBackground(c : java.awt.Color) : Void;
	
	/**
	* Gets the foreground color of this object.
	*
	* @return the foreground color, if supported, of the object;
	* otherwise, null
	* @see #setForeground
	*/
	@:overload public function getForeground() : java.awt.Color;
	
	/**
	* Sets the foreground color of this object.
	*
	* @param c the new Color for the foreground
	* @see #getForeground
	*/
	@:overload public function setForeground(c : java.awt.Color) : Void;
	
	/**
	* Gets the Cursor of this object.
	*
	* @return the Cursor, if supported, of the object; otherwise, null
	* @see #setCursor
	*/
	@:overload public function getCursor() : java.awt.Cursor;
	
	/**
	* Sets the Cursor of this object.
	*
	* @param cursor the new Cursor for the object
	* @see #getCursor
	*/
	@:overload public function setCursor(cursor : java.awt.Cursor) : Void;
	
	/**
	* Gets the Font of this object.
	*
	* @return the Font,if supported, for the object; otherwise, null
	* @see #setFont
	*/
	@:overload public function getFont() : java.awt.Font;
	
	/**
	* Sets the Font of this object.
	*
	* @param f the new Font for the object
	* @see #getFont
	*/
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	/**
	* Gets the FontMetrics of this object.
	*
	* @param f the Font
	* @return the FontMetrics, if supported, the object; otherwise, null
	* @see #getFont
	*/
	@:overload public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
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
	@:overload public function isEnabled() : Bool;
	
	/**
	* Sets the enabled state of the object.
	*
	* @param b if true, enables this object; otherwise, disables it
	* @see #isEnabled
	*/
	@:overload public function setEnabled(b : Bool) : Void;
	
	/**
	* Determines if the object is visible.  Note: this means that the
	* object intends to be visible; however, it may not be
	* showing on the screen because one of the objects that this object
	* is contained by is currently not visible.  To determine if an object
	* is showing on the screen, use isShowing().
	* <p>Objects that are visible will also have the
	* AccessibleState.VISIBLE state set in their AccessibleStateSets.
	*
	* @return true if object is visible; otherwise, false
	* @see #setVisible
	* @see AccessibleContext#getAccessibleStateSet
	* @see AccessibleState#VISIBLE
	* @see AccessibleStateSet
	*/
	@:overload public function isVisible() : Bool;
	
	/**
	* Sets the visible state of the object.
	*
	* @param b if true, shows this object; otherwise, hides it
	* @see #isVisible
	*/
	@:overload public function setVisible(b : Bool) : Void;
	
	/**
	* Determines if the object is showing.  This is determined by checking
	* the visibility of the object and its ancestors.
	* Note: this
	* will return true even if the object is obscured by another (for
	* example, it is underneath a menu that was pulled down).
	*
	* @return true if object is showing; otherwise, false
	*/
	@:overload public function isShowing() : Bool;
	
	/**
	* Checks whether the specified point is within this object's bounds,
	* where the point's x and y coordinates are defined to be relative
	* to the coordinate system of the object.
	*
	* @param p the Point relative to the coordinate system of the object
	* @return true if object contains Point; otherwise false
	* @see #getBounds
	*/
	@:overload public function contains(p : java.awt.Point) : Bool;
	
	/**
	* Returns the location of the object on the screen.
	*
	* @return the location of the object on screen; null if this object
	* is not on the screen
	* @see #getBounds
	* @see #getLocation
	*/
	@:overload public function getLocationOnScreen() : java.awt.Point;
	
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
	@:overload public function getLocation() : java.awt.Point;
	
	/**
	* Sets the location of the object relative to the parent.
	* @param p the new position for the top-left corner
	* @see #getLocation
	*/
	@:overload public function setLocation(p : java.awt.Point) : Void;
	
	/**
	* Gets the bounds of this object in the form of a Rectangle object.
	* The bounds specify this object's width, height, and location
	* relative to its parent.
	*
	* @return A rectangle indicating this component's bounds; null if
	* this object is not on the screen.
	* @see #contains
	*/
	@:overload public function getBounds() : java.awt.Rectangle;
	
	/**
	* Sets the bounds of this object in the form of a Rectangle object.
	* The bounds specify this object's width, height, and location
	* relative to its parent.
	*
	* @param r rectangle indicating this component's bounds
	* @see #getBounds
	*/
	@:overload public function setBounds(r : java.awt.Rectangle) : Void;
	
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
	@:overload public function getSize() : java.awt.Dimension;
	
	/**
	* Resizes this object so that it has width and height.
	*
	* @param d The dimension specifying the new size of the object.
	* @see #getSize
	*/
	@:overload public function setSize(d : java.awt.Dimension) : Void;
	
	/**
	* Returns the Accessible child, if one exists, contained at the local
	* coordinate Point.
	*
	* @param p The point relative to the coordinate system of this object.
	* @return the Accessible, if it exists, at the specified location;
	* otherwise null
	*/
	@:overload public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
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
	@:overload public function isFocusTraversable() : Bool;
	
	/**
	* Requests focus for this object.  If this object cannot accept focus,
	* nothing will happen.  Otherwise, the object will attempt to take
	* focus.
	* @see #isFocusTraversable
	*/
	@:overload public function requestFocus() : Void;
	
	/**
	* Adds the specified focus listener to receive focus events from this
	* component.
	*
	* @param l the focus listener
	* @see #removeFocusListener
	*/
	@:overload public function addFocusListener(l : java.awt.event.FocusListener) : Void;
	
	/**
	* Removes the specified focus listener so it no longer receives focus
	* events from this component.
	*
	* @param l the focus listener
	* @see #addFocusListener
	*/
	@:overload public function removeFocusListener(l : java.awt.event.FocusListener) : Void;
	
	
}
/*
* ElementInfo for text
*/
@:native('javax$swing$text$html$AccessibleHTML$TextElementInfo') @:internal extern class AccessibleHTML_TextElementInfo extends AccessibleHTML_ElementInfo implements javax.accessibility.Accessible
{
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/*
* AccessibleContext for text elements
*/
@:native('javax$swing$text$html$AccessibleHTML$TextElementInfo$TextAccessibleContext') extern class AccessibleHTML_TextElementInfo_TextAccessibleContext extends AccessibleHTML_HTMLAccessibleContext implements javax.accessibility.AccessibleText
{
	@:overload public function new(elementInfo : AccessibleHTML_ElementInfo) : Void;
	
	@:overload override public function getAccessibleText() : javax.accessibility.AccessibleText;
	
	/**
	* Gets the accessibleName property of this object.  The accessibleName
	* property of an object is a localized String that designates the purpose
	* of the object.  For example, the accessibleName property of a label
	* or button might be the text of the label or button itself.  In the
	* case of an object that doesn't display its name, the accessibleName
	* should still be set.  For example, in the case of a text field used
	* to enter the name of a city, the accessibleName for the en_US locale
	* could be 'city.'
	*
	* @return the localized name of the object; null if this
	* object does not have a name
	*
	* @see #setAccessibleName
	*/
	@:overload override public function getAccessibleName() : String;
	
	/**
	* Gets the accessibleDescription property of this object.  If this
	* property isn't set, returns the content type of this
	* <code>JEditorPane</code> instead (e.g. "plain/text", "html/text").
	*
	* @return the localized description of the object; <code>null</code>
	*  if this object does not have a description
	*
	* @see #setAccessibleName
	*/
	@:overload override public function getAccessibleDescription() : String;
	
	/**
	* Gets the role of this object.  The role of the object is the generic
	* purpose or use of the class of this object.  For example, the role
	* of a push button is AccessibleRole.PUSH_BUTTON.  The roles in
	* AccessibleRole are provided so component developers can pick from
	* a set of predefined roles.  This enables assistive technologies to
	* provide a consistent interface to various tweaked subclasses of
	* components (e.g., use AccessibleRole.PUSH_BUTTON for all components
	* that act like a push button) as well as distinguish between sublasses
	* that behave differently (e.g., AccessibleRole.CHECK_BOX for check boxes
	* and AccessibleRole.RADIO_BUTTON for radio buttons).
	* <p>Note that the AccessibleRole class is also extensible, so
	* custom component developers can define their own AccessibleRole's
	* if the set of predefined roles is inadequate.
	*
	* @return an instance of AccessibleRole describing the role of the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Given a point in local coordinates, return the zero-based index
	* of the character under that Point.  If the point is invalid,
	* this method returns -1.
	*
	* @param p the Point in local coordinates
	* @return the zero-based index of the character under Point p; if
	* Point is invalid returns -1.
	*/
	@:overload public function getIndexAtPoint(p : java.awt.Point) : Int;
	
	/**
	* Determine the bounding box of the character at the given
	* index into the string.  The bounds are returned in local
	* coordinates.  If the index is invalid an empty rectangle is
	* returned.
	*
	* @param i the index into the String
	* @return the screen coordinates of the character's the bounding box,
	* if index is invalid returns an empty rectangle.
	*/
	@:overload public function getCharacterBounds(i : Int) : java.awt.Rectangle;
	
	/**
	* Return the number of characters (valid indicies)
	*
	* @return the number of characters
	*/
	@:overload public function getCharCount() : Int;
	
	/**
	* Return the zero-based offset of the caret.
	*
	* Note: That to the right of the caret will have the same index
	* value as the offset (the caret is between two characters).
	* @return the zero-based offset of the caret.
	*/
	@:overload public function getCaretPosition() : Int;
	
	@:overload public function getAtIndex(part : Int, index : Int) : String;
	
	@:overload public function getAfterIndex(part : Int, index : Int) : String;
	
	@:overload public function getBeforeIndex(part : Int, index : Int) : String;
	
	/**
	* Return the AttributeSet for a given character at a given index
	*
	* @param i the zero-based index into the text
	* @return the AttributeSet of the character
	*/
	@:overload public function getCharacterAttribute(i : Int) : javax.swing.text.AttributeSet;
	
	/**
	* Returns the start offset within the selected text.
	* If there is no selection, but there is
	* a caret, the start and end offsets will be the same.
	*
	* @return the index into the text of the start of the selection
	*/
	@:overload public function getSelectionStart() : Int;
	
	/**
	* Returns the end offset within the selected text.
	* If there is no selection, but there is
	* a caret, the start and end offsets will be the same.
	*
	* @return the index into teh text of the end of the selection
	*/
	@:overload public function getSelectionEnd() : Int;
	
	/**
	* Returns the portion of the text that is selected.
	*
	* @return the String portion of the text that is selected
	*/
	@:overload public function getSelectedText() : String;
	
	
}
/**
* IndexedSegment extends Segment adding the offset into the
* the model the <code>Segment</code> was asked for.
*/
@:native('javax$swing$text$html$AccessibleHTML$TextElementInfo$TextAccessibleContext$IndexedSegment') @:internal extern class AccessibleHTML_TextElementInfo_TextAccessibleContext_IndexedSegment extends javax.swing.text.Segment
{
	/**
	* Offset into the model that the position represents.
	*/
	public var modelOffset : Int;
	
	
}
/*
* ElementInfo for images
*/
@:native('javax$swing$text$html$AccessibleHTML$IconElementInfo') @:internal extern class AccessibleHTML_IconElementInfo extends AccessibleHTML_ElementInfo implements javax.accessibility.Accessible
{
	@:overload override private function invalidate(first : Bool) : Void;
	
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/*
* AccessibleContext for images
*/
@:native('javax$swing$text$html$AccessibleHTML$IconElementInfo$IconAccessibleContext') extern class AccessibleHTML_IconElementInfo_IconAccessibleContext extends AccessibleHTML_HTMLAccessibleContext implements javax.accessibility.AccessibleIcon
{
	@:overload public function new(elementInfo : AccessibleHTML_ElementInfo) : Void;
	
	/**
	* Gets the accessibleName property of this object.  The accessibleName
	* property of an object is a localized String that designates the purpose
	* of the object.  For example, the accessibleName property of a label
	* or button might be the text of the label or button itself.  In the
	* case of an object that doesn't display its name, the accessibleName
	* should still be set.  For example, in the case of a text field used
	* to enter the name of a city, the accessibleName for the en_US locale
	* could be 'city.'
	*
	* @return the localized name of the object; null if this
	* object does not have a name
	*
	* @see #setAccessibleName
	*/
	@:overload override public function getAccessibleName() : String;
	
	/**
	* Gets the accessibleDescription property of this object.  If this
	* property isn't set, returns the content type of this
	* <code>JEditorPane</code> instead (e.g. "plain/text", "html/text").
	*
	* @return the localized description of the object; <code>null</code>
	*  if this object does not have a description
	*
	* @see #setAccessibleName
	*/
	@:overload override public function getAccessibleDescription() : String;
	
	/**
	* Gets the role of this object.  The role of the object is the generic
	* purpose or use of the class of this object.  For example, the role
	* of a push button is AccessibleRole.PUSH_BUTTON.  The roles in
	* AccessibleRole are provided so component developers can pick from
	* a set of predefined roles.  This enables assistive technologies to
	* provide a consistent interface to various tweaked subclasses of
	* components (e.g., use AccessibleRole.PUSH_BUTTON for all components
	* that act like a push button) as well as distinguish between sublasses
	* that behave differently (e.g., AccessibleRole.CHECK_BOX for check boxes
	* and AccessibleRole.RADIO_BUTTON for radio buttons).
	* <p>Note that the AccessibleRole class is also extensible, so
	* custom component developers can define their own AccessibleRole's
	* if the set of predefined roles is inadequate.
	*
	* @return an instance of AccessibleRole describing the role of the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	@:overload override public function getAccessibleIcon() : java.NativeArray<javax.accessibility.AccessibleIcon>;
	
	/**
	* Gets the description of the icon.  This is meant to be a brief
	* textual description of the object.  For example, it might be
	* presented to a blind user to give an indication of the purpose
	* of the icon.
	*
	* @return the description of the icon
	*/
	@:overload public function getAccessibleIconDescription() : String;
	
	/**
	* Sets the description of the icon.  This is meant to be a brief
	* textual description of the object.  For example, it might be
	* presented to a blind user to give an indication of the purpose
	* of the icon.
	*
	* @param description the description of the icon
	*/
	@:overload public function setAccessibleIconDescription(description : String) : Void;
	
	/**
	* Gets the width of the icon
	*
	* @return the width of the icon.
	*/
	@:overload public function getAccessibleIconWidth() : Int;
	
	/**
	* Gets the height of the icon
	*
	* @return the height of the icon.
	*/
	@:overload public function getAccessibleIconHeight() : Int;
	
	
}
/**
* TableElementInfo encapsulates information about a HTML.Tag.TABLE.
* To make access fast it crates a grid containing the children to
* allow for access by row, column. TableElementInfo will contain
* TableRowElementInfos, which will contain TableCellElementInfos.
* Any time one of the rows or columns becomes invalid the table is
* invalidated.  This is because any time one of the child attributes
* changes the size of the grid may have changed.
*/
@:native('javax$swing$text$html$AccessibleHTML$TableElementInfo') @:internal extern class AccessibleHTML_TableElementInfo extends AccessibleHTML_ElementInfo implements javax.accessibility.Accessible
{
	private var caption : AccessibleHTML_ElementInfo;
	
	@:overload public function getCaptionInfo() : AccessibleHTML_ElementInfo;
	
	/**
	* Overriden to update the grid when validating.
	*/
	@:overload override private function validate() : Void;
	
	/**
	* Overriden to only alloc instances of TableRowElementInfos.
	*/
	@:overload private function loadChildren(e : javax.swing.text.Element) : Void;
	
	/**
	* Returns the TableCellElementInfo at the specified index.
	*/
	@:overload public function getRow(index : Int) : AccessibleHTML_TableElementInfo_TableRowElementInfo;
	
	/**
	* Returns the TableCellElementInfo by row and column.
	*/
	@:overload public function getCell(r : Int, c : Int) : AccessibleHTML_TableElementInfo_TableCellElementInfo;
	
	/**
	* Returns the rowspan of the specified entry.
	*/
	@:overload public function getRowExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the colspan of the specified entry.
	*/
	@:overload public function getColumnExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the number of rows in the table.
	*/
	@:overload public function getRowCount() : Int;
	
	/**
	* Returns the number of columns in the table.
	*/
	@:overload public function getColumnCount() : Int;
	
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/*
* AccessibleContext for tables
*/
@:native('javax$swing$text$html$AccessibleHTML$TableElementInfo$TableAccessibleContext') extern class AccessibleHTML_TableElementInfo_TableAccessibleContext extends AccessibleHTML_HTMLAccessibleContext implements javax.accessibility.AccessibleTable
{
	@:overload public function new(elementInfo : AccessibleHTML_ElementInfo) : Void;
	
	/**
	* Gets the accessibleName property of this object.  The accessibleName
	* property of an object is a localized String that designates the purpose
	* of the object.  For example, the accessibleName property of a label
	* or button might be the text of the label or button itself.  In the
	* case of an object that doesn't display its name, the accessibleName
	* should still be set.  For example, in the case of a text field used
	* to enter the name of a city, the accessibleName for the en_US locale
	* could be 'city.'
	*
	* @return the localized name of the object; null if this
	* object does not have a name
	*
	* @see #setAccessibleName
	*/
	@:overload override public function getAccessibleName() : String;
	
	/**
	* Gets the accessibleDescription property of this object.  If this
	* property isn't set, returns the content type of this
	* <code>JEditorPane</code> instead (e.g. "plain/text", "html/text").
	*
	* @return the localized description of the object; <code>null</code>
	*  if this object does not have a description
	*
	* @see #setAccessibleName
	*/
	@:overload override public function getAccessibleDescription() : String;
	
	/**
	* Gets the role of this object.  The role of the object is the generic
	* purpose or use of the class of this object.  For example, the role
	* of a push button is AccessibleRole.PUSH_BUTTON.  The roles in
	* AccessibleRole are provided so component developers can pick from
	* a set of predefined roles.  This enables assistive technologies to
	* provide a consistent interface to various tweaked subclasses of
	* components (e.g., use AccessibleRole.PUSH_BUTTON for all components
	* that act like a push button) as well as distinguish between sublasses
	* that behave differently (e.g., AccessibleRole.CHECK_BOX for check boxes
	* and AccessibleRole.RADIO_BUTTON for radio buttons).
	* <p>Note that the AccessibleRole class is also extensible, so
	* custom component developers can define their own AccessibleRole's
	* if the set of predefined roles is inadequate.
	*
	* @return an instance of AccessibleRole describing the role of the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the 0-based index of this object in its accessible parent.
	*
	* @return the 0-based index of this object in its parent; -1 if this
	* object does not have an accessible parent.
	*
	* @see #getAccessibleParent
	* @see #getAccessibleChildrenCount
	* @gsee #getAccessibleChild
	*/
	@:overload override public function getAccessibleIndexInParent() : Int;
	
	/**
	* Returns the number of accessible children of the object.
	*
	* @return the number of accessible children of the object.
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Returns the specified Accessible child of the object.  The Accessible
	* children of an Accessible object are zero-based, so the first child
	* of an Accessible child is at index 0, the second child is at index 1,
	* and so on.
	*
	* @param i zero-based index of child
	* @return the Accessible child of the object
	* @see #getAccessibleChildrenCount
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	@:overload override public function getAccessibleTable() : javax.accessibility.AccessibleTable;
	
	/**
	* Returns the caption for the table.
	*
	* @return the caption for the table
	*/
	@:overload public function getAccessibleCaption() : javax.accessibility.Accessible;
	
	/**
	* Sets the caption for the table.
	*
	* @param a the caption for the table
	*/
	@:overload public function setAccessibleCaption(a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the summary description of the table.
	*
	* @return the summary description of the table
	*/
	@:overload public function getAccessibleSummary() : javax.accessibility.Accessible;
	
	/**
	* Sets the summary description of the table
	*
	* @param a the summary description of the table
	*/
	@:overload public function setAccessibleSummary(a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the number of rows in the table.
	*
	* @return the number of rows in the table
	*/
	@:overload public function getAccessibleRowCount() : Int;
	
	/**
	* Returns the number of columns in the table.
	*
	* @return the number of columns in the table
	*/
	@:overload public function getAccessibleColumnCount() : Int;
	
	/**
	* Returns the Accessible at a specified row and column
	* in the table.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the Accessible at the specified row and column
	*/
	@:overload public function getAccessibleAt(r : Int, c : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns the number of rows occupied by the Accessible at
	* a specified row and column in the table.
	*
	* @return the number of rows occupied by the Accessible at a
	* given specified (row, column)
	*/
	@:overload public function getAccessibleRowExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the number of columns occupied by the Accessible at
	* a specified row and column in the table.
	*
	* @return the number of columns occupied by the Accessible at a
	* given specified row and column
	*/
	@:overload public function getAccessibleColumnExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the row headers as an AccessibleTable.
	*
	* @return an AccessibleTable representing the row
	* headers
	*/
	@:overload public function getAccessibleRowHeader() : javax.accessibility.AccessibleTable;
	
	/**
	* Sets the row headers.
	*
	* @param table an AccessibleTable representing the
	* row headers
	*/
	@:overload public function setAccessibleRowHeader(table : javax.accessibility.AccessibleTable) : Void;
	
	/**
	* Returns the column headers as an AccessibleTable.
	*
	* @return an AccessibleTable representing the column
	* headers
	*/
	@:overload public function getAccessibleColumnHeader() : javax.accessibility.AccessibleTable;
	
	/**
	* Sets the column headers.
	*
	* @param table an AccessibleTable representing the
	* column headers
	*/
	@:overload public function setAccessibleColumnHeader(table : javax.accessibility.AccessibleTable) : Void;
	
	/**
	* Returns the description of the specified row in the table.
	*
	* @param r zero-based row of the table
	* @return the description of the row
	*/
	@:overload public function getAccessibleRowDescription(r : Int) : javax.accessibility.Accessible;
	
	/**
	* Sets the description text of the specified row of the table.
	*
	* @param r zero-based row of the table
	* @param a the description of the row
	*/
	@:overload public function setAccessibleRowDescription(r : Int, a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the description text of the specified column in the table.
	*
	* @param c zero-based column of the table
	* @return the text description of the column
	*/
	@:overload public function getAccessibleColumnDescription(c : Int) : javax.accessibility.Accessible;
	
	/**
	* Sets the description text of the specified column in the table.
	*
	* @param c zero-based column of the table
	* @param a the text description of the column
	*/
	@:overload public function setAccessibleColumnDescription(c : Int, a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns a boolean value indicating whether the accessible at
	* a specified row and column is selected.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the boolean value true if the accessible at the
	* row and column is selected. Otherwise, the boolean value
	* false
	*/
	@:overload public function isAccessibleSelected(r : Int, c : Int) : Bool;
	
	/**
	* Returns a boolean value indicating whether the specified row
	* is selected.
	*
	* @param r zero-based row of the table
	* @return the boolean value true if the specified row is selected.
	* Otherwise, false.
	*/
	@:overload public function isAccessibleRowSelected(r : Int) : Bool;
	
	/**
	* Returns a boolean value indicating whether the specified column
	* is selected.
	*
	* @param c zero-based column of the table
	* @return the boolean value true if the specified column is selected.
	* Otherwise, false.
	*/
	@:overload public function isAccessibleColumnSelected(c : Int) : Bool;
	
	/**
	* Returns the selected rows in a table.
	*
	* @return an array of selected rows where each element is a
	* zero-based row of the table
	*/
	@:overload public function getSelectedAccessibleRows() : java.NativeArray<Int>;
	
	/**
	* Returns the selected columns in a table.
	*
	* @return an array of selected columns where each element is a
	* zero-based column of the table
	*/
	@:overload public function getSelectedAccessibleColumns() : java.NativeArray<Int>;
	
	/**
	* Returns the row number of an index in the table.
	*
	* @param index the zero-based index in the table
	* @return the zero-based row of the table if one exists;
	* otherwise -1.
	*/
	@:overload public function getAccessibleRow(index : Int) : Int;
	
	/**
	* Returns the column number of an index in the table.
	*
	* @param index the zero-based index in the table
	* @return the zero-based column of the table if one exists;
	* otherwise -1.
	*/
	@:overload public function getAccessibleColumn(index : Int) : Int;
	
	/**
	* Returns the index at a row and column in the table.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the zero-based index in the table if one exists;
	* otherwise -1.
	*/
	@:overload public function getAccessibleIndex(r : Int, c : Int) : Int;
	
	/**
	* Returns the row header at a row in a table.
	* @param r zero-based row of the table
	*
	* @return a String representing the row header
	* if one exists; otherwise null.
	*/
	@:overload public function getAccessibleRowHeader(r : Int) : String;
	
	/**
	* Returns the column header at a column in a table.
	* @param c zero-based column of the table
	*
	* @return a String representing the column header
	* if one exists; otherwise null.
	*/
	@:overload public function getAccessibleColumnHeader(c : Int) : String;
	
	@:overload public function addRowHeader(cellInfo : AccessibleHTML_TableElementInfo_TableCellElementInfo, rowNumber : Int) : Void;
	
	
}
@:native('javax$swing$text$html$AccessibleHTML$TableElementInfo$TableAccessibleContext$AccessibleHeadersTable') extern class AccessibleHTML_TableElementInfo_TableAccessibleContext_AccessibleHeadersTable implements javax.accessibility.AccessibleTable
{
	@:overload public function addHeader(cellInfo : AccessibleHTML_TableElementInfo_TableCellElementInfo, rowNumber : Int) : Void;
	
	/**
	* Returns the caption for the table.
	*
	* @return the caption for the table
	*/
	@:overload public function getAccessibleCaption() : javax.accessibility.Accessible;
	
	/**
	* Sets the caption for the table.
	*
	* @param a the caption for the table
	*/
	@:overload public function setAccessibleCaption(a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the summary description of the table.
	*
	* @return the summary description of the table
	*/
	@:overload public function getAccessibleSummary() : javax.accessibility.Accessible;
	
	/**
	* Sets the summary description of the table
	*
	* @param a the summary description of the table
	*/
	@:overload public function setAccessibleSummary(a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the number of rows in the table.
	*
	* @return the number of rows in the table
	*/
	@:overload public function getAccessibleRowCount() : Int;
	
	/**
	* Returns the number of columns in the table.
	*
	* @return the number of columns in the table
	*/
	@:overload public function getAccessibleColumnCount() : Int;
	
	/**
	* Returns the Accessible at a specified row and column
	* in the table.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the Accessible at the specified row and column
	*/
	@:overload public function getAccessibleAt(r : Int, c : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns the number of rows occupied by the Accessible at
	* a specified row and column in the table.
	*
	* @return the number of rows occupied by the Accessible at a
	* given specified (row, column)
	*/
	@:overload public function getAccessibleRowExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the number of columns occupied by the Accessible at
	* a specified row and column in the table.
	*
	* @return the number of columns occupied by the Accessible at a
	* given specified row and column
	*/
	@:overload public function getAccessibleColumnExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the row headers as an AccessibleTable.
	*
	* @return an AccessibleTable representing the row
	* headers
	*/
	@:overload public function getAccessibleRowHeader() : javax.accessibility.AccessibleTable;
	
	/**
	* Sets the row headers.
	*
	* @param table an AccessibleTable representing the
	* row headers
	*/
	@:overload public function setAccessibleRowHeader(table : javax.accessibility.AccessibleTable) : Void;
	
	/**
	* Returns the column headers as an AccessibleTable.
	*
	* @return an AccessibleTable representing the column
	* headers
	*/
	@:overload public function getAccessibleColumnHeader() : javax.accessibility.AccessibleTable;
	
	/**
	* Sets the column headers.
	*
	* @param table an AccessibleTable representing the
	* column headers
	*/
	@:overload public function setAccessibleColumnHeader(table : javax.accessibility.AccessibleTable) : Void;
	
	/**
	* Returns the description of the specified row in the table.
	*
	* @param r zero-based row of the table
	* @return the description of the row
	*/
	@:overload public function getAccessibleRowDescription(r : Int) : javax.accessibility.Accessible;
	
	/**
	* Sets the description text of the specified row of the table.
	*
	* @param r zero-based row of the table
	* @param a the description of the row
	*/
	@:overload public function setAccessibleRowDescription(r : Int, a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the description text of the specified column in the table.
	*
	* @param c zero-based column of the table
	* @return the text description of the column
	*/
	@:overload public function getAccessibleColumnDescription(c : Int) : javax.accessibility.Accessible;
	
	/**
	* Sets the description text of the specified column in the table.
	*
	* @param c zero-based column of the table
	* @param a the text description of the column
	*/
	@:overload public function setAccessibleColumnDescription(c : Int, a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns a boolean value indicating whether the accessible at
	* a specified row and column is selected.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the boolean value true if the accessible at the
	* row and column is selected. Otherwise, the boolean value
	* false
	*/
	@:overload public function isAccessibleSelected(r : Int, c : Int) : Bool;
	
	/**
	* Returns a boolean value indicating whether the specified row
	* is selected.
	*
	* @param r zero-based row of the table
	* @return the boolean value true if the specified row is selected.
	* Otherwise, false.
	*/
	@:overload public function isAccessibleRowSelected(r : Int) : Bool;
	
	/**
	* Returns a boolean value indicating whether the specified column
	* is selected.
	*
	* @param c zero-based column of the table
	* @return the boolean value true if the specified column is selected.
	* Otherwise, false.
	*/
	@:overload public function isAccessibleColumnSelected(c : Int) : Bool;
	
	/**
	* Returns the selected rows in a table.
	*
	* @return an array of selected rows where each element is a
	* zero-based row of the table
	*/
	@:overload public function getSelectedAccessibleRows() : java.NativeArray<Int>;
	
	/**
	* Returns the selected columns in a table.
	*
	* @return an array of selected columns where each element is a
	* zero-based column of the table
	*/
	@:overload public function getSelectedAccessibleColumns() : java.NativeArray<Int>;
	
	
}
/*
* ElementInfo for table rows
*/
@:native('javax$swing$text$html$AccessibleHTML$TableElementInfo$TableRowElementInfo') @:internal extern class AccessibleHTML_TableElementInfo_TableRowElementInfo extends AccessibleHTML_ElementInfo
{
	@:overload private function loadChildren(e : javax.swing.text.Element) : Void;
	
	/**
	* Returns the max of the rowspans of the cells in this row.
	*/
	@:overload public function getRowCount() : Int;
	
	/**
	* Returns the sum of the column spans of the individual
	* cells in this row.
	*/
	@:overload public function getColumnCount() : Int;
	
	/**
	* Overriden to invalidate the table as well as
	* TableRowElementInfo.
	*/
	@:overload override private function invalidate(first : Bool) : Void;
	
	
}
/**
* TableCellElementInfo is used to represents the cells of
* the table.
*/
@:native('javax$swing$text$html$AccessibleHTML$TableElementInfo$TableCellElementInfo') @:internal extern class AccessibleHTML_TableElementInfo_TableCellElementInfo extends AccessibleHTML_ElementInfo
{
	/*
	* Returns whether this table cell is a header
	*/
	@:overload public function isHeaderCell() : Bool;
	
	/*
	* Returns the Accessible representing this table cell
	*/
	@:overload public function getAccessible() : javax.accessibility.Accessible;
	
	/**
	* Returns the rowspan attribute.
	*/
	@:overload public function getRowCount() : Int;
	
	/**
	* Returns the colspan attribute.
	*/
	@:overload public function getColumnCount() : Int;
	
	/**
	* Overriden to invalidate the TableRowElementInfo as well as
	* the TableCellElementInfo.
	*/
	@:overload override private function invalidate(first : Bool) : Void;
	
	
}
/**
* ElementInfo provides a slim down view of an Element.  Each ElementInfo
* can have any number of child ElementInfos that are not necessarily
* direct children of the Element. As the Document changes various
* ElementInfos become invalidated. Before accessing a particular portion
* of an ElementInfo you should make sure it is valid by invoking
* <code>validateIfNecessary</code>, this will return true if
* successful, on the other hand a false return value indicates the
* ElementInfo is not valid and can never become valid again (usually
* the result of the Element the ElementInfo encapsulates being removed).
*/
@:native('javax$swing$text$html$AccessibleHTML$ElementInfo') @:internal extern class AccessibleHTML_ElementInfo
{
	/**
	* Validates the receiver. This recreates the children as well. This
	* will be invoked within a <code>readLock</code>. If this is overriden
	* it MUST invoke supers implementation first!
	*/
	@:overload private function validate() : Void;
	
	/**
	* Recreates the direct children of <code>info</code>.
	*/
	@:overload private function loadChildren(parent : javax.swing.text.Element) : Void;
	
	/**
	* Returns the index of the child in the parent, or -1 for the
	* root or if the parent isn't valid.
	*/
	@:overload public function getIndexInParent() : Int;
	
	/**
	* Returns the Element this <code>ElementInfo</code> represents.
	*/
	@:overload public function getElement() : javax.swing.text.Element;
	
	/**
	* Returns the parent of this Element, or null for the root.
	*/
	@:overload public function getParent() : AccessibleHTML_ElementInfo;
	
	/**
	* Returns the index of the specified child, or -1 if
	* <code>child</code> isn't a valid child.
	*/
	@:overload public function indexOf(child : AccessibleHTML_ElementInfo) : Int;
	
	/**
	* Returns the child ElementInfo at <code>index</code>, or null
	* if <code>index</code> isn't a valid index.
	*/
	@:overload public function getChild(index : Int) : AccessibleHTML_ElementInfo;
	
	/**
	* Returns the number of children the ElementInfo contains.
	*/
	@:overload public function getChildCount() : Int;
	
	/**
	* Adds a new child to this ElementInfo.
	*/
	@:overload private function addChild(child : AccessibleHTML_ElementInfo) : Void;
	
	/**
	* Returns the View corresponding to this ElementInfo, or null
	* if the ElementInfo can't be validated.
	*/
	@:overload private function getView() : javax.swing.text.View;
	
	/**
	* Returns the Bounds for this ElementInfo, or null
	* if the ElementInfo can't be validated.
	*/
	@:overload public function getBounds() : java.awt.Rectangle;
	
	/**
	* Returns true if this ElementInfo is valid.
	*/
	@:overload private function isValid() : Bool;
	
	/**
	* Returns the AttributeSet associated with the Element, this will
	* return null if the ElementInfo can't be validated.
	*/
	@:overload private function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Returns the AttributeSet associated with the View that is
	* representing this Element, this will
	* return null if the ElementInfo can't be validated.
	*/
	@:overload private function getViewAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Convenience method for getting an integer attribute from the passed
	* in AttributeSet.
	*/
	@:overload private function getIntAttr(attrs : javax.swing.text.AttributeSet, key : Dynamic, deflt : Int) : Int;
	
	/**
	* Validates the ElementInfo if necessary.  Some ElementInfos may
	* never be valid again.  You should check <code>isValid</code> before
	* using one.  This will reload the children and invoke
	* <code>validate</code> if the ElementInfo is invalid and can become
	* valid again. This will return true if the receiver is valid.
	*/
	@:overload private function validateIfNecessary() : Bool;
	
	/**
	* Invalidates the ElementInfo. Subclasses should override this
	* if they need to reset state once invalid.
	*/
	@:overload private function invalidate(first : Bool) : Void;
	
	
}
/**
* DocumentListener installed on the current Document.  Will invoke
* <code>update</code> on the <code>RootInfo</code> in response to
* any event.
*/
@:native('javax$swing$text$html$AccessibleHTML$DocumentHandler') @:internal extern class AccessibleHTML_DocumentHandler implements javax.swing.event.DocumentListener
{
	@:overload public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	
}
/*
* PropertyChangeListener installed on the editor.
*/
@:native('javax$swing$text$html$AccessibleHTML$PropertyChangeHandler') @:internal extern class AccessibleHTML_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
