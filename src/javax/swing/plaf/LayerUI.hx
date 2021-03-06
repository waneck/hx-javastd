package javax.swing.plaf;
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
extern class LayerUI<V> extends javax.swing.plaf.ComponentUI implements java.io.Serializable
{
	/**
	* Paints the specified component.
	* Subclasses should override this method and use
	* the specified {@code Graphics} object to
	* render the content of the component.
	* <p/>
	* The default implementation paints the passed component as is.
	*
	* @param g the {@code Graphics} context in which to paint
	* @param c the component being painted
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Processes {@code AWTEvent}s for {@code JLayer}
	* and <b>all its descendants</b> to this {@code LayerUI} instance.
	* <p/>
	* To enable the {@code AWTEvent}s of a particular type,
	* you call {@link JLayer#setLayerEventMask}
	* in {@link #installUI(javax.swing.JComponent)}
	* and set the layer event mask to {@code 0}
	* in {@link #uninstallUI(javax.swing.JComponent)} after that.
	* By default this  method calls the appropriate
	* {@code process&lt;event&nbsp;type&gt;Event}
	* method for the given class of event.
	* <p/>
	* <b>Note:</b> Events are processed only for displayable {@code JLayer}s.
	*
	* @param e the event to be dispatched
	* @param l the layer this LayerUI is set to
	*
	* @see JLayer#setLayerEventMask(long)
	* @see Component#isDisplayable()
	* @see #processComponentEvent
	* @see #processFocusEvent
	* @see #processKeyEvent
	* @see #processMouseEvent
	* @see #processMouseMotionEvent
	* @see #processInputMethodEvent
	* @see #processHierarchyEvent
	* @see #processMouseWheelEvent
	*/
	@:overload @:public public function eventDispatched(e : java.awt.AWTEvent, l : javax.swing.JLayer<V>) : Void;
	
	/**
	* Processes component events occurring on the {@link JLayer}
	* or any of its subcomponents.
	* <p/>
	* This method is not called unless component events are
	* enabled for the {@code JLayer} objects, this {@code LayerUI} is set to.
	* Component events are enabled in the overridden {@link #installUI} method
	* and should be disabled in the {@link #uninstallUI} method after that.
	* <pre>
	* public void installUI(JComponent c) {
	*    super.installUI(c);
	*    JLayer l = (JLayer) c;
	*    l.setLayerEventMask(AWTEvent.COMPONENT_EVENT_MASK);
	* }
	*
	* public void uninstallUI(JComponent c) {
	*     super.uninstallUI(c);
	*     JLayer l = (JLayer) c;
	*     l.setLayerEventMask(0);
	* }
	* </pre>
	*
	* @param e the {@code ComponentEvent} to be processed
	* @param l the layer this {@code LayerUI} instance is set to
	*
	* @see JLayer#setLayerEventMask(long)
	* @see #installUI(javax.swing.JComponent)
	* @see #uninstallUI(javax.swing.JComponent)
	*/
	@:overload @:protected private function processComponentEvent(e : java.awt.event.ComponentEvent, l : javax.swing.JLayer<V>) : Void;
	
	/**
	* Processes focus events occurring on the {@link JLayer}
	* or any of its subcomponents.
	* <p/>
	* This method is not called unless focus events are
	* enabled for the {@code JLayer} objects, this {@code LayerUI} is set to.
	* Focus events are enabled in the overridden {@link #installUI} method
	* and should be disabled in the {@link #uninstallUI} method after that.
	* <pre>
	* public void installUI(JComponent c) {
	*    super.installUI(c);
	*    JLayer l = (JLayer) c;
	*    l.setLayerEventMask(AWTEvent.FOCUS_EVENT_MASK);
	* }
	*
	* public void uninstallUI(JComponent c) {
	*     super.uninstallUI(c);
	*     JLayer l = (JLayer) c;
	*     l.setLayerEventMask(0);
	* }
	* </pre>
	*
	* @param e the {@code FocusEvent} to be processed
	* @param l the layer this {@code LayerUI} instance is set to
	*
	* @see JLayer#setLayerEventMask(long)
	* @see #installUI(javax.swing.JComponent)
	* @see #uninstallUI(javax.swing.JComponent)
	*/
	@:overload @:protected private function processFocusEvent(e : java.awt.event.FocusEvent, l : javax.swing.JLayer<V>) : Void;
	
	/**
	* Processes key events occurring on the {@link JLayer}
	* or any of its subcomponents.
	* <p/>
	* This method is not called unless key events are
	* enabled for the {@code JLayer} objects, this {@code LayerUI} is set to.
	* Key events are enabled in the overridden {@link #installUI} method
	* and should be disabled in the {@link #uninstallUI} method after that.
	* <pre>
	* public void installUI(JComponent c) {
	*    super.installUI(c);
	*    JLayer l = (JLayer) c;
	*    l.setLayerEventMask(AWTEvent.KEY_EVENT_MASK);
	* }
	*
	* public void uninstallUI(JComponent c) {
	*     super.uninstallUI(c);
	*     JLayer l = (JLayer) c;
	*     l.setLayerEventMask(0);
	* }
	* </pre>
	*
	* @param e the {@code KeyEvent} to be processed
	* @param l the layer this {@code LayerUI} instance is set to
	*
	* @see JLayer#setLayerEventMask(long)
	* @see #installUI(javax.swing.JComponent)
	* @see #uninstallUI(javax.swing.JComponent)
	*/
	@:overload @:protected private function processKeyEvent(e : java.awt.event.KeyEvent, l : javax.swing.JLayer<V>) : Void;
	
	/**
	* Processes mouse events occurring on the {@link JLayer}
	* or any of its subcomponents.
	* <p/>
	* This method is not called unless mouse events are
	* enabled for the {@code JLayer} objects, this {@code LayerUI} is set to.
	* Mouse events are enabled in the overridden {@link #installUI} method
	* and should be disabled in the {@link #uninstallUI} method after that.
	* <pre>
	* public void installUI(JComponent c) {
	*    super.installUI(c);
	*    JLayer l = (JLayer) c;
	*    l.setLayerEventMask(AWTEvent.MOUSE_EVENT_MASK);
	* }
	*
	* public void uninstallUI(JComponent c) {
	*     super.uninstallUI(c);
	*     JLayer l = (JLayer) c;
	*     l.setLayerEventMask(0);
	* }
	* </pre>
	*
	* @param e the {@code MouseEvent} to be processed
	* @param l the layer this {@code LayerUI} instance is set to
	*
	* @see JLayer#setLayerEventMask(long)
	* @see #installUI(javax.swing.JComponent)
	* @see #uninstallUI(javax.swing.JComponent)
	*/
	@:overload @:protected private function processMouseEvent(e : java.awt.event.MouseEvent, l : javax.swing.JLayer<V>) : Void;
	
	/**
	* Processes mouse motion event occurring on the {@link JLayer}
	* or any of its subcomponents.
	* <p/>
	* This method is not called unless mouse motion events are
	* enabled for the {@code JLayer} objects, this {@code LayerUI} is set to.
	* Mouse motion events are enabled in the overridden {@link #installUI} method
	* and should be disabled in the {@link #uninstallUI} method after that.
	* <pre>
	* public void installUI(JComponent c) {
	*    super.installUI(c);
	*    JLayer l = (JLayer) c;
	*    l.setLayerEventMask(AWTEvent.MOUSE_MOTION_EVENT_MASK);
	* }
	*
	* public void uninstallUI(JComponent c) {
	*     super.uninstallUI(c);
	*     JLayer l = (JLayer) c;
	*     l.setLayerEventMask(0);
	* }
	* </pre>
	*
	* @param e the {@code MouseEvent} to be processed
	* @param l the layer this {@code LayerUI} instance is set to
	*
	* @see JLayer#setLayerEventMask(long)
	* @see #installUI(javax.swing.JComponent)
	* @see #uninstallUI(javax.swing.JComponent)
	*/
	@:overload @:protected private function processMouseMotionEvent(e : java.awt.event.MouseEvent, l : javax.swing.JLayer<V>) : Void;
	
	/**
	* Processes mouse wheel event occurring on the {@link JLayer}
	* or any of its subcomponents.
	* <p/>
	* This method is not called unless mouse wheel events are
	* enabled for the {@code JLayer} objects, this {@code LayerUI} is set to.
	* Mouse wheel events are enabled in the overridden {@link #installUI} method
	* and should be disabled in the {@link #uninstallUI} method after that.
	* <pre>
	* public void installUI(JComponent c) {
	*    super.installUI(c);
	*    JLayer l = (JLayer) c;
	*    l.setLayerEventMask(AWTEvent.MOUSE_WHEEL_EVENT_MASK);
	* }
	*
	* public void uninstallUI(JComponent c) {
	*     super.uninstallUI(c);
	*     JLayer l = (JLayer) c;
	*     l.setLayerEventMask(0);
	* }
	* </pre>
	*
	* @param e the {@code MouseEvent} to be processed
	* @param l the layer this {@code LayerUI} instance is set to
	*
	* @see JLayer#setLayerEventMask(long)
	* @see #installUI(javax.swing.JComponent)
	* @see #uninstallUI(javax.swing.JComponent)
	*/
	@:overload @:protected private function processMouseWheelEvent(e : java.awt.event.MouseWheelEvent, l : javax.swing.JLayer<V>) : Void;
	
	/**
	* Processes input event occurring on the {@link JLayer}
	* or any of its subcomponents.
	* <p/>
	* This method is not called unless input events are
	* enabled for the {@code JLayer} objects, this {@code LayerUI} is set to.
	* Input events are enabled in the overridden {@link #installUI} method
	* and should be disabled in the {@link #uninstallUI} method after that.
	* <pre>
	* public void installUI(JComponent c) {
	*    super.installUI(c);
	*    JLayer l = (JLayer) c;
	*    l.setLayerEventMask(AWTEvent.INPUT_METHOD_EVENT_MASK);
	* }
	*
	* public void uninstallUI(JComponent c) {
	*     super.uninstallUI(c);
	*     JLayer l = (JLayer) c;
	*     l.setLayerEventMask(0);
	* }
	* </pre>
	*
	* @param e the {@code InputMethodEvent} to be processed
	* @param l the layer this {@code LayerUI} instance is set to
	*
	* @see JLayer#setLayerEventMask(long)
	* @see #installUI(javax.swing.JComponent)
	* @see #uninstallUI(javax.swing.JComponent)
	*/
	@:overload @:protected private function processInputMethodEvent(e : java.awt.event.InputMethodEvent, l : javax.swing.JLayer<V>) : Void;
	
	/**
	* Processes hierarchy event occurring on the {@link JLayer}
	* or any of its subcomponents.
	* <p/>
	* This method is not called unless hierarchy events are
	* enabled for the {@code JLayer} objects, this {@code LayerUI} is set to.
	* Hierarchy events are enabled in the overridden {@link #installUI} method
	* and should be disabled in the {@link #uninstallUI} method after that.
	* <pre>
	* public void installUI(JComponent c) {
	*    super.installUI(c);
	*    JLayer l = (JLayer) c;
	*    l.setLayerEventMask(AWTEvent.HIERARCHY_EVENT_MASK);
	* }
	*
	* public void uninstallUI(JComponent c) {
	*     super.uninstallUI(c);
	*     JLayer l = (JLayer) c;
	*     l.setLayerEventMask(0);
	* }
	* </pre>
	*
	* @param e the {@code HierarchyEvent} to be processed
	* @param l the layer this {@code LayerUI} instance is set to
	*
	* @see JLayer#setLayerEventMask(long)
	* @see #installUI(javax.swing.JComponent)
	* @see #uninstallUI(javax.swing.JComponent)
	*/
	@:overload @:protected private function processHierarchyEvent(e : java.awt.event.HierarchyEvent, l : javax.swing.JLayer<V>) : Void;
	
	/**
	* Processes hierarchy bounds event occurring on the {@link JLayer}
	* or any of its subcomponents.
	* <p/>
	* This method is not called unless hierarchy bounds events are
	* enabled for the {@code JLayer} objects, this {@code LayerUI} is set to.
	* Hierarchy bounds events are enabled in the overridden {@link #installUI}
	* method and should be disabled in the {@link #uninstallUI} method after that.
	* <pre>
	* public void installUI(JComponent c) {
	*    super.installUI(c);
	*    JLayer l = (JLayer) c;
	*    l.setLayerEventMask(AWTEvent.HIERARCHY_BOUNDS_EVENT_MASK);
	* }
	*
	* public void uninstallUI(JComponent c) {
	*     super.uninstallUI(c);
	*     JLayer l = (JLayer) c;
	*     l.setLayerEventMask(0);
	* }
	* </pre>
	*
	* @param e the {@code HierarchyEvent} to be processed
	* @param l the layer this {@code LayerUI} instance is set to
	*
	* @see JLayer#setLayerEventMask(long)
	* @see #installUI(javax.swing.JComponent)
	* @see #uninstallUI(javax.swing.JComponent)
	*/
	@:overload @:protected private function processHierarchyBoundsEvent(e : java.awt.event.HierarchyEvent, l : javax.swing.JLayer<V>) : Void;
	
	/**
	* Invoked when {@link javax.swing.JLayer#updateUI()} is called
	* by the {@code JLayer} this {@code LayerUI} is set to.
	*
	* @param l the {@code JLayer} which UI is updated
	*/
	@:overload @:public public function updateUI(l : javax.swing.JLayer<V>) : Void;
	
	/**
	* Configures the {@code JLayer} this {@code LayerUI} is set to.
	* The default implementation registers the passed {@code JLayer} component
	* as a {@code PropertyChangeListener} for the property changes of this {@code LayerUI}.
	*
	* @param c the {@code JLayer} component where this UI delegate is being installed
	*/
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Reverses the configuration which was previously set
	* in the {@link #installUI(JComponent)} method.
	* The default implementation unregisters the passed {@code JLayer} component
	* as a {@code PropertyChangeListener} for the property changes of this {@code LayerUI}.
	*
	* @param c the component from which this UI delegate is being removed.
	*/
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Adds a PropertyChangeListener to the listener list. The listener is
	* registered for all bound properties of this class.
	* <p/>
	* If {@code listener} is {@code null},
	* no exception is thrown and no action is performed.
	*
	* @param listener the property change listener to be added
	* @see #removePropertyChangeListener
	* @see #getPropertyChangeListeners
	* @see #addPropertyChangeListener(String, java.beans.PropertyChangeListener)
	*/
	@:overload @:public public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a PropertyChangeListener from the listener list. This method
	* should be used to remove PropertyChangeListeners that were registered
	* for all bound properties of this class.
	* <p/>
	* If {@code listener} is {@code null},
	* no exception is thrown and no action is performed.
	*
	* @param listener the PropertyChangeListener to be removed
	* @see #addPropertyChangeListener
	* @see #getPropertyChangeListeners
	* @see #removePropertyChangeListener(String, PropertyChangeListener)
	*/
	@:overload @:public public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Returns an array of all the property change listeners
	* registered on this component.
	*
	* @return all of this ui's {@code PropertyChangeListener}s
	*         or an empty array if no property change
	*         listeners are currently registered
	* @see #addPropertyChangeListener
	* @see #removePropertyChangeListener
	* @see #getPropertyChangeListeners(String)
	*/
	@:overload @:public public function getPropertyChangeListeners() : java.NativeArray<java.beans.PropertyChangeListener>;
	
	/**
	* Adds a PropertyChangeListener to the listener list for a specific
	* property.
	* <p/>
	* If {@code propertyName} or {@code listener} is {@code null},
	* no exception is thrown and no action is taken.
	*
	* @param propertyName one of the property names listed above
	* @param listener     the property change listener to be added
	* @see #removePropertyChangeListener(String, PropertyChangeListener)
	* @see #getPropertyChangeListeners(String)
	* @see #addPropertyChangeListener(String, PropertyChangeListener)
	*/
	@:overload @:public public function addPropertyChangeListener(propertyName : String, listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a {@code PropertyChangeListener} from the listener
	* list for a specific property. This method should be used to remove
	* {@code PropertyChangeListener}s
	* that were registered for a specific bound property.
	* <p/>
	* If {@code propertyName} or {@code listener} is {@code null},
	* no exception is thrown and no action is taken.
	*
	* @param propertyName a valid property name
	* @param listener     the PropertyChangeListener to be removed
	* @see #addPropertyChangeListener(String, PropertyChangeListener)
	* @see #getPropertyChangeListeners(String)
	* @see #removePropertyChangeListener(PropertyChangeListener)
	*/
	@:overload @:public public function removePropertyChangeListener(propertyName : String, listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Returns an array of all the listeners which have been associated
	* with the named property.
	*
	* @param propertyName  The name of the property being listened to
	* @return all of the {@code PropertyChangeListener}s associated with
	*         the named property; if no such listeners have been added or
	*         if {@code propertyName} is {@code null}, an empty
	*         array is returned
	* @see #addPropertyChangeListener(String, PropertyChangeListener)
	* @see #removePropertyChangeListener(String, PropertyChangeListener)
	* @see #getPropertyChangeListeners
	*/
	@:overload @:public public function getPropertyChangeListeners(propertyName : String) : java.NativeArray<java.beans.PropertyChangeListener>;
	
	/**
	* Support for reporting bound property changes for Object properties.
	* This method can be called when a bound property has changed and it will
	* send the appropriate PropertyChangeEvent to any registered
	* PropertyChangeListeners.
	*
	* @param propertyName the property whose value has changed
	* @param oldValue     the property's previous value
	* @param newValue     the property's new value
	*/
	@:overload @:protected private function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Notifies the {@code LayerUI} when any of its property are changed
	* and enables updating every {@code JLayer}
	* this {@code LayerUI} instance is set to.
	*
	* @param evt the PropertyChangeEvent generated by this {@code LayerUI}
	* @param l the {@code JLayer} this LayerUI is set to
	*/
	@:overload @:public public function applyPropertyChange(evt : java.beans.PropertyChangeEvent, l : javax.swing.JLayer<V>) : Void;
	
	/**
	* If the {@code JLayer}'s view component is not {@code null},
	* this calls the view's {@code getBaseline()} method.
	* Otherwise, the default implementation is called.
	*
	* @param c {@code JLayer} to return baseline resize behavior for
	* @param width the width to get the baseline for
	* @param height the height to get the baseline for
	* @return baseline or a value &lt; 0 indicating there is no reasonable
	*                  baseline
	*/
	@:overload @:public override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* If the {@code JLayer}'s view component is not {@code null},
	* this returns the result of the view's {@code getBaselineResizeBehavior()} method.
	* Otherwise, the default implementation is called.
	*
	* @param c {@code JLayer} to return baseline resize behavior for
	* @return an enum indicating how the baseline changes as the component
	*         size changes
	*/
	@:overload @:public override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	/**
	* Causes the passed instance of {@code JLayer} to lay out its components.
	*
	* @param l the {@code JLayer} component where this UI delegate is being installed
	*/
	@:overload @:public public function doLayout(l : javax.swing.JLayer<V>) : Void;
	
	/**
	* If the {@code JLayer}'s view component is not {@code null},
	* this returns the result of  the view's {@code getPreferredSize()} method.
	* Otherwise, the default implementation is used.
	*
	* @param c {@code JLayer} to return preferred size for
	* @return preferred size for the passed {@code JLayer}
	*/
	@:overload @:public override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* If the {@code JLayer}'s view component is not {@code null},
	* this returns the result of  the view's {@code getMinimalSize()} method.
	* Otherwise, the default implementation is used.
	*
	* @param c {@code JLayer} to return preferred size for
	* @return minimal size for the passed {@code JLayer}
	*/
	@:overload @:public override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* If the {@code JLayer}'s view component is not {@code null},
	* this returns the result of  the view's {@code getMaximumSize()} method.
	* Otherwise, the default implementation is used.
	*
	* @param c {@code JLayer} to return preferred size for
	* @return maximum size for the passed {@code JLayer}
	*/
	@:overload @:public override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Paints the specified region in the {@code JLayer} this {@code LayerUI} is set to, immediately.
	* <p/>
	* This method is to be overridden when the dirty region needs to be changed.
	* The default implementation delegates its functionality to {@link JComponent#paintImmediately(int, int, int, int)}.
	*
	* @param x  the x value of the region to be painted
	* @param y  the y value of the region to be painted
	* @param width  the width of the region to be painted
	* @param height  the height of the region to be painted
	*
	* @see JComponent#paintImmediately(int, int, int, int)
	*/
	@:overload @:public public function paintImmediately(x : Int, y : Int, width : Int, height : Int, l : javax.swing.JLayer<V>) : Void;
	
	
}
