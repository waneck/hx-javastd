package javax.swing;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JViewport extends javax.swing.JComponent implements javax.accessibility.Accessible
{
	/**
	* True when the viewport dimensions have been determined.
	* The default is false.
	*/
	private var isViewSizeSet : Bool;
	
	/**
	* The last <code>viewPosition</code> that we've painted, so we know how
	* much of the backing store image is valid.
	*/
	private var lastPaintPosition : java.awt.Point;
	
	/**
	* True when this viewport is maintaining an offscreen image of its
	* contents, so that some scrolling can take place using fast "bit-blit"
	* operations instead of by accessing the view object to construct the
	* display.  The default is <code>false</code>.
	*
	* @deprecated As of Java 2 platform v1.3
	* @see #setScrollMode
	*/
	private var backingStore : Bool;
	
	/** The view image used for a backing store. */
	@:transient private var backingStoreImage : java.awt.Image;
	
	/**
	* The <code>scrollUnderway</code> flag is used for components like
	* <code>JList</code>.  When the downarrow key is pressed on a
	* <code>JList</code> and the selected
	* cell is the last in the list, the <code>scrollpane</code> autoscrolls.
	* Here, the old selected cell needs repainting and so we need
	* a flag to make the viewport do the optimized painting
	* only when there is an explicit call to
	* <code>setViewPosition(Point)</code>.
	* When <code>setBounds</code> is called through other routes,
	* the flag is off and the view repaints normally.  Another approach
	* would be to remove this from the <code>JViewport</code>
	* class and have the <code>JList</code> manage this case by using
	* <code>setBackingStoreEnabled</code>.  The default is
	* <code>false</code>.
	*/
	private var scrollUnderway : Bool;
	
	/**
	* Use <code>graphics.copyArea</code> to implement scrolling.
	* This is the fastest for most applications.
	*
	* @see #setScrollMode
	* @since 1.3
	*/
	@:require(java3) public static var BLIT_SCROLL_MODE(default, null) : Int;
	
	/**
	* Draws viewport contents into an offscreen image.
	* This was previously the default mode for <code>JTable</code>.
	* This mode may offer advantages over "blit mode"
	* in some cases, but it requires a large chunk of extra RAM.
	*
	* @see #setScrollMode
	* @since 1.3
	*/
	@:require(java3) public static var BACKINGSTORE_SCROLL_MODE(default, null) : Int;
	
	/**
	* This mode uses the very simple method of redrawing the entire
	* contents of the scrollpane each time it is scrolled.
	* This was the default behavior in Swing 1.0 and Swing 1.1.
	* Either of the other two options will provide better performance
	* in most cases.
	*
	* @see #setScrollMode
	* @since 1.3
	*/
	@:require(java3) public static var SIMPLE_SCROLL_MODE(default, null) : Int;
	
	/** Creates a <code>JViewport</code>. */
	@:overload public function new() : Void;
	
	/**
	* Returns the L&F object that renders this component.
	*
	* @return a <code>ViewportUI</code> object
	* @since 1.3
	*/
	@:require(java3) @:overload public function getUI() : javax.swing.plaf.ViewportUI;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui  the <code>ViewportUI</code> L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	* @since 1.3
	*/
	@:require(java3) @:overload public function setUI(ui : javax.swing.plaf.ViewportUI) : Void;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns a string that specifies the name of the L&F class
	* that renders this component.
	*
	* @return the string "ViewportUI"
	*
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Sets the <code>JViewport</code>'s one lightweight child,
	* which can be <code>null</code>.
	* (Since there is only one child which occupies the entire viewport,
	* the <code>constraints</code> and <code>index</code>
	* arguments are ignored.)
	*
	* @param child       the lightweight <code>child</code> of the viewport
	* @param constraints the <code>constraints</code> to be respected
	* @param index       the index
	* @see #setView
	*/
	@:overload override private function addImpl(child : java.awt.Component, constraints : Dynamic, index : Int) : Void;
	
	/**
	* Removes the <code>Viewport</code>s one lightweight child.
	*
	* @see #setView
	*/
	@:overload override public function remove(child : java.awt.Component) : Void;
	
	/**
	* Scrolls the view so that <code>Rectangle</code>
	* within the view becomes visible.
	* <p>
	* This attempts to validate the view before scrolling if the
	* view is currently not valid - <code>isValid</code> returns false.
	* To avoid excessive validation when the containment hierarchy is
	* being created this will not validate if one of the ancestors does not
	* have a peer, or there is no validate root ancestor, or one of the
	* ancestors is not a <code>Window</code> or <code>Applet</code>.
	* <p>
	* Note that this method will not scroll outside of the
	* valid viewport; for example, if <code>contentRect</code> is larger
	* than the viewport, scrolling will be confined to the viewport's
	* bounds.
	*
	* @param contentRect the <code>Rectangle</code> to display
	* @see JComponent#isValidateRoot
	* @see java.awt.Component#isValid
	* @see java.awt.Component#getPeer
	*/
	@:overload override public function scrollRectToVisible(contentRect : java.awt.Rectangle) : Void;
	
	/**
	* The viewport "scrolls" its child (called the "view") by the
	* normal parent/child clipping (typically the view is moved in
	* the opposite direction of the scroll).  A non-<code>null</code> border,
	* or non-zero insets, isn't supported, to prevent the geometry
	* of this component from becoming complex enough to inhibit
	* subclassing.  To create a <code>JViewport</code> with a border,
	* add it to a <code>JPanel</code> that has a border.
	* <p>Note:  If <code>border</code> is non-<code>null</code>, this
	* method will throw an exception as borders are not supported on
	* a <code>JViewPort</code>.
	*
	* @param border the <code>Border</code> to set
	* @exception IllegalArgumentException this method is not implemented
	*/
	@:overload @:final override public function setBorder(border : javax.swing.border.Border) : Void;
	
	/**
	* Returns the insets (border) dimensions as (0,0,0,0), since borders
	* are not supported on a <code>JViewport</code>.
	*
	* @return a <code>Rectange</code> of zero dimension and zero origin
	* @see #setBorder
	*/
	@:overload @:final override public function getInsets() : java.awt.Insets;
	
	/**
	* Returns an <code>Insets</code> object containing this
	* <code>JViewport</code>s inset values.  The passed-in
	* <code>Insets</code> object will be reinitialized, and
	* all existing values within this object are overwritten.
	*
	* @param insets the <code>Insets</code> object which can be reused
	* @return this viewports inset values
	* @see #getInsets
	* @beaninfo
	*   expert: true
	*/
	@:overload @:final override public function getInsets(insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* The <code>JViewport</code> overrides the default implementation of
	* this method (in <code>JComponent</code>) to return false.
	* This ensures
	* that the drawing machinery will call the <code>Viewport</code>'s
	* <code>paint</code>
	* implementation rather than messaging the <code>JViewport</code>'s
	* children directly.
	*
	* @return false
	*/
	@:overload override public function isOptimizedDrawingEnabled() : Bool;
	
	/**
	* Returns true if scroll mode is a {@code BACKINGSTORE_SCROLL_MODE} to cause
	* painting to originate from {@code JViewport}, or one of its
	* ancestors. Otherwise returns {@code false}.
	*
	* @return true if if scroll mode is a {@code BACKINGSTORE_SCROLL_MODE}.
	* @see JComponent#isPaintingOrigin()
	*/
	@:overload override private function isPaintingOrigin() : Bool;
	
	/**
	* Depending on whether the <code>backingStore</code> is enabled,
	* either paint the image through the backing store or paint
	* just the recently exposed part, using the backing store
	* to "blit" the remainder.
	* <blockquote>
	* The term "blit" is the pronounced version of the PDP-10
	* BLT (BLock Transfer) instruction, which copied a block of
	* bits. (In case you were curious.)
	* </blockquote>
	*
	* @param g the <code>Graphics</code> context within which to paint
	*/
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Sets the bounds of this viewport.  If the viewport's width
	* or height has changed, fire a <code>StateChanged</code> event.
	*
	* @param x left edge of the origin
	* @param y top edge of the origin
	* @param w width in pixels
	* @param h height in pixels
	*
	* @see JComponent#reshape(int, int, int, int)
	*/
	@:overload override public function reshape(x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Used to control the method of scrolling the viewport contents.
	* You may want to change this mode to get maximum performance for your
	* use case.
	*
	* @param mode one of the following values:
	* <ul>
	* <li> JViewport.BLIT_SCROLL_MODE
	* <li> JViewport.BACKINGSTORE_SCROLL_MODE
	* <li> JViewport.SIMPLE_SCROLL_MODE
	* </ul>
	*
	* @see #BLIT_SCROLL_MODE
	* @see #BACKINGSTORE_SCROLL_MODE
	* @see #SIMPLE_SCROLL_MODE
	*
	* @beaninfo
	*        bound: false
	*  description: Method of moving contents for incremental scrolls.
	*         enum: BLIT_SCROLL_MODE JViewport.BLIT_SCROLL_MODE
	*               BACKINGSTORE_SCROLL_MODE JViewport.BACKINGSTORE_SCROLL_MODE
	*               SIMPLE_SCROLL_MODE JViewport.SIMPLE_SCROLL_MODE
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function setScrollMode(mode : Int) : Void;
	
	/**
	* Returns the current scrolling mode.
	*
	* @return the <code>scrollMode</code> property
	* @see #setScrollMode
	* @since 1.3
	*/
	@:require(java3) @:overload public function getScrollMode() : Int;
	
	/**
	* Returns <code>true</code> if this viewport is maintaining
	* an offscreen image of its contents.
	*
	* @return <code>true</code> if <code>scrollMode</code> is
	*    <code>BACKINGSTORE_SCROLL_MODE</code>
	*
	* @deprecated As of Java 2 platform v1.3, replaced by
	*             <code>getScrollMode()</code>.
	*/
	@:overload public function isBackingStoreEnabled() : Bool;
	
	/**
	* If true if this viewport will maintain an offscreen
	* image of its contents.  The image is used to reduce the cost
	* of small one dimensional changes to the <code>viewPosition</code>.
	* Rather than repainting the entire viewport we use
	* <code>Graphics.copyArea</code> to effect some of the scroll.
	*
	* @param enabled if true, maintain an offscreen backing store
	*
	* @deprecated As of Java 2 platform v1.3, replaced by
	*             <code>setScrollMode()</code>.
	*/
	@:overload public function setBackingStoreEnabled(enabled : Bool) : Void;
	
	/**
	* Returns the <code>JViewport</code>'s one child or <code>null</code>.
	*
	* @return the viewports child, or <code>null</code> if none exists
	*
	* @see #setView
	*/
	@:overload public function getView() : java.awt.Component;
	
	/**
	* Sets the <code>JViewport</code>'s one lightweight child
	* (<code>view</code>), which can be <code>null</code>.
	*
	* @param view the viewport's new lightweight child
	*
	* @see #getView
	*/
	@:overload public function setView(view : java.awt.Component) : Void;
	
	/**
	* If the view's size hasn't been explicitly set, return the
	* preferred size, otherwise return the view's current size.
	* If there is no view, return 0,0.
	*
	* @return a <code>Dimension</code> object specifying the size of the view
	*/
	@:overload public function getViewSize() : java.awt.Dimension;
	
	/**
	* Sets the size of the view.  A state changed event will be fired.
	*
	* @param newSize a <code>Dimension</code> object specifying the new
	*          size of the view
	*/
	@:overload public function setViewSize(newSize : java.awt.Dimension) : Void;
	
	/**
	* Returns the view coordinates that appear in the upper left
	* hand corner of the viewport, or 0,0 if there's no view.
	*
	* @return a <code>Point</code> object giving the upper left coordinates
	*/
	@:overload public function getViewPosition() : java.awt.Point;
	
	/**
	* Sets the view coordinates that appear in the upper left
	* hand corner of the viewport, does nothing if there's no view.
	*
	* @param p  a <code>Point</code> object giving the upper left coordinates
	*/
	@:overload public function setViewPosition(p : java.awt.Point) : Void;
	
	/**
	* Returns a rectangle whose origin is <code>getViewPosition</code>
	* and size is <code>getExtentSize</code>.
	* This is the visible part of the view, in view coordinates.
	*
	* @return a <code>Rectangle</code> giving the visible part of
	*          the view using view coordinates.
	*/
	@:overload public function getViewRect() : java.awt.Rectangle;
	
	/**
	* Computes the parameters for a blit where the backing store image
	* currently contains <code>oldLoc</code> in the upper left hand corner
	* and we're scrolling to <code>newLoc</code>.
	* The parameters are modified
	* to return the values required for the blit.
	*
	* @param dx  the horizontal delta
	* @param dy  the vertical delta
	* @param blitFrom the <code>Point</code> we're blitting from
	* @param blitTo the <code>Point</code> we're blitting to
	* @param blitSize the <code>Dimension</code> of the area to blit
	* @param blitPaint the area to blit
	* @return  true if the parameters are modified and we're ready to blit;
	*          false otherwise
	*/
	@:overload private function computeBlit(dx : Int, dy : Int, blitFrom : java.awt.Point, blitTo : java.awt.Point, blitSize : java.awt.Dimension, blitPaint : java.awt.Rectangle) : Bool;
	
	/**
	* Returns the size of the visible part of the view in view coordinates.
	*
	* @return a <code>Dimension</code> object giving the size of the view
	*/
	@:overload public function getExtentSize() : java.awt.Dimension;
	
	/**
	* Converts a size in pixel coordinates to view coordinates.
	* Subclasses of viewport that support "logical coordinates"
	* will override this method.
	*
	* @param size  a <code>Dimension</code> object using pixel coordinates
	* @return a <code>Dimension</code> object converted to view coordinates
	*/
	@:overload public function toViewCoordinates(size : java.awt.Dimension) : java.awt.Dimension;
	
	/**
	* Converts a point in pixel coordinates to view coordinates.
	* Subclasses of viewport that support "logical coordinates"
	* will override this method.
	*
	* @param p  a <code>Point</code> object using pixel coordinates
	* @return a <code>Point</code> object converted to view coordinates
	*/
	@:overload public function toViewCoordinates(p : java.awt.Point) : java.awt.Point;
	
	/**
	* Sets the size of the visible part of the view using view coordinates.
	*
	* @param newExtent  a <code>Dimension</code> object specifying
	*          the size of the view
	*/
	@:overload public function setExtentSize(newExtent : java.awt.Dimension) : Void;
	
	/**
	* Creates a listener for the view.
	* @return a <code>ViewListener</code>
	*/
	@:overload private function createViewListener() : javax.swing.JViewport.JViewport_ViewListener;
	
	/**
	* Subclassers can override this to install a different
	* layout manager (or <code>null</code>) in the constructor.  Returns
	* the <code>LayoutManager</code> to install on the <code>JViewport</code>.
	*
	* @return a <code>LayoutManager</code>
	*/
	@:overload private function createLayoutManager() : java.awt.LayoutManager;
	
	/**
	* Adds a <code>ChangeListener</code> to the list that is
	* notified each time the view's
	* size, position, or the viewport's extent size has changed.
	*
	* @param l the <code>ChangeListener</code> to add
	* @see #removeChangeListener
	* @see #setViewPosition
	* @see #setViewSize
	* @see #setExtentSize
	*/
	@:overload public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes a <code>ChangeListener</code> from the list that's notified each
	* time the views size, position, or the viewports extent size
	* has changed.
	*
	* @param l the <code>ChangeListener</code> to remove
	* @see #addChangeListener
	*/
	@:overload public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the <code>ChangeListener</code>s added
	* to this JViewport with addChangeListener().
	*
	* @return all of the <code>ChangeListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getChangeListeners() : java.NativeArray<javax.swing.event.ChangeListener>;
	
	/**
	* Notifies all <code>ChangeListeners</code> when the views
	* size, position, or the viewports extent size has changed.
	*
	* @see #addChangeListener
	* @see #removeChangeListener
	* @see EventListenerList
	*/
	@:overload private function fireStateChanged() : Void;
	
	/**
	* Always repaint in the parents coordinate system to make sure
	* only one paint is performed by the <code>RepaintManager</code>.
	*
	* @param     tm   maximum time in milliseconds before update
	* @param     x    the <code>x</code> coordinate (pixels over from left)
	* @param     y    the <code>y</code> coordinate (pixels down from top)
	* @param     w    the width
	* @param     h   the height
	* @see       java.awt.Component#update(java.awt.Graphics)
	*/
	@:overload override public function repaint(tm : haxe.Int64, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Returns a string representation of this <code>JViewport</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JViewport</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Notifies listeners of a property change. This is subclassed to update
	* the <code>windowBlit</code> property.
	* (The <code>putClientProperty</code> property is final).
	*
	* @param propertyName a string containing the property name
	* @param oldValue the old value of the property
	* @param newValue  the new value of the property
	*/
	@:overload override private function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Gets the AccessibleContext associated with this JViewport.
	* For viewports, the AccessibleContext takes the form of an
	* AccessibleJViewport.
	* A new AccessibleJViewport instance is created if necessary.
	*
	* @return an AccessibleJViewport that serves as the
	*         AccessibleContext of this JViewport
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* A listener for the view.
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
@:native('javax$swing$JViewport$ViewListener') extern class JViewport_ViewListener extends java.awt.event.ComponentAdapter implements java.io.Serializable
{
	@:overload override public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JViewport</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to viewport user-interface elements.
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
@:native('javax$swing$JViewport$AccessibleJViewport') extern class JViewport_AccessibleJViewport extends javax.swing.JComponent.JComponent_AccessibleJComponent
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of
	* the object
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
