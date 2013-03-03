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
/**
* The default implementation of a <code>Button</code> component's data model.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing. As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @author Jeff Dinkins
*/
extern class DefaultButtonModel implements javax.swing.ButtonModel implements java.io.Serializable
{
	/** The bitmask used to store the state of the button. */
	@:protected private var stateMask : Int;
	
	/** The action command string fired by the button. */
	@:protected private var actionCommand : String;
	
	/** The button group that the button belongs to. */
	@:protected private var group : javax.swing.ButtonGroup;
	
	/** The button's mnemonic. */
	@:protected private var mnemonic : Int;
	
	/**
	* Only one <code>ChangeEvent</code> is needed per button model
	* instance since the event's only state is the source property.
	* The source of events generated is always "this".
	*/
	@:protected @:transient private var changeEvent : javax.swing.event.ChangeEvent;
	
	/** Stores the listeners on this model. */
	@:protected private var listenerList : javax.swing.event.EventListenerList;
	
	/**
	* Constructs a <code>DefaultButtonModel</code>.
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Identifies the "armed" bit in the bitmask, which
	* indicates partial commitment towards choosing/triggering
	* the button.
	*/
	@:public @:final @:static public static var ARMED(default, null) : Int;
	
	/**
	* Identifies the "selected" bit in the bitmask, which
	* indicates that the button has been selected. Only needed for
	* certain types of buttons - such as radio button or check box.
	*/
	@:public @:final @:static public static var SELECTED(default, null) : Int;
	
	/**
	* Identifies the "pressed" bit in the bitmask, which
	* indicates that the button is pressed.
	*/
	@:public @:final @:static public static var PRESSED(default, null) : Int;
	
	/**
	* Identifies the "enabled" bit in the bitmask, which
	* indicates that the button can be selected by
	* an input device (such as a mouse pointer).
	*/
	@:public @:final @:static public static var ENABLED(default, null) : Int;
	
	/**
	* Identifies the "rollover" bit in the bitmask, which
	* indicates that the mouse is over the button.
	*/
	@:public @:final @:static public static var ROLLOVER(default, null) : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setActionCommand(actionCommand : String) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getActionCommand() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function isArmed() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function isSelected() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function isEnabled() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function isPressed() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function isRollover() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setArmed(b : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setEnabled(b : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setSelected(b : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setPressed(b : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setRollover(b : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setMnemonic(key : Int) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getMnemonic() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the change listeners
	* registered on this <code>DefaultButtonModel</code>.
	*
	* @return all of this model's <code>ChangeListener</code>s
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
	* is created lazily.
	*
	* @see EventListenerList
	*/
	@:overload @:protected private function fireStateChanged() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function removeActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Returns an array of all the action listeners
	* registered on this <code>DefaultButtonModel</code>.
	*
	* @return all of this model's <code>ActionListener</code>s
	*         or an empty
	*         array if no action listeners are currently registered
	*
	* @see #addActionListener
	* @see #removeActionListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getActionListeners() : java.NativeArray<java.awt.event.ActionListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @param e the <code>ActionEvent</code> to deliver to listeners
	* @see EventListenerList
	*/
	@:overload @:protected private function fireActionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addItemListener(l : java.awt.event.ItemListener) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function removeItemListener(l : java.awt.event.ItemListener) : Void;
	
	/**
	* Returns an array of all the item listeners
	* registered on this <code>DefaultButtonModel</code>.
	*
	* @return all of this model's <code>ItemListener</code>s
	*         or an empty
	*         array if no item listeners are currently registered
	*
	* @see #addItemListener
	* @see #removeItemListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getItemListeners() : java.NativeArray<java.awt.event.ItemListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.
	*
	* @param e the <code>ItemEvent</code> to deliver to listeners
	* @see EventListenerList
	*/
	@:overload @:protected private function fireItemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	/**
	* Returns an array of all the objects currently registered as
	* <code><em>Foo</em>Listener</code>s
	* upon this model.
	* <code><em>Foo</em>Listener</code>s
	* are registered using the <code>add<em>Foo</em>Listener</code> method.
	* <p>
	* You can specify the <code>listenerType</code> argument
	* with a class literal, such as <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a <code>DefaultButtonModel</code>
	* instance <code>m</code>
	* for its action listeners
	* with the following code:
	*
	* <pre>ActionListener[] als = (ActionListener[])(m.getListeners(ActionListener.class));</pre>
	*
	* If no such listeners exist,
	* this method returns an empty array.
	*
	* @param listenerType  the type of listeners requested;
	*          this parameter should specify an interface
	*          that descends from <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s
	*          on this model,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code> doesn't
	*          specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getActionListeners
	* @see #getChangeListeners
	* @see #getItemListeners
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/** Overridden to return <code>null</code>. */
	@:overload @:public public function getSelectedObjects() : java.NativeArray<Dynamic>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function setGroup(group : javax.swing.ButtonGroup) : Void;
	
	/**
	* Returns the group that the button belongs to.
	* Normally used with radio buttons, which are mutually
	* exclusive within their group.
	*
	* @return the <code>ButtonGroup</code> that the button belongs to
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getGroup() : javax.swing.ButtonGroup;
	
	
}
