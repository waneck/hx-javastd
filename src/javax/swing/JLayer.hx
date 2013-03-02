package javax.swing;
/*
* Copyright (c) 2009, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JLayer<V> extends javax.swing.JComponent implements javax.swing.Scrollable implements java.beans.PropertyChangeListener implements javax.accessibility.Accessible
{
	/**
	* Creates a new {@code JLayer} object with a {@code null} view component
	* and default {@link javax.swing.plaf.LayerUI}.
	*
	* @see #setView
	* @see #setUI
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new {@code JLayer} object
	* with default {@link javax.swing.plaf.LayerUI}.
	*
	* @param view the component to be decorated by this {@code JLayer}
	*
	* @see #setUI
	*/
	@:overload public function new(view : V) : Void;
	
	/**
	* Creates a new {@code JLayer} object with the specified view component
	* and {@link javax.swing.plaf.LayerUI} object.
	*
	* @param view the component to be decorated
	* @param ui the {@link javax.swing.plaf.LayerUI} delegate
	* to be used by this {@code JLayer}
	*/
	@:overload public function new(view : V, ui : javax.swing.plaf.LayerUI<V>) : Void;
	
	/**
	* Returns the {@code JLayer}'s view component or {@code null}.
	* <br/>This is a bound property.
	*
	* @return the {@code JLayer}'s view component
	*         or {@code null} if none exists
	*
	* @see #setView(Component)
	*/
	@:overload public function getView() : V;
	
	/**
	* Sets the {@code JLayer}'s view component, which can be {@code null}.
	* <br/>This is a bound property.
	*
	* @param view the view component for this {@code JLayer}
	*
	* @see #getView()
	*/
	@:overload public function setView(view : V) : Void;
	
	/**
	* Sets the {@link javax.swing.plaf.LayerUI} which will perform painting
	* and receive input events for this {@code JLayer}.
	*
	* @param ui the {@link javax.swing.plaf.LayerUI} for this {@code JLayer}
	*/
	@:overload public function setUI(ui : javax.swing.plaf.LayerUI<V>) : Void;
	
	/**
	* Returns the {@link javax.swing.plaf.LayerUI} for this {@code JLayer}.
	*
	* @return the {@code LayerUI} for this {@code JLayer}
	*/
	@:overload public function getUI() : javax.swing.plaf.LayerUI<V>;
	
	/**
	* Returns the {@code JLayer}'s glassPane component or {@code null}.
	* <br/>This is a bound property.
	*
	* @return the {@code JLayer}'s glassPane component
	*         or {@code null} if none exists
	*
	* @see #setGlassPane(JPanel)
	*/
	@:overload public function getGlassPane() : javax.swing.JPanel;
	
	/**
	* Sets the {@code JLayer}'s glassPane component, which can be {@code null}.
	* <br/>This is a bound property.
	*
	* @param glassPane the glassPane component of this {@code JLayer}
	*
	* @see #getGlassPane()
	*/
	@:overload public function setGlassPane(glassPane : javax.swing.JPanel) : Void;
	
	/**
	* Called by the constructor methods to create a default {@code glassPane}.
	* By default this method creates a new JPanel with visibility set to true
	* and opacity set to false.
	*
	* @return the default {@code glassPane}
	*/
	@:overload public function createGlassPane() : javax.swing.JPanel;
	
	/**
	* Sets the layout manager for this container.  This method is
	* overridden to prevent the layout manager from being set.
	* <p/>Note:  If {@code mgr} is non-{@code null}, this
	* method will throw an exception as layout managers are not supported on
	* a {@code JLayer}.
	*
	* @param mgr the specified layout manager
	* @exception IllegalArgumentException this method is not supported
	*/
	@:overload public function setLayout(mgr : java.awt.LayoutManager) : Void;
	
	/**
	* A non-{@code null} border, or non-zero insets, isn't supported, to prevent the geometry
	* of this component from becoming complex enough to inhibit
	* subclassing of {@code LayerUI} class.  To create a {@code JLayer} with a border,
	* add it to a {@code JPanel} that has a border.
	* <p/>Note:  If {@code border} is non-{@code null}, this
	* method will throw an exception as borders are not supported on
	* a {@code JLayer}.
	*
	* @param border the {@code Border} to set
	* @exception IllegalArgumentException this method is not supported
	*/
	@:overload public function setBorder(border : javax.swing.border.Border) : Void;
	
	/**
	* This method is not supported by {@code JLayer}
	* and always throws {@code UnsupportedOperationException}
	*
	* @throws UnsupportedOperationException this method is not supported
	*
	* @see #setView(Component)
	* @see #setGlassPane(JPanel)
	*/
	@:overload private function addImpl(comp : java.awt.Component, constraints : Dynamic, index : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function remove(comp : java.awt.Component) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function removeAll() : Void;
	
	/**
	* Always returns {@code true} to cause painting to originate from {@code JLayer},
	* or one of its ancestors.
	*
	* @return true
	* @see JComponent#isPaintingOrigin()
	*/
	@:overload private function isPaintingOrigin() : Bool;
	
	/**
	* Delegates its functionality to the
	* {@link javax.swing.plaf.LayerUI#paintImmediately(int, int, int, int, JLayer)} method,
	* if {@code LayerUI} is set.
	*
	* @param x  the x value of the region to be painted
	* @param y  the y value of the region to be painted
	* @param w  the width of the region to be painted
	* @param h  the height of the region to be painted
	*/
	@:overload public function paintImmediately(x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Delegates all painting to the {@link javax.swing.plaf.LayerUI} object.
	*
	* @param g the {@code Graphics} to render to
	*/
	@:overload public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* This method is empty, because all painting is done by
	* {@link #paint(Graphics)} and
	* {@link javax.swing.plaf.LayerUI#update(Graphics, JComponent)} methods
	*/
	@:overload private function paintComponent(g : java.awt.Graphics) : Void;
	
	/**
	* The {@code JLayer} overrides the default implementation of
	* this method (in {@code JComponent}) to return {@code false}.
	* This ensures
	* that the drawing machinery will call the {@code JLayer}'s
	* {@code paint}
	* implementation rather than messaging the {@code JLayer}'s
	* children directly.
	*
	* @return false
	*/
	@:overload public function isOptimizedDrawingEnabled() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Enables the events from JLayer and <b>all its descendants</b>
	* defined by the specified event mask parameter
	* to be delivered to the
	* {@link LayerUI#eventDispatched(AWTEvent, JLayer)} method.
	* <p/>
	* Events are delivered provided that {@code LayerUI} is set
	* for this {@code JLayer} and the {@code JLayer}
	* is displayable.
	* <p/>
	* The following example shows how to correctly use this method
	* in the {@code LayerUI} implementations:
	* <pre>
	*    public void installUI(JComponent c) {
	*       super.installUI(c);
	*       JLayer l = (JLayer) c;
	*       // this LayerUI will receive only key and focus events
	*       l.setLayerEventMask(AWTEvent.KEY_EVENT_MASK | AWTEvent.FOCUS_EVENT_MASK);
	*    }
	*
	*    public void uninstallUI(JComponent c) {
	*       super.uninstallUI(c);
	*       JLayer l = (JLayer) c;
	*       // JLayer must be returned to its initial state
	*       l.setLayerEventMask(0);
	*    }
	* </pre>
	*
	* By default {@code JLayer} receives no events and its event mask is {@code 0}.
	*
	* @param layerEventMask the bitmask of event types to receive
	*
	* @see #getLayerEventMask()
	* @see LayerUI#eventDispatched(AWTEvent, JLayer)
	* @see Component#isDisplayable()
	*/
	@:overload public function setLayerEventMask(layerEventMask : haxe.Int64) : Void;
	
	/**
	* Returns the bitmap of event mask to receive by this {@code JLayer}
	* and its {@code LayerUI}.
	* <p/>
	* It means that {@link javax.swing.plaf.LayerUI#eventDispatched(AWTEvent, JLayer)} method
	* will only receive events that match the event mask.
	* <p/>
	* By default {@code JLayer} receives no events.
	*
	* @return the bitmask of event types to receive for this {@code JLayer}
	*/
	@:overload public function getLayerEventMask() : haxe.Int64;
	
	/**
	* Delegates its functionality to the {@link javax.swing.plaf.LayerUI#updateUI(JLayer)} method,
	* if {@code LayerUI} is set.
	*/
	@:overload public function updateUI() : Void;
	
	/**
	* Returns the preferred size of the viewport for a view component.
	* <p/>
	* If the view component of this layer implements {@link Scrollable}, this method delegates its
	* implementation to the view component.
	*
	* @return the preferred size of the viewport for a view component
	*
	* @see Scrollable
	*/
	@:overload public function getPreferredScrollableViewportSize() : java.awt.Dimension;
	
	/**
	* Returns a scroll increment, which is required for components
	* that display logical rows or columns in order to completely expose
	* one block of rows or columns, depending on the value of orientation.
	* <p/>
	* If the view component of this layer implements {@link Scrollable}, this method delegates its
	* implementation to the view component.
	*
	* @return the "block" increment for scrolling in the specified direction
	*
	* @see Scrollable
	*/
	@:overload public function getScrollableBlockIncrement(visibleRect : java.awt.Rectangle, orientation : Int, direction : Int) : Int;
	
	/**
	* Returns {@code false} to indicate that the height of the viewport does not
	* determine the height of the layer, unless the preferred height
	* of the layer is smaller than the height of the viewport.
	* <p/>
	* If the view component of this layer implements {@link Scrollable}, this method delegates its
	* implementation to the view component.
	*
	* @return whether the layer should track the height of the viewport
	*
	* @see Scrollable
	*/
	@:overload public function getScrollableTracksViewportHeight() : Bool;
	
	/**
	* Returns {@code false} to indicate that the width of the viewport does not
	* determine the width of the layer, unless the preferred width
	* of the layer is smaller than the width of the viewport.
	* <p/>
	* If the view component of this layer implements {@link Scrollable}, this method delegates its
	* implementation to the view component.
	*
	* @return whether the layer should track the width of the viewport
	*
	* @see Scrollable
	*/
	@:overload public function getScrollableTracksViewportWidth() : Bool;
	
	/**
	* Returns a scroll increment, which is required for components
	* that display logical rows or columns in order to completely expose
	* one new row or column, depending on the value of orientation.
	* Ideally, components should handle a partially exposed row or column
	* by returning the distance required to completely expose the item.
	* <p/>
	* Scrolling containers, like {@code JScrollPane}, will use this method
	* each time the user requests a unit scroll.
	* <p/>
	* If the view component of this layer implements {@link Scrollable}, this method delegates its
	* implementation to the view component.
	*
	* @return The "unit" increment for scrolling in the specified direction.
	*         This value should always be positive.
	*
	* @see Scrollable
	*/
	@:overload public function getScrollableUnitIncrement(visibleRect : java.awt.Rectangle, orientation : Int, direction : Int) : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addNotify() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function removeNotify() : Void;
	
	/**
	* Delegates its functionality to the {@link javax.swing.plaf.LayerUI#doLayout(JLayer)} method,
	* if {@code LayerUI} is set.
	*/
	@:overload public function doLayout() : Void;
	
	/**
	* Gets the AccessibleContext associated with this {@code JLayer}.
	*
	* @return the AccessibleContext associated with this {@code JLayer}.
	*/
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* static AWTEventListener to be shared with all AbstractLayerUIs
*/
@:native('javax$swing$JLayer$LayerEventController') @:internal extern class JLayer_LayerEventController implements java.awt.event.AWTEventListener
{
	@:overload public function eventDispatched(event : java.awt.AWTEvent) : Void;
	
	
}
/**
* The default glassPane for the {@link javax.swing.JLayer}.
* It is a subclass of {@code JPanel} which is non opaque by default.
*/
@:native('javax$swing$JLayer$DefaultLayerGlassPane') @:internal extern class JLayer_DefaultLayerGlassPane extends javax.swing.JPanel
{
	/**
	* Creates a new {@link DefaultLayerGlassPane}
	*/
	@:overload public function new() : Void;
	
	/**
	* First, implementation of this method iterates through
	* glassPane's child components and returns {@code true}
	* if any of them is visible and contains passed x,y point.
	* After that it checks if no mouseListeners is attached to this component
	* and no mouse cursor is set, then it returns {@code false},
	* otherwise calls the super implementation of this method.
	*
	* @param x the <i>x</i> coordinate of the point
	* @param y the <i>y</i> coordinate of the point
	* @return true if this component logically contains x,y
	*/
	@:overload public function contains(x : Int, y : Int) : Bool;
	
	
}
