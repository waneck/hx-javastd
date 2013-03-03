package javax.swing;
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
extern class JScrollPane extends javax.swing.JComponent implements javax.swing.ScrollPaneConstants implements javax.accessibility.Accessible
{
	/**
	* The display policy for the vertical scrollbar.
	* The default is
	* <code>ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED</code>.
	* @see #setVerticalScrollBarPolicy
	*/
	@:protected private var verticalScrollBarPolicy : Int;
	
	/**
	* The display policy for the horizontal scrollbar.
	* The default is
	* <code>ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED</code>.
	* @see #setHorizontalScrollBarPolicy
	*/
	@:protected private var horizontalScrollBarPolicy : Int;
	
	/**
	* The scrollpane's viewport child.  Default is an empty
	* <code>JViewport</code>.
	* @see #setViewport
	*/
	@:protected private var viewport : javax.swing.JViewport;
	
	/**
	* The scrollpane's vertical scrollbar child.
	* Default is a <code>JScrollBar</code>.
	* @see #setVerticalScrollBar
	*/
	@:protected private var verticalScrollBar : javax.swing.JScrollBar;
	
	/**
	* The scrollpane's horizontal scrollbar child.
	* Default is a <code>JScrollBar</code>.
	* @see #setHorizontalScrollBar
	*/
	@:protected private var horizontalScrollBar : javax.swing.JScrollBar;
	
	/**
	* The row header child.  Default is <code>null</code>.
	* @see #setRowHeader
	*/
	@:protected private var rowHeader : javax.swing.JViewport;
	
	/**
	* The column header child.  Default is <code>null</code>.
	* @see #setColumnHeader
	*/
	@:protected private var columnHeader : javax.swing.JViewport;
	
	/**
	* The component to display in the lower left corner.
	* Default is <code>null</code>.
	* @see #setCorner
	*/
	@:protected private var lowerLeft : java.awt.Component;
	
	/**
	* The component to display in the lower right corner.
	* Default is <code>null</code>.
	* @see #setCorner
	*/
	@:protected private var lowerRight : java.awt.Component;
	
	/**
	* The component to display in the upper left corner.
	* Default is <code>null</code>.
	* @see #setCorner
	*/
	@:protected private var upperLeft : java.awt.Component;
	
	/**
	* The component to display in the upper right corner.
	* Default is <code>null</code>.
	* @see #setCorner
	*/
	@:protected private var upperRight : java.awt.Component;
	
	/**
	* Creates a <code>JScrollPane</code> that displays the view
	* component in a viewport
	* whose view position can be controlled with a pair of scrollbars.
	* The scrollbar policies specify when the scrollbars are displayed,
	* For example, if <code>vsbPolicy</code> is
	* <code>VERTICAL_SCROLLBAR_AS_NEEDED</code>
	* then the vertical scrollbar only appears if the view doesn't fit
	* vertically. The available policy settings are listed at
	* {@link #setVerticalScrollBarPolicy} and
	* {@link #setHorizontalScrollBarPolicy}.
	*
	* @see #setViewportView
	*
	* @param view the component to display in the scrollpanes viewport
	* @param vsbPolicy an integer that specifies the vertical
	*          scrollbar policy
	* @param hsbPolicy an integer that specifies the horizontal
	*          scrollbar policy
	*/
	@:overload @:public public function new(view : java.awt.Component, vsbPolicy : Int, hsbPolicy : Int) : Void;
	
	/**
	* Creates a <code>JScrollPane</code> that displays the
	* contents of the specified
	* component, where both horizontal and vertical scrollbars appear
	* whenever the component's contents are larger than the view.
	*
	* @see #setViewportView
	* @param view the component to display in the scrollpane's viewport
	*/
	@:overload @:public public function new(view : java.awt.Component) : Void;
	
	/**
	* Creates an empty (no viewport view) <code>JScrollPane</code>
	* with specified
	* scrollbar policies. The available policy settings are listed at
	* {@link #setVerticalScrollBarPolicy} and
	* {@link #setHorizontalScrollBarPolicy}.
	*
	* @see #setViewportView
	*
	* @param vsbPolicy an integer that specifies the vertical
	*          scrollbar policy
	* @param hsbPolicy an integer that specifies the horizontal
	*          scrollbar policy
	*/
	@:overload @:public public function new(vsbPolicy : Int, hsbPolicy : Int) : Void;
	
	/**
	* Creates an empty (no viewport view) <code>JScrollPane</code>
	* where both horizontal and vertical scrollbars appear when needed.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the look and feel (L&F) object that renders this component.
	*
	* @return the <code>ScrollPaneUI</code> object that renders this
	*                          component
	* @see #setUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload @:public public function getUI() : javax.swing.plaf.ScrollPaneUI;
	
	/**
	* Sets the <code>ScrollPaneUI</code> object that provides the
	* look and feel (L&F) for this component.
	*
	* @param ui the <code>ScrollPaneUI</code> L&F object
	* @see #getUI
	*/
	@:overload @:public public function setUI(ui : javax.swing.plaf.ScrollPaneUI) : Void;
	
	/**
	* Replaces the current <code>ScrollPaneUI</code> object with a version
	* from the current default look and feel.
	* To be called when the default look and feel changes.
	*
	* @see JComponent#updateUI
	* @see UIManager#getUI
	*/
	@:overload @:public override public function updateUI() : Void;
	
	/**
	* Returns the suffix used to construct the name of the L&F class used to
	* render this component.
	*
	* @return the string "ScrollPaneUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*
	* @beaninfo
	*    hidden: true
	*/
	@:overload @:public override public function getUIClassID() : String;
	
	/**
	* Sets the layout manager for this <code>JScrollPane</code>.
	* This method overrides <code>setLayout</code> in
	* <code>java.awt.Container</code> to ensure that only
	* <code>LayoutManager</code>s which
	* are subclasses of <code>ScrollPaneLayout</code> can be used in a
	* <code>JScrollPane</code>. If <code>layout</code> is non-null, this
	* will invoke <code>syncWithScrollPane</code> on it.
	*
	* @param layout the specified layout manager
	* @exception ClassCastException if layout is not a
	*                  <code>ScrollPaneLayout</code>
	* @see java.awt.Container#getLayout
	* @see java.awt.Container#setLayout
	*
	* @beaninfo
	*    hidden: true
	*/
	@:overload @:public override public function setLayout(layout : java.awt.LayoutManager) : Void;
	
	/**
	* Overridden to return true so that any calls to <code>revalidate</code>
	* on any descendants of this <code>JScrollPane</code> will cause the
	* entire tree beginning with this <code>JScrollPane</code> to be
	* validated.
	*
	* @return true
	* @see java.awt.Container#validate
	* @see JComponent#revalidate
	* @see JComponent#isValidateRoot
	* @see java.awt.Container#isValidateRoot
	*
	* @beaninfo
	*    hidden: true
	*/
	@:overload @:public override public function isValidateRoot() : Bool;
	
	/**
	* Returns the vertical scroll bar policy value.
	* @return the <code>verticalScrollBarPolicy</code> property
	* @see #setVerticalScrollBarPolicy
	*/
	@:overload @:public public function getVerticalScrollBarPolicy() : Int;
	
	/**
	* Determines when the vertical scrollbar appears in the scrollpane.
	* Legal values are:
	* <ul>
	* <li><code>ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED</code>
	* <li><code>ScrollPaneConstants.VERTICAL_SCROLLBAR_NEVER</code>
	* <li><code>ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS</code>
	* </ul>
	*
	* @param policy one of the three values listed above
	* @exception IllegalArgumentException if <code>policy</code>
	*                          is not one of the legal values shown above
	* @see #getVerticalScrollBarPolicy
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The scrollpane vertical scrollbar policy
	*        enum: VERTICAL_SCROLLBAR_AS_NEEDED ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED
	*              VERTICAL_SCROLLBAR_NEVER ScrollPaneConstants.VERTICAL_SCROLLBAR_NEVER
	*              VERTICAL_SCROLLBAR_ALWAYS ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS
	*/
	@:overload @:public public function setVerticalScrollBarPolicy(policy : Int) : Void;
	
	/**
	* Returns the horizontal scroll bar policy value.
	* @return the <code>horizontalScrollBarPolicy</code> property
	* @see #setHorizontalScrollBarPolicy
	*/
	@:overload @:public public function getHorizontalScrollBarPolicy() : Int;
	
	/**
	* Determines when the horizontal scrollbar appears in the scrollpane.
	* The options are:<ul>
	* <li><code>ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED</code>
	* <li><code>ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER</code>
	* <li><code>ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS</code>
	* </ul>
	*
	* @param policy one of the three values listed above
	* @exception IllegalArgumentException if <code>policy</code>
	*                          is not one of the legal values shown above
	* @see #getHorizontalScrollBarPolicy
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The scrollpane scrollbar policy
	*        enum: HORIZONTAL_SCROLLBAR_AS_NEEDED ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED
	*              HORIZONTAL_SCROLLBAR_NEVER ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER
	*              HORIZONTAL_SCROLLBAR_ALWAYS ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS
	*/
	@:overload @:public public function setHorizontalScrollBarPolicy(policy : Int) : Void;
	
	/**
	* Returns the <code>Border</code> object that surrounds the viewport.
	*
	* @return the <code>viewportBorder</code> property
	* @see #setViewportBorder
	*/
	@:overload @:public public function getViewportBorder() : javax.swing.border.Border;
	
	/**
	* Adds a border around the viewport.  Note that the border isn't
	* set on the viewport directly, <code>JViewport</code> doesn't support
	* the <code>JComponent</code> border property.
	* Similarly setting the <code>JScrollPane</code>s
	* viewport doesn't affect the <code>viewportBorder</code> property.
	* <p>
	* The default value of this property is computed by the look
	* and feel implementation.
	*
	* @param viewportBorder the border to be added
	* @see #getViewportBorder
	* @see #setViewport
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The border around the viewport.
	*/
	@:overload @:public public function setViewportBorder(viewportBorder : javax.swing.border.Border) : Void;
	
	/**
	* Returns the bounds of the viewport's border.
	*
	* @return a <code>Rectangle</code> object specifying the viewport border
	*/
	@:overload @:public public function getViewportBorderBounds() : java.awt.Rectangle;
	
	/**
	* Returns a <code>JScrollPane.ScrollBar</code> by default.
	* Subclasses may override this method to force <code>ScrollPaneUI</code>
	* implementations to use a <code>JScrollBar</code> subclass.
	* Used by <code>ScrollPaneUI</code> implementations to
	* create the horizontal scrollbar.
	*
	* @return a <code>JScrollBar</code> with a horizontal orientation
	* @see JScrollBar
	*/
	@:overload @:public public function createHorizontalScrollBar() : javax.swing.JScrollBar;
	
	/**
	* Returns the horizontal scroll bar that controls the viewport's
	* horizontal view position.
	*
	* @return the <code>horizontalScrollBar</code> property
	* @see #setHorizontalScrollBar
	*/
	@:overload @:public public function getHorizontalScrollBar() : javax.swing.JScrollBar;
	
	/**
	* Adds the scrollbar that controls the viewport's horizontal view
	* position to the scrollpane.
	* This is usually unnecessary, as <code>JScrollPane</code> creates
	* horizontal and vertical scrollbars by default.
	*
	* @param horizontalScrollBar the horizontal scrollbar to be added
	* @see #createHorizontalScrollBar
	* @see #getHorizontalScrollBar
	*
	* @beaninfo
	*        expert: true
	*         bound: true
	*   description: The horizontal scrollbar.
	*/
	@:overload @:public public function setHorizontalScrollBar(horizontalScrollBar : javax.swing.JScrollBar) : Void;
	
	/**
	* Returns a <code>JScrollPane.ScrollBar</code> by default.  Subclasses
	* may override this method to force <code>ScrollPaneUI</code>
	* implementations to use a <code>JScrollBar</code> subclass.
	* Used by <code>ScrollPaneUI</code> implementations to create the
	* vertical scrollbar.
	*
	* @return a <code>JScrollBar</code> with a vertical orientation
	* @see JScrollBar
	*/
	@:overload @:public public function createVerticalScrollBar() : javax.swing.JScrollBar;
	
	/**
	* Returns the vertical scroll bar that controls the viewports
	* vertical view position.
	*
	* @return the <code>verticalScrollBar</code> property
	* @see #setVerticalScrollBar
	*/
	@:overload @:public public function getVerticalScrollBar() : javax.swing.JScrollBar;
	
	/**
	* Adds the scrollbar that controls the viewports vertical view position
	* to the scrollpane.  This is usually unnecessary,
	* as <code>JScrollPane</code> creates vertical and
	* horizontal scrollbars by default.
	*
	* @param verticalScrollBar the new vertical scrollbar to be added
	* @see #createVerticalScrollBar
	* @see #getVerticalScrollBar
	*
	* @beaninfo
	*        expert: true
	*         bound: true
	*   description: The vertical scrollbar.
	*/
	@:overload @:public public function setVerticalScrollBar(verticalScrollBar : javax.swing.JScrollBar) : Void;
	
	/**
	* Returns a new <code>JViewport</code> by default.
	* Used to create the
	* viewport (as needed) in <code>setViewportView</code>,
	* <code>setRowHeaderView</code>, and <code>setColumnHeaderView</code>.
	* Subclasses may override this method to return a subclass of
	* <code>JViewport</code>.
	*
	* @return a new <code>JViewport</code>
	*/
	@:overload @:protected private function createViewport() : javax.swing.JViewport;
	
	/**
	* Returns the current <code>JViewport</code>.
	*
	* @see #setViewport
	* @return the <code>viewport</code> property
	*/
	@:overload @:public public function getViewport() : javax.swing.JViewport;
	
	/**
	* Removes the old viewport (if there is one); forces the
	* viewPosition of the new viewport to be in the +x,+y quadrant;
	* syncs up the row and column headers (if there are any) with the
	* new viewport; and finally syncs the scrollbars and
	* headers with the new viewport.
	* <p>
	* Most applications will find it more convenient to use
	* <code>setViewportView</code>
	* to add a viewport and a view to the scrollpane.
	*
	* @param viewport the new viewport to be used; if viewport is
	*          <code>null</code>, the old viewport is still removed
	*          and the new viewport is set to <code>null</code>
	* @see #createViewport
	* @see #getViewport
	* @see #setViewportView
	*
	* @beaninfo
	*       expert: true
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The viewport child for this scrollpane
	*
	*/
	@:overload @:public public function setViewport(viewport : javax.swing.JViewport) : Void;
	
	/**
	* Creates a viewport if necessary and then sets its view.  Applications
	* that don't provide the view directly to the <code>JScrollPane</code>
	* constructor
	* should use this method to specify the scrollable child that's going
	* to be displayed in the scrollpane. For example:
	* <pre>
	* JScrollPane scrollpane = new JScrollPane();
	* scrollpane.setViewportView(myBigComponentToScroll);
	* </pre>
	* Applications should not add children directly to the scrollpane.
	*
	* @param view the component to add to the viewport
	* @see #setViewport
	* @see JViewport#setView
	*/
	@:overload @:public public function setViewportView(view : java.awt.Component) : Void;
	
	/**
	* Returns the row header.
	* @return the <code>rowHeader</code> property
	* @see #setRowHeader
	*/
	@:overload @:public public function getRowHeader() : javax.swing.JViewport;
	
	/**
	* Removes the old rowHeader, if it exists; if the new rowHeader
	* isn't <code>null</code>, syncs the y coordinate of its
	* viewPosition with
	* the viewport (if there is one) and then adds it to the scroll pane.
	* <p>
	* Most applications will find it more convenient to use
	* <code>setRowHeaderView</code>
	* to add a row header component and its viewport to the scroll pane.
	*
	* @param rowHeader the new row header to be used; if <code>null</code>
	*          the old row header is still removed and the new rowHeader
	*          is set to <code>null</code>
	* @see #getRowHeader
	* @see #setRowHeaderView
	*
	* @beaninfo
	*        bound: true
	*       expert: true
	*  description: The row header child for this scrollpane
	*/
	@:overload @:public public function setRowHeader(rowHeader : javax.swing.JViewport) : Void;
	
	/**
	* Creates a row-header viewport if necessary, sets
	* its view and then adds the row-header viewport
	* to the scrollpane.  For example:
	* <pre>
	* JScrollPane scrollpane = new JScrollPane();
	* scrollpane.setViewportView(myBigComponentToScroll);
	* scrollpane.setRowHeaderView(myBigComponentsRowHeader);
	* </pre>
	*
	* @see #setRowHeader
	* @see JViewport#setView
	* @param view the component to display as the row header
	*/
	@:overload @:public public function setRowHeaderView(view : java.awt.Component) : Void;
	
	/**
	* Returns the column header.
	* @return the <code>columnHeader</code> property
	* @see #setColumnHeader
	*/
	@:overload @:public public function getColumnHeader() : javax.swing.JViewport;
	
	/**
	* Removes the old columnHeader, if it exists; if the new columnHeader
	* isn't <code>null</code>, syncs the x coordinate of its viewPosition
	* with the viewport (if there is one) and then adds it to the scroll pane.
	* <p>
	* Most applications will find it more convenient to use
	* <code>setColumnHeaderView</code>
	* to add a column header component and its viewport to the scroll pane.
	*
	* @see #getColumnHeader
	* @see #setColumnHeaderView
	*
	* @beaninfo
	*        bound: true
	*  description: The column header child for this scrollpane
	*    attribute: visualUpdate true
	*/
	@:overload @:public public function setColumnHeader(columnHeader : javax.swing.JViewport) : Void;
	
	/**
	* Creates a column-header viewport if necessary, sets
	* its view, and then adds the column-header viewport
	* to the scrollpane.  For example:
	* <pre>
	* JScrollPane scrollpane = new JScrollPane();
	* scrollpane.setViewportView(myBigComponentToScroll);
	* scrollpane.setColumnHeaderView(myBigComponentsColumnHeader);
	* </pre>
	*
	* @see #setColumnHeader
	* @see JViewport#setView
	*
	* @param view the component to display as the column header
	*/
	@:overload @:public public function setColumnHeaderView(view : java.awt.Component) : Void;
	
	/**
	* Returns the component at the specified corner. The
	* <code>key</code> value specifying the corner is one of:
	* <ul>
	* <li>ScrollPaneConstants.LOWER_LEFT_CORNER
	* <li>ScrollPaneConstants.LOWER_RIGHT_CORNER
	* <li>ScrollPaneConstants.UPPER_LEFT_CORNER
	* <li>ScrollPaneConstants.UPPER_RIGHT_CORNER
	* <li>ScrollPaneConstants.LOWER_LEADING_CORNER
	* <li>ScrollPaneConstants.LOWER_TRAILING_CORNER
	* <li>ScrollPaneConstants.UPPER_LEADING_CORNER
	* <li>ScrollPaneConstants.UPPER_TRAILING_CORNER
	* </ul>
	*
	* @param key one of the values as shown above
	* @return the corner component (which may be <code>null</code>)
	*         identified by the given key, or <code>null</code>
	*         if the key is invalid
	* @see #setCorner
	*/
	@:overload @:public public function getCorner(key : String) : java.awt.Component;
	
	/**
	* Adds a child that will appear in one of the scroll panes
	* corners, if there's room.   For example with both scrollbars
	* showing (on the right and bottom edges of the scrollpane)
	* the lower left corner component will be shown in the space
	* between ends of the two scrollbars. Legal values for
	* the <b>key</b> are:
	* <ul>
	* <li>ScrollPaneConstants.LOWER_LEFT_CORNER
	* <li>ScrollPaneConstants.LOWER_RIGHT_CORNER
	* <li>ScrollPaneConstants.UPPER_LEFT_CORNER
	* <li>ScrollPaneConstants.UPPER_RIGHT_CORNER
	* <li>ScrollPaneConstants.LOWER_LEADING_CORNER
	* <li>ScrollPaneConstants.LOWER_TRAILING_CORNER
	* <li>ScrollPaneConstants.UPPER_LEADING_CORNER
	* <li>ScrollPaneConstants.UPPER_TRAILING_CORNER
	* </ul>
	* <p>
	* Although "corner" doesn't match any beans property
	* signature, <code>PropertyChange</code> events are generated with the
	* property name set to the corner key.
	*
	* @param key identifies which corner the component will appear in
	* @param corner one of the following components:
	* <ul>
	* <li>lowerLeft
	* <li>lowerRight
	* <li>upperLeft
	* <li>upperRight
	* </ul>
	* @exception IllegalArgumentException if corner key is invalid
	*/
	@:overload @:public public function setCorner(key : String, corner : java.awt.Component) : Void;
	
	/**
	* Sets the orientation for the vertical and horizontal
	* scrollbars as determined by the
	* <code>ComponentOrientation</code> argument.
	*
	* @param  co one of the following values:
	* <ul>
	* <li>java.awt.ComponentOrientation.LEFT_TO_RIGHT
	* <li>java.awt.ComponentOrientation.RIGHT_TO_LEFT
	* <li>java.awt.ComponentOrientation.UNKNOWN
	* </ul>
	* @see java.awt.ComponentOrientation
	*/
	@:overload @:public override public function setComponentOrientation(co : java.awt.ComponentOrientation) : Void;
	
	/**
	* Indicates whether or not scrolling will take place in response to the
	* mouse wheel.  Wheel scrolling is enabled by default.
	*
	* @see #setWheelScrollingEnabled
	* @since 1.4
	* @beaninfo
	*       bound: true
	* description: Flag for enabling/disabling mouse wheel scrolling
	*/
	@:require(java4) @:overload @:public public function isWheelScrollingEnabled() : Bool;
	
	/**
	* Enables/disables scrolling in response to movement of the mouse wheel.
	* Wheel scrolling is enabled by default.
	*
	* @param handleWheel   <code>true</code> if scrolling should be done
	*                      automatically for a MouseWheelEvent,
	*                      <code>false</code> otherwise.
	* @see #isWheelScrollingEnabled
	* @see java.awt.event.MouseWheelEvent
	* @see java.awt.event.MouseWheelListener
	* @since 1.4
	* @beaninfo
	*       bound: true
	* description: Flag for enabling/disabling mouse wheel scrolling
	*/
	@:require(java4) @:overload @:public public function setWheelScrollingEnabled(handleWheel : Bool) : Void;
	
	/**
	* Returns a string representation of this <code>JScrollPane</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JScrollPane</code>.
	*/
	@:overload @:protected override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JScrollPane.
	* For scroll panes, the AccessibleContext takes the form of an
	* AccessibleJScrollPane.
	* A new AccessibleJScrollPane instance is created if necessary.
	*
	* @return an AccessibleJScrollPane that serves as the
	*         AccessibleContext of this JScrollPane
	*/
	@:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* By default <code>JScrollPane</code> creates scrollbars
* that are instances
* of this class.  <code>Scrollbar</code> overrides the
* <code>getUnitIncrement</code> and <code>getBlockIncrement</code>
* methods so that, if the viewport's view is a <code>Scrollable</code>,
* the view is asked to compute these values. Unless
* the unit/block increment have been explicitly set.
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
* @see Scrollable
* @see JScrollPane#createVerticalScrollBar
* @see JScrollPane#createHorizontalScrollBar
*/
@:native('javax$swing$JScrollPane$ScrollBar') extern class JScrollPane_ScrollBar extends javax.swing.JScrollBar implements javax.swing.plaf.UIResource
{
	/**
	* Creates a scrollbar with the specified orientation.
	* The options are:
	* <ul>
	* <li><code>ScrollPaneConstants.VERTICAL</code>
	* <li><code>ScrollPaneConstants.HORIZONTAL</code>
	* </ul>
	*
	* @param orientation  an integer specifying one of the legal
	*      orientation values shown above
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(orientation : Int) : Void;
	
	/**
	* Messages super to set the value, and resets the
	* <code>unitIncrementSet</code> instance variable to true.
	*
	* @param unitIncrement the new unit increment value, in pixels
	*/
	@:overload @:public override public function setUnitIncrement(unitIncrement : Int) : Void;
	
	/**
	* Computes the unit increment for scrolling if the viewport's
	* view is a <code>Scrollable</code> object.
	* Otherwise return <code>super.getUnitIncrement</code>.
	*
	* @param direction less than zero to scroll up/left,
	*      greater than zero for down/right
	* @return an integer, in pixels, containing the unit increment
	* @see Scrollable#getScrollableUnitIncrement
	*/
	@:overload @:public override public function getUnitIncrement(direction : Int) : Int;
	
	/**
	* Messages super to set the value, and resets the
	* <code>blockIncrementSet</code> instance variable to true.
	*
	* @param blockIncrement the new block increment value, in pixels
	*/
	@:overload @:public override public function setBlockIncrement(blockIncrement : Int) : Void;
	
	/**
	* Computes the block increment for scrolling if the viewport's
	* view is a <code>Scrollable</code> object.  Otherwise
	* the <code>blockIncrement</code> equals the viewport's width
	* or height.  If there's no viewport return
	* <code>super.getBlockIncrement</code>.
	*
	* @param direction less than zero to scroll up/left,
	*      greater than zero for down/right
	* @return an integer, in pixels, containing the block increment
	* @see Scrollable#getScrollableBlockIncrement
	*/
	@:overload @:public override public function getBlockIncrement(direction : Int) : Int;
	
	
}
/**
* This class implements accessibility support for the
* <code>JScrollPane</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to scroll pane user-interface
* elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JScrollPane$AccessibleJScrollPane') extern class JScrollPane_AccessibleJScrollPane extends javax.swing.JComponent.JComponent_AccessibleJComponent implements javax.swing.event.ChangeListener implements java.beans.PropertyChangeListener
{
	@:protected private var viewPort : javax.swing.JViewport;
	
	/*
	* Resets the viewport ChangeListener and PropertyChangeListener
	*/
	@:overload @:public public function resetViewPort() : Void;
	
	/**
	* AccessibleJScrollPane constructor
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Invoked when the target of the listener has changed its state.
	*
	* @param e  a <code>ChangeEvent</code> object. Must not be null.
	*
	* @throws NullPointerException if the parameter is null.
	*/
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	/**
	* This method gets called when a bound property is changed.
	* @param e A <code>PropertyChangeEvent</code> object describing
	* the event source and the property that has changed. Must not be null.
	*
	* @throws NullPointerException if the parameter is null.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
