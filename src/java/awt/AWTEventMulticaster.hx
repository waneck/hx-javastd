package java.awt;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class AWTEventMulticaster implements java.awt.event.ComponentListener implements java.awt.event.ContainerListener implements java.awt.event.FocusListener implements java.awt.event.KeyListener implements java.awt.event.MouseListener implements java.awt.event.MouseMotionListener implements java.awt.event.WindowListener implements java.awt.event.WindowFocusListener implements java.awt.event.WindowStateListener implements java.awt.event.ActionListener implements java.awt.event.ItemListener implements java.awt.event.AdjustmentListener implements java.awt.event.TextListener implements java.awt.event.InputMethodListener implements java.awt.event.HierarchyListener implements java.awt.event.HierarchyBoundsListener implements java.awt.event.MouseWheelListener
{
	/**
	* {@code AWTEventMulticaster} implements efficient and thread-safe multi-cast
	* event dispatching for the AWT events defined in the {@code java.awt.event}
	* package.
	* <p>
	* The following example illustrates how to use this class:
	*
	* <pre><code>
	* public myComponent extends Component {
	*     ActionListener actionListener = null;
	*
	*     public synchronized void addActionListener(ActionListener l) {
	*         actionListener = AWTEventMulticaster.add(actionListener, l);
	*     }
	*     public synchronized void removeActionListener(ActionListener l) {
	*         actionListener = AWTEventMulticaster.remove(actionListener, l);
	*     }
	*     public void processEvent(AWTEvent e) {
	*         // when event occurs which causes "action" semantic
	*         ActionListener listener = actionListener;
	*         if (listener != null) {
	*             listener.actionPerformed(new ActionEvent());
	*         }
	*     }
	* }
	* </code></pre>
	* The important point to note is the first argument to the {@code
	* add} and {@code remove} methods is the field maintaining the
	* listeners. In addition you must assign the result of the {@code add}
	* and {@code remove} methods to the field maintaining the listeners.
	* <p>
	* {@code AWTEventMulticaster} is implemented as a pair of {@code
	* EventListeners} that are set at construction time. {@code
	* AWTEventMulticaster} is immutable. The {@code add} and {@code
	* remove} methods do not alter {@code AWTEventMulticaster} in
	* anyway. If necessary, a new {@code AWTEventMulticaster} is
	* created. In this way it is safe to add and remove listeners during
	* the process of an event dispatching.  However, event listeners
	* added during the process of an event dispatch operation are not
	* notified of the event currently being dispatched.
	* <p>
	* All of the {@code add} methods allow {@code null} arguments. If the
	* first argument is {@code null}, the second argument is returned. If
	* the first argument is not {@code null} and the second argument is
	* {@code null}, the first argument is returned. If both arguments are
	* {@code non-null}, a new {@code AWTEventMulticaster} is created using
	* the two arguments and returned.
	* <p>
	* For the {@code remove} methods that take two arguments, the following is
	* returned:
	* <ul>
	*   <li>{@code null}, if the first argument is {@code null}, or
	*       the arguments are equal, by way of {@code ==}.
	*   <li>the first argument, if the first argument is not an instance of
	*       {@code AWTEventMulticaster}.
	*   <li>result of invoking {@code remove(EventListener)} on the
	*       first argument, supplying the second argument to the
	*       {@code remove(EventListener)} method.
	* </ul>
	* <p>Swing makes use of
	* {@link javax.swing.event.EventListenerList EventListenerList} for
	* similar logic. Refer to it for details.
	*
	* @see javax.swing.event.EventListenerList
	*
	* @author      John Rose
	* @author      Amy Fowler
	* @since       1.1
	*/
	@:require(java1) private var a(default, null) : java.util.EventListener;
	
	/**
	* Creates an event multicaster instance which chains listener-a
	* with listener-b. Input parameters <code>a</code> and <code>b</code>
	* should not be <code>null</code>, though implementations may vary in
	* choosing whether or not to throw <code>NullPointerException</code>
	* in that case.
	* @param a listener-a
	* @param b listener-b
	*/
	@:overload private function new(a : java.util.EventListener, b : java.util.EventListener) : Void;
	
	/**
	* Removes a listener from this multicaster.
	* <p>
	* The returned multicaster contains all the listeners in this
	* multicaster with the exception of all occurrences of {@code oldl}.
	* If the resulting multicaster contains only one regular listener
	* the regular listener may be returned.  If the resulting multicaster
	* is empty, then {@code null} may be returned instead.
	* <p>
	* No exception is thrown if {@code oldl} is {@code null}.
	*
	* @param oldl the listener to be removed
	* @return resulting listener
	*/
	@:overload private function remove(oldl : java.util.EventListener) : java.util.EventListener;
	
	/**
	* Handles the componentResized event by invoking the
	* componentResized methods on listener-a and listener-b.
	* @param e the component event
	*/
	@:overload public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	/**
	* Handles the componentMoved event by invoking the
	* componentMoved methods on listener-a and listener-b.
	* @param e the component event
	*/
	@:overload public function componentMoved(e : java.awt.event.ComponentEvent) : Void;
	
	/**
	* Handles the componentShown event by invoking the
	* componentShown methods on listener-a and listener-b.
	* @param e the component event
	*/
	@:overload public function componentShown(e : java.awt.event.ComponentEvent) : Void;
	
	/**
	* Handles the componentHidden event by invoking the
	* componentHidden methods on listener-a and listener-b.
	* @param e the component event
	*/
	@:overload public function componentHidden(e : java.awt.event.ComponentEvent) : Void;
	
	/**
	* Handles the componentAdded container event by invoking the
	* componentAdded methods on listener-a and listener-b.
	* @param e the component event
	*/
	@:overload public function componentAdded(e : java.awt.event.ContainerEvent) : Void;
	
	/**
	* Handles the componentRemoved container event by invoking the
	* componentRemoved methods on listener-a and listener-b.
	* @param e the component event
	*/
	@:overload public function componentRemoved(e : java.awt.event.ContainerEvent) : Void;
	
	/**
	* Handles the focusGained event by invoking the
	* focusGained methods on listener-a and listener-b.
	* @param e the focus event
	*/
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Handles the focusLost event by invoking the
	* focusLost methods on listener-a and listener-b.
	* @param e the focus event
	*/
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Handles the keyTyped event by invoking the
	* keyTyped methods on listener-a and listener-b.
	* @param e the key event
	*/
	@:overload public function keyTyped(e : java.awt.event.KeyEvent) : Void;
	
	/**
	* Handles the keyPressed event by invoking the
	* keyPressed methods on listener-a and listener-b.
	* @param e the key event
	*/
	@:overload public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	/**
	* Handles the keyReleased event by invoking the
	* keyReleased methods on listener-a and listener-b.
	* @param e the key event
	*/
	@:overload public function keyReleased(e : java.awt.event.KeyEvent) : Void;
	
	/**
	* Handles the mouseClicked event by invoking the
	* mouseClicked methods on listener-a and listener-b.
	* @param e the mouse event
	*/
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Handles the mousePressed event by invoking the
	* mousePressed methods on listener-a and listener-b.
	* @param e the mouse event
	*/
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Handles the mouseReleased event by invoking the
	* mouseReleased methods on listener-a and listener-b.
	* @param e the mouse event
	*/
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Handles the mouseEntered event by invoking the
	* mouseEntered methods on listener-a and listener-b.
	* @param e the mouse event
	*/
	@:overload public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Handles the mouseExited event by invoking the
	* mouseExited methods on listener-a and listener-b.
	* @param e the mouse event
	*/
	@:overload public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Handles the mouseDragged event by invoking the
	* mouseDragged methods on listener-a and listener-b.
	* @param e the mouse event
	*/
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Handles the mouseMoved event by invoking the
	* mouseMoved methods on listener-a and listener-b.
	* @param e the mouse event
	*/
	@:overload public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Handles the windowOpened event by invoking the
	* windowOpened methods on listener-a and listener-b.
	* @param e the window event
	*/
	@:overload public function windowOpened(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Handles the windowClosing event by invoking the
	* windowClosing methods on listener-a and listener-b.
	* @param e the window event
	*/
	@:overload public function windowClosing(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Handles the windowClosed event by invoking the
	* windowClosed methods on listener-a and listener-b.
	* @param e the window event
	*/
	@:overload public function windowClosed(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Handles the windowIconified event by invoking the
	* windowIconified methods on listener-a and listener-b.
	* @param e the window event
	*/
	@:overload public function windowIconified(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Handles the windowDeiconfied event by invoking the
	* windowDeiconified methods on listener-a and listener-b.
	* @param e the window event
	*/
	@:overload public function windowDeiconified(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Handles the windowActivated event by invoking the
	* windowActivated methods on listener-a and listener-b.
	* @param e the window event
	*/
	@:overload public function windowActivated(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Handles the windowDeactivated event by invoking the
	* windowDeactivated methods on listener-a and listener-b.
	* @param e the window event
	*/
	@:overload public function windowDeactivated(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Handles the windowStateChanged event by invoking the
	* windowStateChanged methods on listener-a and listener-b.
	* @param e the window event
	* @since 1.4
	*/
	@:require(java4) @:overload public function windowStateChanged(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Handles the windowGainedFocus event by invoking the windowGainedFocus
	* methods on listener-a and listener-b.
	* @param e the window event
	* @since 1.4
	*/
	@:require(java4) @:overload public function windowGainedFocus(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Handles the windowLostFocus event by invoking the windowLostFocus
	* methods on listener-a and listener-b.
	* @param e the window event
	* @since 1.4
	*/
	@:require(java4) @:overload public function windowLostFocus(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Handles the actionPerformed event by invoking the
	* actionPerformed methods on listener-a and listener-b.
	* @param e the action event
	*/
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	/**
	* Handles the itemStateChanged event by invoking the
	* itemStateChanged methods on listener-a and listener-b.
	* @param e the item event
	*/
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	/**
	* Handles the adjustmentValueChanged event by invoking the
	* adjustmentValueChanged methods on listener-a and listener-b.
	* @param e the adjustment event
	*/
	@:overload public function adjustmentValueChanged(e : java.awt.event.AdjustmentEvent) : Void;
	
	@:overload public function textValueChanged(e : java.awt.event.TextEvent) : Void;
	
	/**
	* Handles the inputMethodTextChanged event by invoking the
	* inputMethodTextChanged methods on listener-a and listener-b.
	* @param e the item event
	*/
	@:overload public function inputMethodTextChanged(e : java.awt.event.InputMethodEvent) : Void;
	
	/**
	* Handles the caretPositionChanged event by invoking the
	* caretPositionChanged methods on listener-a and listener-b.
	* @param e the item event
	*/
	@:overload public function caretPositionChanged(e : java.awt.event.InputMethodEvent) : Void;
	
	/**
	* Handles the hierarchyChanged event by invoking the
	* hierarchyChanged methods on listener-a and listener-b.
	* @param e the item event
	* @since 1.3
	*/
	@:require(java3) @:overload public function hierarchyChanged(e : java.awt.event.HierarchyEvent) : Void;
	
	/**
	* Handles the ancestorMoved event by invoking the
	* ancestorMoved methods on listener-a and listener-b.
	* @param e the item event
	* @since 1.3
	*/
	@:require(java3) @:overload public function ancestorMoved(e : java.awt.event.HierarchyEvent) : Void;
	
	/**
	* Handles the ancestorResized event by invoking the
	* ancestorResized methods on listener-a and listener-b.
	* @param e the item event
	* @since 1.3
	*/
	@:require(java3) @:overload public function ancestorResized(e : java.awt.event.HierarchyEvent) : Void;
	
	/**
	* Handles the mouseWheelMoved event by invoking the
	* mouseWheelMoved methods on listener-a and listener-b.
	* @param e the mouse event
	* @since 1.4
	*/
	@:require(java4) @:overload public function mouseWheelMoved(e : java.awt.event.MouseWheelEvent) : Void;
	
	/**
	* Adds component-listener-a with component-listener-b and
	* returns the resulting multicast listener.
	* @param a component-listener-a
	* @param b component-listener-b
	*/
	@:overload public static function add(a : java.awt.event.ComponentListener, b : java.awt.event.ComponentListener) : java.awt.event.ComponentListener;
	
	/**
	* Adds container-listener-a with container-listener-b and
	* returns the resulting multicast listener.
	* @param a container-listener-a
	* @param b container-listener-b
	*/
	@:overload public static function add(a : java.awt.event.ContainerListener, b : java.awt.event.ContainerListener) : java.awt.event.ContainerListener;
	
	/**
	* Adds focus-listener-a with focus-listener-b and
	* returns the resulting multicast listener.
	* @param a focus-listener-a
	* @param b focus-listener-b
	*/
	@:overload public static function add(a : java.awt.event.FocusListener, b : java.awt.event.FocusListener) : java.awt.event.FocusListener;
	
	/**
	* Adds key-listener-a with key-listener-b and
	* returns the resulting multicast listener.
	* @param a key-listener-a
	* @param b key-listener-b
	*/
	@:overload public static function add(a : java.awt.event.KeyListener, b : java.awt.event.KeyListener) : java.awt.event.KeyListener;
	
	/**
	* Adds mouse-listener-a with mouse-listener-b and
	* returns the resulting multicast listener.
	* @param a mouse-listener-a
	* @param b mouse-listener-b
	*/
	@:overload public static function add(a : java.awt.event.MouseListener, b : java.awt.event.MouseListener) : java.awt.event.MouseListener;
	
	/**
	* Adds mouse-motion-listener-a with mouse-motion-listener-b and
	* returns the resulting multicast listener.
	* @param a mouse-motion-listener-a
	* @param b mouse-motion-listener-b
	*/
	@:overload public static function add(a : java.awt.event.MouseMotionListener, b : java.awt.event.MouseMotionListener) : java.awt.event.MouseMotionListener;
	
	/**
	* Adds window-listener-a with window-listener-b and
	* returns the resulting multicast listener.
	* @param a window-listener-a
	* @param b window-listener-b
	*/
	@:overload public static function add(a : java.awt.event.WindowListener, b : java.awt.event.WindowListener) : java.awt.event.WindowListener;
	
	/**
	* Adds window-state-listener-a with window-state-listener-b
	* and returns the resulting multicast listener.
	* @param a window-state-listener-a
	* @param b window-state-listener-b
	* @since 1.4
	*/
	@:require(java4) @:overload public static function add(a : java.awt.event.WindowStateListener, b : java.awt.event.WindowStateListener) : java.awt.event.WindowStateListener;
	
	/**
	* Adds window-focus-listener-a with window-focus-listener-b
	* and returns the resulting multicast listener.
	* @param a window-focus-listener-a
	* @param b window-focus-listener-b
	* @since 1.4
	*/
	@:require(java4) @:overload public static function add(a : java.awt.event.WindowFocusListener, b : java.awt.event.WindowFocusListener) : java.awt.event.WindowFocusListener;
	
	/**
	* Adds action-listener-a with action-listener-b and
	* returns the resulting multicast listener.
	* @param a action-listener-a
	* @param b action-listener-b
	*/
	@:overload public static function add(a : java.awt.event.ActionListener, b : java.awt.event.ActionListener) : java.awt.event.ActionListener;
	
	/**
	* Adds item-listener-a with item-listener-b and
	* returns the resulting multicast listener.
	* @param a item-listener-a
	* @param b item-listener-b
	*/
	@:overload public static function add(a : java.awt.event.ItemListener, b : java.awt.event.ItemListener) : java.awt.event.ItemListener;
	
	/**
	* Adds adjustment-listener-a with adjustment-listener-b and
	* returns the resulting multicast listener.
	* @param a adjustment-listener-a
	* @param b adjustment-listener-b
	*/
	@:overload public static function add(a : java.awt.event.AdjustmentListener, b : java.awt.event.AdjustmentListener) : java.awt.event.AdjustmentListener;
	
	@:overload public static function add(a : java.awt.event.TextListener, b : java.awt.event.TextListener) : java.awt.event.TextListener;
	
	/**
	* Adds input-method-listener-a with input-method-listener-b and
	* returns the resulting multicast listener.
	* @param a input-method-listener-a
	* @param b input-method-listener-b
	*/
	@:overload public static function add(a : java.awt.event.InputMethodListener, b : java.awt.event.InputMethodListener) : java.awt.event.InputMethodListener;
	
	/**
	* Adds hierarchy-listener-a with hierarchy-listener-b and
	* returns the resulting multicast listener.
	* @param a hierarchy-listener-a
	* @param b hierarchy-listener-b
	* @since 1.3
	*/
	@:require(java3) @:overload public static function add(a : java.awt.event.HierarchyListener, b : java.awt.event.HierarchyListener) : java.awt.event.HierarchyListener;
	
	/**
	* Adds hierarchy-bounds-listener-a with hierarchy-bounds-listener-b and
	* returns the resulting multicast listener.
	* @param a hierarchy-bounds-listener-a
	* @param b hierarchy-bounds-listener-b
	* @since 1.3
	*/
	@:require(java3) @:overload public static function add(a : java.awt.event.HierarchyBoundsListener, b : java.awt.event.HierarchyBoundsListener) : java.awt.event.HierarchyBoundsListener;
	
	/**
	* Adds mouse-wheel-listener-a with mouse-wheel-listener-b and
	* returns the resulting multicast listener.
	* @param a mouse-wheel-listener-a
	* @param b mouse-wheel-listener-b
	* @since 1.4
	*/
	@:require(java4) @:overload public static function add(a : java.awt.event.MouseWheelListener, b : java.awt.event.MouseWheelListener) : java.awt.event.MouseWheelListener;
	
	/**
	* Removes the old component-listener from component-listener-l and
	* returns the resulting multicast listener.
	* @param l component-listener-l
	* @param oldl the component-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : java.awt.event.ComponentListener, oldl : java.awt.event.ComponentListener) : java.awt.event.ComponentListener;
	
	/**
	* Removes the old container-listener from container-listener-l and
	* returns the resulting multicast listener.
	* @param l container-listener-l
	* @param oldl the container-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : java.awt.event.ContainerListener, oldl : java.awt.event.ContainerListener) : java.awt.event.ContainerListener;
	
	/**
	* Removes the old focus-listener from focus-listener-l and
	* returns the resulting multicast listener.
	* @param l focus-listener-l
	* @param oldl the focus-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : java.awt.event.FocusListener, oldl : java.awt.event.FocusListener) : java.awt.event.FocusListener;
	
	/**
	* Removes the old key-listener from key-listener-l and
	* returns the resulting multicast listener.
	* @param l key-listener-l
	* @param oldl the key-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : java.awt.event.KeyListener, oldl : java.awt.event.KeyListener) : java.awt.event.KeyListener;
	
	/**
	* Removes the old mouse-listener from mouse-listener-l and
	* returns the resulting multicast listener.
	* @param l mouse-listener-l
	* @param oldl the mouse-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : java.awt.event.MouseListener, oldl : java.awt.event.MouseListener) : java.awt.event.MouseListener;
	
	/**
	* Removes the old mouse-motion-listener from mouse-motion-listener-l
	* and returns the resulting multicast listener.
	* @param l mouse-motion-listener-l
	* @param oldl the mouse-motion-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : java.awt.event.MouseMotionListener, oldl : java.awt.event.MouseMotionListener) : java.awt.event.MouseMotionListener;
	
	/**
	* Removes the old window-listener from window-listener-l and
	* returns the resulting multicast listener.
	* @param l window-listener-l
	* @param oldl the window-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : java.awt.event.WindowListener, oldl : java.awt.event.WindowListener) : java.awt.event.WindowListener;
	
	/**
	* Removes the old window-state-listener from window-state-listener-l
	* and returns the resulting multicast listener.
	* @param l window-state-listener-l
	* @param oldl the window-state-listener being removed
	* @since 1.4
	*/
	@:require(java4) @:native('remove') @:overload public static function _remove(l : java.awt.event.WindowStateListener, oldl : java.awt.event.WindowStateListener) : java.awt.event.WindowStateListener;
	
	/**
	* Removes the old window-focus-listener from window-focus-listener-l
	* and returns the resulting multicast listener.
	* @param l window-focus-listener-l
	* @param oldl the window-focus-listener being removed
	* @since 1.4
	*/
	@:require(java4) @:native('remove') @:overload public static function _remove(l : java.awt.event.WindowFocusListener, oldl : java.awt.event.WindowFocusListener) : java.awt.event.WindowFocusListener;
	
	/**
	* Removes the old action-listener from action-listener-l and
	* returns the resulting multicast listener.
	* @param l action-listener-l
	* @param oldl the action-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : java.awt.event.ActionListener, oldl : java.awt.event.ActionListener) : java.awt.event.ActionListener;
	
	/**
	* Removes the old item-listener from item-listener-l and
	* returns the resulting multicast listener.
	* @param l item-listener-l
	* @param oldl the item-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : java.awt.event.ItemListener, oldl : java.awt.event.ItemListener) : java.awt.event.ItemListener;
	
	/**
	* Removes the old adjustment-listener from adjustment-listener-l and
	* returns the resulting multicast listener.
	* @param l adjustment-listener-l
	* @param oldl the adjustment-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : java.awt.event.AdjustmentListener, oldl : java.awt.event.AdjustmentListener) : java.awt.event.AdjustmentListener;
	
	@:native('remove') @:overload public static function _remove(l : java.awt.event.TextListener, oldl : java.awt.event.TextListener) : java.awt.event.TextListener;
	
	/**
	* Removes the old input-method-listener from input-method-listener-l and
	* returns the resulting multicast listener.
	* @param l input-method-listener-l
	* @param oldl the input-method-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : java.awt.event.InputMethodListener, oldl : java.awt.event.InputMethodListener) : java.awt.event.InputMethodListener;
	
	/**
	* Removes the old hierarchy-listener from hierarchy-listener-l and
	* returns the resulting multicast listener.
	* @param l hierarchy-listener-l
	* @param oldl the hierarchy-listener being removed
	* @since 1.3
	*/
	@:require(java3) @:native('remove') @:overload public static function _remove(l : java.awt.event.HierarchyListener, oldl : java.awt.event.HierarchyListener) : java.awt.event.HierarchyListener;
	
	/**
	* Removes the old hierarchy-bounds-listener from
	* hierarchy-bounds-listener-l and returns the resulting multicast
	* listener.
	* @param l hierarchy-bounds-listener-l
	* @param oldl the hierarchy-bounds-listener being removed
	* @since 1.3
	*/
	@:require(java3) @:native('remove') @:overload public static function _remove(l : java.awt.event.HierarchyBoundsListener, oldl : java.awt.event.HierarchyBoundsListener) : java.awt.event.HierarchyBoundsListener;
	
	/**
	* Removes the old mouse-wheel-listener from mouse-wheel-listener-l
	* and returns the resulting multicast listener.
	* @param l mouse-wheel-listener-l
	* @param oldl the mouse-wheel-listener being removed
	* @since 1.4
	*/
	@:require(java4) @:native('remove') @:overload public static function _remove(l : java.awt.event.MouseWheelListener, oldl : java.awt.event.MouseWheelListener) : java.awt.event.MouseWheelListener;
	
	/**
	* Returns the resulting multicast listener from adding listener-a
	* and listener-b together.
	* If listener-a is null, it returns listener-b;
	* If listener-b is null, it returns listener-a
	* If neither are null, then it creates and returns
	* a new AWTEventMulticaster instance which chains a with b.
	* @param a event listener-a
	* @param b event listener-b
	*/
	@:overload private static function addInternal(a : java.util.EventListener, b : java.util.EventListener) : java.util.EventListener;
	
	/**
	* Returns the resulting multicast listener after removing the
	* old listener from listener-l.
	* If listener-l equals the old listener OR listener-l is null,
	* returns null.
	* Else if listener-l is an instance of AWTEventMulticaster,
	* then it removes the old listener from it.
	* Else, returns listener l.
	* @param l the listener being removed from
	* @param oldl the listener being removed
	*/
	@:overload private static function removeInternal(l : java.util.EventListener, oldl : java.util.EventListener) : java.util.EventListener;
	
	/* Serialization support.
	*/
	@:overload private function saveInternal(s : java.io.ObjectOutputStream, k : String) : Void;
	
	@:overload private static function save(s : java.io.ObjectOutputStream, k : String, l : java.util.EventListener) : Void;
	
	/**
	* Returns an array of all the objects chained as
	* <code><em>Foo</em>Listener</code>s by the specified
	* <code>java.util.EventListener</code>.
	* <code><em>Foo</em>Listener</code>s are chained by the
	* <code>AWTEventMulticaster</code> using the
	* <code>add<em>Foo</em>Listener</code> method.
	* If a <code>null</code> listener is specified, this method returns an
	* empty array. If the specified listener is not an instance of
	* <code>AWTEventMulticaster</code>, this method returns an array which
	* contains only the specified listener. If no such listeners are chanined,
	* this method returns an empty array.
	*
	* @param l the specified <code>java.util.EventListener</code>
	* @param listenerType the type of listeners requested; this parameter
	*          should specify an interface that descends from
	*          <code>java.util.EventListener</code>
	* @return an array of all objects chained as
	*          <code><em>Foo</em>Listener</code>s by the specified multicast
	*          listener, or an empty array if no such listeners have been
	*          chained by the specified multicast listener
	* @exception NullPointerException if the specified
	*             {@code listenertype} parameter is {@code null}
	* @exception ClassCastException if <code>listenerType</code>
	*          doesn't specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getListeners<T : java.util.EventListener>(l : java.util.EventListener, listenerType : Class<T>) : java.NativeArray<T>;
	
	
}
