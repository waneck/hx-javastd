package javax.swing.text;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultCaret extends java.awt.Rectangle implements javax.swing.text.Caret implements java.awt.event.FocusListener implements java.awt.event.MouseListener implements java.awt.event.MouseMotionListener
{
	/**
	* Indicates that the caret position is to be updated only when
	* document changes are performed on the Event Dispatching Thread.
	* @see #setUpdatePolicy
	* @see #getUpdatePolicy
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var UPDATE_WHEN_ON_EDT(default, null) : Int;
	
	/**
	* Indicates that the caret should remain at the same
	* absolute position in the document regardless of any document
	* updates, except when the document length becomes less than
	* the current caret position due to removal. In that case the caret
	* position is adjusted to the end of the document.
	*
	* @see #setUpdatePolicy
	* @see #getUpdatePolicy
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var NEVER_UPDATE(default, null) : Int;
	
	/**
	* Indicates that the caret position is to be <b>always</b>
	* updated accordingly to the document changes regardless whether
	* the document updates are performed on the Event Dispatching Thread
	* or not.
	*
	* @see #setUpdatePolicy
	* @see #getUpdatePolicy
	* @since 1.5
	*/
	@:require(java5) @:public @:static @:final public static var ALWAYS_UPDATE(default, null) : Int;
	
	/**
	* Constructs a default caret.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Sets the caret movement policy on the document updates. Normally
	* the caret updates its absolute position within the document on
	* insertions occurred before or at the caret position and
	* on removals before the caret position. 'Absolute position'
	* means here the position relative to the start of the document.
	* For example if
	* a character is typed within editable text component it is inserted
	* at the caret position and the caret moves to the next absolute
	* position within the document due to insertion and if
	* <code>BACKSPACE</code> is typed then caret decreases its absolute
	* position due to removal of a character before it. Sometimes
	* it may be useful to turn off the caret position updates so that
	* the caret stays at the same absolute position within the
	* document position regardless of any document updates.
	* <p>
	* The following update policies are allowed:
	* <ul>
	*   <li><code>NEVER_UPDATE</code>: the caret stays at the same
	*       absolute position in the document regardless of any document
	*       updates, except when document length becomes less than
	*       the current caret position due to removal. In that case caret
	*       position is adjusted to the end of the document.
	*       The caret doesn't try to keep itself visible by scrolling
	*       the associated view when using this policy. </li>
	*   <li><code>ALWAYS_UPDATE</code>: the caret always tracks document
	*       changes. For regular changes it increases its position
	*       if an insertion occurs before or at its current position,
	*       and decreases position if a removal occurs before
	*       its current position. For undo/redo updates it is always
	*       moved to the position where update occurred. The caret
	*       also tries to keep itself visible by calling
	*       <code>adjustVisibility</code> method.</li>
	*   <li><code>UPDATE_WHEN_ON_EDT</code>: acts like <code>ALWAYS_UPDATE</code>
	*       if the document updates are performed on the Event Dispatching Thread
	*       and like <code>NEVER_UPDATE</code> if updates are performed on
	*       other thread. </li>
	* </ul> <p>
	* The default property value is <code>UPDATE_WHEN_ON_EDT</code>.
	*
	* @param policy one of the following values : <code>UPDATE_WHEN_ON_EDT</code>,
	* <code>NEVER_UPDATE</code>, <code>ALWAYS_UPDATE</code>
	* @throws IllegalArgumentException if invalid value is passed
	*
	* @see #getUpdatePolicy
	* @see #adjustVisibility
	* @see #UPDATE_WHEN_ON_EDT
	* @see #NEVER_UPDATE
	* @see #ALWAYS_UPDATE
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function setUpdatePolicy(policy : Int) : Void;
	
	/**
	* Gets the caret movement policy on document updates.
	*
	* @return one of the following values : <code>UPDATE_WHEN_ON_EDT</code>,
	* <code>NEVER_UPDATE</code>, <code>ALWAYS_UPDATE</code>
	*
	* @see #setUpdatePolicy
	* @see #UPDATE_WHEN_ON_EDT
	* @see #NEVER_UPDATE
	* @see #ALWAYS_UPDATE
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getUpdatePolicy() : Int;
	
	/**
	* Gets the text editor component that this caret is
	* is bound to.
	*
	* @return the component
	*/
	@:overload @:protected @:final private function getComponent() : javax.swing.text.JTextComponent;
	
	/**
	* Cause the caret to be painted.  The repaint
	* area is the bounding box of the caret (i.e.
	* the caret rectangle or <em>this</em>).
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*/
	@:overload @:protected @:final @:synchronized private function repaint() : Void;
	
	/**
	* Damages the area surrounding the caret to cause
	* it to be repainted in a new location.  If paint()
	* is reimplemented, this method should also be
	* reimplemented.  This method should update the
	* caret bounds (x, y, width, and height).
	*
	* @param r  the current location of the caret
	* @see #paint
	*/
	@:overload @:protected @:synchronized private function damage(r : java.awt.Rectangle) : Void;
	
	/**
	* Scrolls the associated view (if necessary) to make
	* the caret visible.  Since how this should be done
	* is somewhat of a policy, this method can be
	* reimplemented to change the behavior.  By default
	* the scrollRectToVisible method is called on the
	* associated component.
	*
	* @param nloc the new position to scroll to
	*/
	@:overload @:protected private function adjustVisibility(nloc : java.awt.Rectangle) : Void;
	
	/**
	* Gets the painter for the Highlighter.
	*
	* @return the painter
	*/
	@:overload @:protected private function getSelectionPainter() : javax.swing.text.Highlighter.Highlighter_HighlightPainter;
	
	/**
	* Tries to set the position of the caret from
	* the coordinates of a mouse event, using viewToModel().
	*
	* @param e the mouse event
	*/
	@:overload @:protected private function positionCaret(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Tries to move the position of the caret from
	* the coordinates of a mouse event, using viewToModel().
	* This will cause a selection if the dot and mark
	* are different.
	*
	* @param e the mouse event
	*/
	@:overload @:protected private function moveCaret(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Called when the component containing the caret gains
	* focus.  This is implemented to set the caret to visible
	* if the component is editable.
	*
	* @param e the focus event
	* @see FocusListener#focusGained
	*/
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Called when the component containing the caret loses
	* focus.  This is implemented to set the caret to visibility
	* to false.
	*
	* @param e the focus event
	* @see FocusListener#focusLost
	*/
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Called when the mouse is clicked.  If the click was generated
	* from button1, a double click selects a word,
	* and a triple click the current line.
	*
	* @param e the mouse event
	* @see MouseListener#mouseClicked
	*/
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* If button 1 is pressed, this is implemented to
	* request focus on the associated text component,
	* and to set the caret position. If the shift key is held down,
	* the caret will be moved, potentially resulting in a selection,
	* otherwise the
	* caret position will be set to the new location.  If the component
	* is not enabled, there will be no request for focus.
	*
	* @param e the mouse event
	* @see MouseListener#mousePressed
	*/
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Called when the mouse is released.
	*
	* @param e the mouse event
	* @see MouseListener#mouseReleased
	*/
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Called when the mouse enters a region.
	*
	* @param e the mouse event
	* @see MouseListener#mouseEntered
	*/
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Called when the mouse exits a region.
	*
	* @param e the mouse event
	* @see MouseListener#mouseExited
	*/
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Moves the caret position
	* according to the mouse pointer's current
	* location.  This effectively extends the
	* selection.  By default, this is only done
	* for mouse button 1.
	*
	* @param e the mouse event
	* @see MouseMotionListener#mouseDragged
	*/
	@:overload @:public public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Called when the mouse is moved.
	*
	* @param e the mouse event
	* @see MouseMotionListener#mouseMoved
	*/
	@:overload @:public public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Renders the caret as a vertical line.  If this is reimplemented
	* the damage method should also be reimplemented as it assumes the
	* shape of the caret is a vertical line.  Sets the caret color to
	* the value returned by getCaretColor().
	* <p>
	* If there are multiple text directions present in the associated
	* document, a flag indicating the caret bias will be rendered.
	* This will occur only if the associated document is a subclass
	* of AbstractDocument and there are multiple bidi levels present
	* in the bidi element structure (i.e. the text has multiple
	* directions associated with it).
	*
	* @param g the graphics context
	* @see #damage
	*/
	@:overload @:public public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Called when the UI is being installed into the
	* interface of a JTextComponent.  This can be used
	* to gain access to the model that is being navigated
	* by the implementation of this interface.  Sets the dot
	* and mark to 0, and establishes document, property change,
	* focus, mouse, and mouse motion listeners.
	*
	* @param c the component
	* @see Caret#install
	*/
	@:overload @:public public function install(c : javax.swing.text.JTextComponent) : Void;
	
	/**
	* Called when the UI is being removed from the
	* interface of a JTextComponent.  This is used to
	* unregister any listeners that were attached.
	*
	* @param c the component
	* @see Caret#deinstall
	*/
	@:overload @:public public function deinstall(c : javax.swing.text.JTextComponent) : Void;
	
	/**
	* Adds a listener to track whenever the caret position has
	* been changed.
	*
	* @param l the listener
	* @see Caret#addChangeListener
	*/
	@:overload @:public public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes a listener that was tracking caret position changes.
	*
	* @param l the listener
	* @see Caret#removeChangeListener
	*/
	@:overload @:public public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the change listeners
	* registered on this caret.
	*
	* @return all of this caret's <code>ChangeListener</code>s
	*         or an empty
	*         array if no change listeners are currently registered
	*
	* @see #addChangeListener
	* @see #removeChangeListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getChangeListeners() : java.NativeArray<javax.swing.event.ChangeListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.  The listener list is processed last to first.
	*
	* @see EventListenerList
	*/
	@:overload @:protected private function fireStateChanged() : Void;
	
	/**
	* Returns an array of all the objects currently registered
	* as <code><em>Foo</em>Listener</code>s
	* upon this caret.
	* <code><em>Foo</em>Listener</code>s are registered using the
	* <code>add<em>Foo</em>Listener</code> method.
	*
	* <p>
	*
	* You can specify the <code>listenerType</code> argument
	* with a class literal,
	* such as
	* <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a
	* <code>DefaultCaret</code> <code>c</code>
	* for its change listeners with the following code:
	*
	* <pre>ChangeListener[] cls = (ChangeListener[])(c.getListeners(ChangeListener.class));</pre>
	*
	* If no such listeners exist, this method returns an empty array.
	*
	* @param listenerType the type of listeners requested; this parameter
	*          should specify an interface that descends from
	*          <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s on this component,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code>
	*          doesn't specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getChangeListeners
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Changes the selection visibility.
	*
	* @param vis the new visibility
	*/
	@:overload @:public public function setSelectionVisible(vis : Bool) : Void;
	
	/**
	* Checks whether the current selection is visible.
	*
	* @return true if the selection is visible
	*/
	@:overload @:public public function isSelectionVisible() : Bool;
	
	/**
	* Determines if the caret is currently active.
	* <p>
	* This method returns whether or not the <code>Caret</code>
	* is currently in a blinking state. It does not provide
	* information as to whether it is currently blinked on or off.
	* To determine if the caret is currently painted use the
	* <code>isVisible</code> method.
	*
	* @return <code>true</code> if active else <code>false</code>
	* @see #isVisible
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isActive() : Bool;
	
	/**
	* Indicates whether or not the caret is currently visible. As the
	* caret flashes on and off the return value of this will change
	* between true, when the caret is painted, and false, when the
	* caret is not painted. <code>isActive</code> indicates whether
	* or not the caret is in a blinking state, such that it <b>can</b>
	* be visible, and <code>isVisible</code> indicates whether or not
	* the caret <b>is</b> actually visible.
	* <p>
	* Subclasses that wish to render a different flashing caret
	* should override paint and only paint the caret if this method
	* returns true.
	*
	* @return true if visible else false
	* @see Caret#isVisible
	* @see #isActive
	*/
	@:overload @:public public function isVisible() : Bool;
	
	/**
	* Sets the caret visibility, and repaints the caret.
	* It is important to understand the relationship between this method,
	* <code>isVisible</code> and <code>isActive</code>.
	* Calling this method with a value of <code>true</code> activates the
	* caret blinking. Setting it to <code>false</code> turns it completely off.
	* To determine whether the blinking is active, you should call
	* <code>isActive</code>. In effect, <code>isActive</code> is an
	* appropriate corresponding "getter" method for this one.
	* <code>isVisible</code> can be used to fetch the current
	* visibility status of the caret, meaning whether or not it is currently
	* painted. This status will change as the caret blinks on and off.
	* <p>
	* Here's a list showing the potential return values of both
	* <code>isActive</code> and <code>isVisible</code>
	* after calling this method:
	* <p>
	* <b><code>setVisible(true)</code></b>:
	* <ul>
	*     <li>isActive(): true</li>
	*     <li>isVisible(): true or false depending on whether
	*         or not the caret is blinked on or off</li>
	* </ul>
	* <p>
	* <b><code>setVisible(false)</code></b>:
	* <ul>
	*     <li>isActive(): false</li>
	*     <li>isVisible(): false</li>
	* </ul>
	*
	* @param e the visibility specifier
	* @see #isActive
	* @see Caret#setVisible
	*/
	@:overload @:public public function setVisible(e : Bool) : Void;
	
	/**
	* Sets the caret blink rate.
	*
	* @param rate the rate in milliseconds, 0 to stop blinking
	* @see Caret#setBlinkRate
	*/
	@:overload @:public public function setBlinkRate(rate : Int) : Void;
	
	/**
	* Gets the caret blink rate.
	*
	* @return the delay in milliseconds.  If this is
	*  zero the caret will not blink.
	* @see Caret#getBlinkRate
	*/
	@:overload @:public public function getBlinkRate() : Int;
	
	/**
	* Fetches the current position of the caret.
	*
	* @return the position &gt;= 0
	* @see Caret#getDot
	*/
	@:overload @:public public function getDot() : Int;
	
	/**
	* Fetches the current position of the mark.  If there is a selection,
	* the dot and mark will not be the same.
	*
	* @return the position &gt;= 0
	* @see Caret#getMark
	*/
	@:overload @:public public function getMark() : Int;
	
	/**
	* Sets the caret position and mark to the specified position,
	* with a forward bias. This implicitly sets the
	* selection range to zero.
	*
	* @param dot the position &gt;= 0
	* @see #setDot(int, Position.Bias)
	* @see Caret#setDot
	*/
	@:overload @:public public function setDot(dot : Int) : Void;
	
	/**
	* Moves the caret position to the specified position,
	* with a forward bias.
	*
	* @param dot the position &gt;= 0
	* @see #moveDot(int, javax.swing.text.Position.Bias)
	* @see Caret#moveDot
	*/
	@:overload @:public public function moveDot(dot : Int) : Void;
	
	/**
	* Moves the caret position to the specified position, with the
	* specified bias.
	*
	* @param dot the position &gt;= 0
	* @param dotBias the bias for this position, not <code>null</code>
	* @throws IllegalArgumentException if the bias is <code>null</code>
	* @see Caret#moveDot
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function moveDot(dot : Int, dotBias : javax.swing.text.Position.Position_Bias) : Void;
	
	/**
	* Sets the caret position and mark to the specified position, with the
	* specified bias. This implicitly sets the selection range
	* to zero.
	*
	* @param dot the position &gt;= 0
	* @param dotBias the bias for this position, not <code>null</code>
	* @throws IllegalArgumentException if the bias is <code>null</code>
	* @see Caret#setDot
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function setDot(dot : Int, dotBias : javax.swing.text.Position.Position_Bias) : Void;
	
	/**
	* Returns the bias of the caret position.
	*
	* @return the bias of the caret position
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getDotBias() : javax.swing.text.Position.Position_Bias;
	
	/**
	* Returns the bias of the mark.
	*
	* @return the bias of the mark
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getMarkBias() : javax.swing.text.Position.Position_Bias;
	
	/**
	* Saves the current caret position.  This is used when
	* caret up/down actions occur, moving between lines
	* that have uneven end positions.
	*
	* @param p the position
	* @see #getMagicCaretPosition
	*/
	@:overload @:public public function setMagicCaretPosition(p : java.awt.Point) : Void;
	
	/**
	* Gets the saved caret position.
	*
	* @return the position
	* see #setMagicCaretPosition
	*/
	@:overload @:public public function getMagicCaretPosition() : java.awt.Point;
	
	/**
	* Compares this object to the specified object.
	* The superclass behavior of comparing rectangles
	* is not desired, so this is changed to the Object
	* behavior.
	*
	* @param     obj   the object to compare this font with
	* @return    <code>true</code> if the objects are equal;
	*            <code>false</code> otherwise
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public override public function toString() : String;
	
	/**
	* The event listener list.
	*/
	@:protected private var listenerList : javax.swing.event.EventListenerList;
	
	/**
	* The change event for the model.
	* Only one ChangeEvent is needed per model instance since the
	* event's only (read-only) state is the source property.  The source
	* of events generated here is always "this".
	*/
	@:protected @:transient private var changeEvent : javax.swing.event.ChangeEvent;
	
	
}
@:native('javax$swing$text$DefaultCaret$SafeScroller') @:internal extern class DefaultCaret_SafeScroller implements java.lang.Runnable
{
	@:overload @:public public function run() : Void;
	
	
}
@:native('javax$swing$text$DefaultCaret$Handler') @:internal extern class DefaultCaret_Handler implements java.beans.PropertyChangeListener implements javax.swing.event.DocumentListener implements java.awt.event.ActionListener implements java.awt.datatransfer.ClipboardOwner
{
	/**
	* Invoked when the blink timer fires.  This is called
	* asynchronously.  The simply changes the visibility
	* and repaints the rectangle that last bounded the caret.
	*
	* @param e the action event
	*/
	@:overload @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	/**
	* Updates the dot and mark if they were changed by
	* the insertion.
	*
	* @param e the document event
	* @see DocumentListener#insertUpdate
	*/
	@:overload @:public public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* Updates the dot and mark if they were changed
	* by the removal.
	*
	* @param e the document event
	* @see DocumentListener#removeUpdate
	*/
	@:overload @:public public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* Gives notification that an attribute or set of attributes changed.
	*
	* @param e the document event
	* @see DocumentListener#changedUpdate
	*/
	@:overload @:public public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* This method gets called when a bound property is changed.
	* We are looking for document changes on the editor.
	*/
	@:overload @:public public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Toggles the visibility of the selection when ownership is lost.
	*/
	@:overload @:public public function lostOwnership(clipboard : java.awt.datatransfer.Clipboard, contents : java.awt.datatransfer.Transferable) : Void;
	
	
}
@:native('javax$swing$text$DefaultCaret$DefaultFilterBypass') @:internal extern class DefaultCaret_DefaultFilterBypass extends javax.swing.text.NavigationFilter.NavigationFilter_FilterBypass
{
	@:overload @:public override public function getCaret() : javax.swing.text.Caret;
	
	@:overload @:public override public function setDot(dot : Int, bias : javax.swing.text.Position.Position_Bias) : Void;
	
	@:overload @:public override public function moveDot(dot : Int, bias : javax.swing.text.Position.Position_Bias) : Void;
	
	
}
