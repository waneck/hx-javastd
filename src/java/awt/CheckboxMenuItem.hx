package java.awt;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class CheckboxMenuItem extends java.awt.MenuItem implements java.awt.ItemSelectable implements javax.accessibility.Accessible
{
	/**
	* Create a check box menu item with an empty label.
	* The item's state is initially set to "off."
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since   JDK1.1
	*/
	@:require(java1) @:overload @:public public function new() : Void;
	
	/**
	* Create a check box menu item with the specified label.
	* The item's state is initially set to "off."

	* @param     label   a string label for the check box menu item,
	*                or <code>null</code> for an unlabeled menu item.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload @:public public function new(label : String) : Void;
	
	/**
	* Create a check box menu item with the specified label and state.
	* @param      label   a string label for the check box menu item,
	*                     or <code>null</code> for an unlabeled menu item.
	* @param      state   the initial state of the menu item, where
	*                     <code>true</code> indicates "on" and
	*                     <code>false</code> indicates "off."
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since      JDK1.1
	*/
	@:require(java1) @:overload @:public public function new(label : String, state : Bool) : Void;
	
	/**
	* Creates the peer of the checkbox item.  This peer allows us to
	* change the look of the checkbox item without changing its
	* functionality.
	* Most applications do not call this method directly.
	* @see     java.awt.Toolkit#createCheckboxMenuItem(java.awt.CheckboxMenuItem)
	* @see     java.awt.Component#getToolkit()
	*/
	@:overload @:public override public function addNotify() : Void;
	
	/**
	* Determines whether the state of this check box menu item
	* is "on" or "off."
	*
	* @return      the state of this check box menu item, where
	*                     <code>true</code> indicates "on" and
	*                     <code>false</code> indicates "off"
	* @see        #setState
	*/
	@:overload @:public public function getState() : Bool;
	
	/**
	* Sets this check box menu item to the specifed state.
	* The boolean value <code>true</code> indicates "on" while
	* <code>false</code> indicates "off."
	*
	* <p>Note that this method should be primarily used to
	* initialize the state of the check box menu item.
	* Programmatically setting the state of the check box
	* menu item will <i>not</i> trigger
	* an <code>ItemEvent</code>.  The only way to trigger an
	* <code>ItemEvent</code> is by user interaction.
	*
	* @param      b   <code>true</code> if the check box
	*             menu item is on, otherwise <code>false</code>
	* @see        #getState
	*/
	@:overload @:public @:synchronized public function setState(b : Bool) : Void;
	
	/**
	* Returns the an array (length 1) containing the checkbox menu item
	* label or null if the checkbox is not selected.
	* @see ItemSelectable
	*/
	@:overload @:public @:synchronized public function getSelectedObjects() : java.NativeArray<Dynamic>;
	
	/**
	* Adds the specified item listener to receive item events from
	* this check box menu item.  Item events are sent in response to user
	* actions, but not in response to calls to setState().
	* If l is null, no exception is thrown and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param         l the item listener
	* @see           #removeItemListener
	* @see           #getItemListeners
	* @see           #setState
	* @see           java.awt.event.ItemEvent
	* @see           java.awt.event.ItemListener
	* @since         JDK1.1
	*/
	@:require(java1) @:overload @:public @:synchronized public function addItemListener(l : java.awt.event.ItemListener) : Void;
	
	/**
	* Removes the specified item listener so that it no longer receives
	* item events from this check box menu item.
	* If l is null, no exception is thrown and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param         l the item listener
	* @see           #addItemListener
	* @see           #getItemListeners
	* @see           java.awt.event.ItemEvent
	* @see           java.awt.event.ItemListener
	* @since         JDK1.1
	*/
	@:require(java1) @:overload @:public @:synchronized public function removeItemListener(l : java.awt.event.ItemListener) : Void;
	
	/**
	* Returns an array of all the item listeners
	* registered on this checkbox menuitem.
	*
	* @return all of this checkbox menuitem's <code>ItemListener</code>s
	*         or an empty array if no item
	*         listeners are currently registered
	*
	* @see           #addItemListener
	* @see           #removeItemListener
	* @see           java.awt.event.ItemEvent
	* @see           java.awt.event.ItemListener
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:synchronized public function getItemListeners() : java.NativeArray<java.awt.event.ItemListener>;
	
	/**
	* Returns an array of all the objects currently registered
	* as <code><em>Foo</em>Listener</code>s
	* upon this <code>CheckboxMenuItem</code>.
	* <code><em>Foo</em>Listener</code>s are registered using the
	* <code>add<em>Foo</em>Listener</code> method.
	*
	* <p>
	* You can specify the <code>listenerType</code> argument
	* with a class literal, such as
	* <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a
	* <code>CheckboxMenuItem</code> <code>c</code>
	* for its item listeners with the following code:
	*
	* <pre>ItemListener[] ils = (ItemListener[])(c.getListeners(ItemListener.class));</pre>
	*
	* If no such listeners exist, this method returns an empty array.
	*
	* @param listenerType the type of listeners requested; this parameter
	*          should specify an interface that descends from
	*          <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s on this checkbox menuitem,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code>
	*          doesn't specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getItemListeners
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Processes events on this check box menu item.
	* If the event is an instance of <code>ItemEvent</code>,
	* this method invokes the <code>processItemEvent</code> method.
	* If the event is not an item event,
	* it invokes <code>processEvent</code> on the superclass.
	* <p>
	* Check box menu items currently support only item events.
	* <p>Note that if the event parameter is <code>null</code>
	* the behavior is unspecified and may result in an
	* exception.
	*
	* @param        e the event
	* @see          java.awt.event.ItemEvent
	* @see          #processItemEvent
	* @since        JDK1.1
	*/
	@:require(java1) @:overload @:protected override private function processEvent(e : java.awt.AWTEvent) : Void;
	
	/**
	* Processes item events occurring on this check box menu item by
	* dispatching them to any registered <code>ItemListener</code> objects.
	* <p>
	* This method is not called unless item events are
	* enabled for this menu item. Item events are enabled
	* when one of the following occurs:
	* <p><ul>
	* <li>An <code>ItemListener</code> object is registered
	* via <code>addItemListener</code>.
	* <li>Item events are enabled via <code>enableEvents</code>.
	* </ul>
	* <p>Note that if the event parameter is <code>null</code>
	* the behavior is unspecified and may result in an
	* exception.
	*
	* @param       e the item event
	* @see         java.awt.event.ItemEvent
	* @see         java.awt.event.ItemListener
	* @see         #addItemListener
	* @see         java.awt.MenuItem#enableEvents
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:protected private function processItemEvent(e : java.awt.event.ItemEvent) : Void;
	
	/**
	* Returns a string representing the state of this
	* <code>CheckBoxMenuItem</code>. This
	* method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return     the parameter string of this check box menu item
	*/
	@:overload @:public override public function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this CheckboxMenuItem.
	* For checkbox menu items, the AccessibleContext takes the
	* form of an AccessibleAWTCheckboxMenuItem.
	* A new AccessibleAWTCheckboxMenuItem is created if necessary.
	*
	* @return an AccessibleAWTCheckboxMenuItem that serves as the
	*         AccessibleContext of this CheckboxMenuItem
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* Inner class of CheckboxMenuItem used to provide default support for
* accessibility.  This class is not meant to be used directly by
* application developers, but is instead meant only to be
* subclassed by menu component developers.
* <p>
* This class implements accessibility support for the
* <code>CheckboxMenuItem</code> class.  It provides an implementation
* of the Java Accessibility API appropriate to checkbox menu item
* user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$CheckboxMenuItem$AccessibleAWTCheckboxMenuItem') extern class CheckboxMenuItem_AccessibleAWTCheckboxMenuItem extends java.awt.MenuItem.MenuItem_AccessibleAWTMenuItem implements javax.accessibility.AccessibleAction implements javax.accessibility.AccessibleValue
{
	/**
	* Get the AccessibleAction associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleAction interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload @:public override public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Get the AccessibleValue associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleValue interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload @:public override public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Returns the number of Actions available in this object.
	* If there is more than one, the first one is the "default"
	* action.
	*
	* @return the number of Actions in this object
	*/
	@:overload @:public override public function getAccessibleActionCount() : Int;
	
	/**
	* Return a description of the specified action of the object.
	*
	* @param i zero-based index of the actions
	*/
	@:overload @:public override public function getAccessibleActionDescription(i : Int) : String;
	
	/**
	* Perform the specified Action on the object
	*
	* @param i zero-based index of actions
	* @return true if the action was performed; otherwise false.
	*/
	@:overload @:public override public function doAccessibleAction(i : Int) : Bool;
	
	/**
	* Get the value of this object as a Number.  If the value has not been
	* set, the return value will be null.
	*
	* @return value of the object
	* @see #setCurrentAccessibleValue
	*/
	@:overload @:public override public function getCurrentAccessibleValue() : java.lang.Number;
	
	/**
	* Set the value of this object as a Number.
	*
	* @return true if the value was set; otherwise false
	* @see #getCurrentAccessibleValue
	*/
	@:overload @:public override public function setCurrentAccessibleValue(n : java.lang.Number) : Bool;
	
	/**
	* Get the minimum value of this object as a Number.
	*
	* @return Minimum value of the object; null if this object does not
	* have a minimum value
	* @see #getMaximumAccessibleValue
	*/
	@:overload @:public override public function getMinimumAccessibleValue() : java.lang.Number;
	
	/**
	* Get the maximum value of this object as a Number.
	*
	* @return Maximum value of the object; null if this object does not
	* have a maximum value
	* @see #getMinimumAccessibleValue
	*/
	@:overload @:public override public function getMaximumAccessibleValue() : java.lang.Number;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
