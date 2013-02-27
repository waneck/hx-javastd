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
/**
* Manages all the <code>ToolTips</code> in the system.
* <p>
* ToolTipManager contains numerous properties for configuring how long it
* will take for the tooltips to become visible, and how long till they
* hide. Consider a component that has a different tooltip based on where
* the mouse is, such as JTree. When the mouse moves into the JTree and
* over a region that has a valid tooltip, the tooltip will become
* visibile after <code>initialDelay</code> milliseconds. After
* <code>dismissDelay</code> milliseconds the tooltip will be hidden. If
* the mouse is over a region that has a valid tooltip, and the tooltip
* is currently visible, when the mouse moves to a region that doesn't have
* a valid tooltip the tooltip will be hidden. If the mouse then moves back
* into a region that has a valid tooltip within <code>reshowDelay</code>
* milliseconds, the tooltip will immediately be shown, otherwise the
* tooltip will be shown again after <code>initialDelay</code> milliseconds.
*
* @see JComponent#createToolTip
* @author Dave Moore
* @author Rich Schiavi
*/
extern class ToolTipManager extends java.awt.event.MouseAdapter implements java.awt.event.MouseMotionListener
{
	private var lightWeightPopupEnabled : Bool;
	
	private var heavyWeightPopupEnabled : Bool;
	
	/**
	* Enables or disables the tooltip.
	*
	* @param flag  true to enable the tip, false otherwise
	*/
	@:overload public function setEnabled(flag : Bool) : Void;
	
	/**
	* Returns true if this object is enabled.
	*
	* @return true if this object is enabled, false otherwise
	*/
	@:overload public function isEnabled() : Bool;
	
	/**
	* When displaying the <code>JToolTip</code>, the
	* <code>ToolTipManager</code> chooses to use a lightweight
	* <code>JPanel</code> if it fits. This method allows you to
	* disable this feature. You have to do disable it if your
	* application mixes light weight and heavy weights components.
	*
	* @param aFlag true if a lightweight panel is desired, false otherwise
	*
	*/
	@:overload public function setLightWeightPopupEnabled(aFlag : Bool) : Void;
	
	/**
	* Returns true if lightweight (all-Java) <code>Tooltips</code>
	* are in use, or false if heavyweight (native peer)
	* <code>Tooltips</code> are being used.
	*
	* @return true if lightweight <code>ToolTips</code> are in use
	*/
	@:overload public function isLightWeightPopupEnabled() : Bool;
	
	/**
	* Specifies the initial delay value.
	*
	* @param milliseconds  the number of milliseconds to delay
	*        (after the cursor has paused) before displaying the
	*        tooltip
	* @see #getInitialDelay
	*/
	@:overload public function setInitialDelay(milliseconds : Int) : Void;
	
	/**
	* Returns the initial delay value.
	*
	* @return an integer representing the initial delay value,
	*          in milliseconds
	* @see #setInitialDelay
	*/
	@:overload public function getInitialDelay() : Int;
	
	/**
	* Specifies the dismissal delay value.
	*
	* @param milliseconds  the number of milliseconds to delay
	*        before taking away the tooltip
	* @see #getDismissDelay
	*/
	@:overload public function setDismissDelay(milliseconds : Int) : Void;
	
	/**
	* Returns the dismissal delay value.
	*
	* @return an integer representing the dismissal delay value,
	*          in milliseconds
	* @see #setDismissDelay
	*/
	@:overload public function getDismissDelay() : Int;
	
	/**
	* Used to specify the amount of time before the user has to wait
	* <code>initialDelay</code> milliseconds before a tooltip will be
	* shown. That is, if the tooltip is hidden, and the user moves into
	* a region of the same Component that has a valid tooltip within
	* <code>milliseconds</code> milliseconds the tooltip will immediately
	* be shown. Otherwise, if the user moves into a region with a valid
	* tooltip after <code>milliseconds</code> milliseconds, the user
	* will have to wait an additional <code>initialDelay</code>
	* milliseconds before the tooltip is shown again.
	*
	* @param milliseconds time in milliseconds
	* @see #getReshowDelay
	*/
	@:overload public function setReshowDelay(milliseconds : Int) : Void;
	
	/**
	* Returns the reshow delay property.
	*
	* @return reshown delay property
	* @see #setReshowDelay
	*/
	@:overload public function getReshowDelay() : Int;
	
	/**
	* Returns a shared <code>ToolTipManager</code> instance.
	*
	* @return a shared <code>ToolTipManager</code> object
	*/
	@:overload public static function sharedInstance() : ToolTipManager;
	
	/**
	* Registers a component for tooltip management.
	* <p>
	* This will register key bindings to show and hide the tooltip text
	* only if <code>component</code> has focus bindings. This is done
	* so that components that are not normally focus traversable, such
	* as <code>JLabel</code>, are not made focus traversable as a result
	* of invoking this method.
	*
	* @param component  a <code>JComponent</code> object to add
	* @see JComponent#isFocusTraversable
	*/
	@:overload public function registerComponent(component : javax.swing.JComponent) : Void;
	
	/**
	* Removes a component from tooltip control.
	*
	* @param component  a <code>JComponent</code> object to remove
	*/
	@:overload public function unregisterComponent(component : javax.swing.JComponent) : Void;
	
	/**
	*  Called when the mouse enters the region of a component.
	*  This determines whether the tool tip should be shown.
	*
	*  @param event  the event in question
	*/
	@:overload override public function mouseEntered(event : java.awt.event.MouseEvent) : Void;
	
	/**
	*  Called when the mouse exits the region of a component.
	*  Any tool tip showing should be hidden.
	*
	*  @param event  the event in question
	*/
	@:overload override public function mouseExited(event : java.awt.event.MouseEvent) : Void;
	
	/**
	*  Called when the mouse is pressed.
	*  Any tool tip showing should be hidden.
	*
	*  @param event  the event in question
	*/
	@:overload override public function mousePressed(event : java.awt.event.MouseEvent) : Void;
	
	/**
	*  Called when the mouse is pressed and dragged.
	*  Does nothing.
	*
	*  @param event  the event in question
	*/
	@:overload override public function mouseDragged(event : java.awt.event.MouseEvent) : Void;
	
	/**
	*  Called when the mouse is moved.
	*  Determines whether the tool tip should be displayed.
	*
	*  @param event  the event in question
	*/
	@:overload override public function mouseMoved(event : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('javax$swing$ToolTipManager$insideTimerAction') extern class ToolTipManager_insideTimerAction implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$ToolTipManager$outsideTimerAction') extern class ToolTipManager_outsideTimerAction implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$ToolTipManager$stillInsideTimerAction') extern class ToolTipManager_stillInsideTimerAction implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/* This listener is registered when the tooltip is first registered
* on a component in order to catch the situation where the tooltip
* was turned on while the mouse was already within the bounds of
* the component.  This way, the tooltip will be initiated on a
* mouse-entered or mouse-moved, whichever occurs first.  Once the
* tooltip has been initiated, we can remove this listener and rely
* solely on mouse-entered to initiate the tooltip.
*/
@:native('javax$swing$ToolTipManager$MoveBeforeEnterListener') @:internal extern class ToolTipManager_MoveBeforeEnterListener extends java.awt.event.MouseMotionAdapter
{
	@:overload override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
/* This listener is registered when the tooltip is first registered
* on a component in order to process accessibility keybindings.
* This will apply globally across L&F
*
* Post Tip: Ctrl+F1
* Unpost Tip: Esc and Ctrl+F1
*/
@:native('javax$swing$ToolTipManager$AccessibilityKeyListener') @:internal extern class ToolTipManager_AccessibilityKeyListener extends java.awt.event.KeyAdapter
{
	@:overload override public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	
}
