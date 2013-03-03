package java.awt;
/*
* Copyright (c) 1995, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class MenuItem extends java.awt.MenuComponent implements javax.accessibility.Accessible
{
	/**
	* Constructs a new MenuItem with an empty label and no keyboard
	* shortcut.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since    JDK1.1
	*/
	@:require(java1) @:overload @:public public function new() : Void;
	
	/**
	* Constructs a new MenuItem with the specified label
	* and no keyboard shortcut. Note that use of "-" in
	* a label is reserved to indicate a separator between
	* menu items. By default, all menu items except for
	* separators are enabled.
	* @param       label the label for this menu item.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since       JDK1.0
	*/
	@:require(java0) @:overload @:public public function new(label : String) : Void;
	
	/**
	* Create a menu item with an associated keyboard shortcut.
	* Note that use of "-" in a label is reserved to indicate
	* a separator between menu items. By default, all menu
	* items except for separators are enabled.
	* @param       label the label for this menu item.
	* @param       s the instance of <code>MenuShortcut</code>
	*                       associated with this menu item.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:public public function new(label : String, s : java.awt.MenuShortcut) : Void;
	
	/**
	* Creates the menu item's peer.  The peer allows us to modify the
	* appearance of the menu item without changing its functionality.
	*/
	@:overload @:public public function addNotify() : Void;
	
	/**
	* Gets the label for this menu item.
	* @return  the label of this menu item, or <code>null</code>
	if this menu item has no label.
	* @see     java.awt.MenuItem#setLabel
	* @since   JDK1.0
	*/
	@:require(java0) @:overload @:public public function getLabel() : String;
	
	/**
	* Sets the label for this menu item to the specified label.
	* @param     label   the new label, or <code>null</code> for no label.
	* @see       java.awt.MenuItem#getLabel
	* @since     JDK1.0
	*/
	@:require(java0) @:overload @:public @:synchronized public function setLabel(label : String) : Void;
	
	/**
	* Checks whether this menu item is enabled.
	* @see        java.awt.MenuItem#setEnabled
	* @since      JDK1.0
	*/
	@:require(java0) @:overload @:public public function isEnabled() : Bool;
	
	/**
	* Sets whether or not this menu item can be chosen.
	* @param      b  if <code>true</code>, enables this menu item;
	*                       if <code>false</code>, disables it.
	* @see        java.awt.MenuItem#isEnabled
	* @since      JDK1.1
	*/
	@:require(java1) @:overload @:public @:synchronized public function setEnabled(b : Bool) : Void;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>setEnabled(boolean)</code>.
	*/
	@:overload @:public @:synchronized public function enable() : Void;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>setEnabled(boolean)</code>.
	*/
	@:overload @:public public function enable(b : Bool) : Void;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>setEnabled(boolean)</code>.
	*/
	@:overload @:public @:synchronized public function disable() : Void;
	
	/**
	* Get the <code>MenuShortcut</code> object associated with this
	* menu item,
	* @return      the menu shortcut associated with this menu item,
	*                   or <code>null</code> if none has been specified.
	* @see         java.awt.MenuItem#setShortcut
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:public public function getShortcut() : java.awt.MenuShortcut;
	
	/**
	* Set the <code>MenuShortcut</code> object associated with this
	* menu item. If a menu shortcut is already associated with
	* this menu item, it is replaced.
	* @param       s  the menu shortcut to associate
	*                           with this menu item.
	* @see         java.awt.MenuItem#getShortcut
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:public public function setShortcut(s : java.awt.MenuShortcut) : Void;
	
	/**
	* Delete any <code>MenuShortcut</code> object associated
	* with this menu item.
	* @since      JDK1.1
	*/
	@:require(java1) @:overload @:public public function deleteShortcut() : Void;
	
	/**
	* Enables event delivery to this menu item for events
	* to be defined by the specified event mask parameter
	* <p>
	* Since event types are automatically enabled when a listener for
	* that type is added to the menu item, this method only needs
	* to be invoked by subclasses of <code>MenuItem</code> which desire to
	* have the specified event types delivered to <code>processEvent</code>
	* regardless of whether a listener is registered.
	*
	* @param       eventsToEnable the event mask defining the event types
	* @see         java.awt.MenuItem#processEvent
	* @see         java.awt.MenuItem#disableEvents
	* @see         java.awt.Component#enableEvents
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:protected @:final private function enableEvents(eventsToEnable : haxe.Int64) : Void;
	
	/**
	* Disables event delivery to this menu item for events
	* defined by the specified event mask parameter.
	*
	* @param       eventsToDisable the event mask defining the event types
	* @see         java.awt.MenuItem#processEvent
	* @see         java.awt.MenuItem#enableEvents
	* @see         java.awt.Component#disableEvents
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:protected @:final private function disableEvents(eventsToDisable : haxe.Int64) : Void;
	
	/**
	* Sets the command name of the action event that is fired
	* by this menu item.
	* <p>
	* By default, the action command is set to the label of
	* the menu item.
	* @param       command   the action command to be set
	*                                for this menu item.
	* @see         java.awt.MenuItem#getActionCommand
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:public public function setActionCommand(command : String) : Void;
	
	/**
	* Gets the command name of the action event that is fired
	* by this menu item.
	* @see         java.awt.MenuItem#setActionCommand
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:public public function getActionCommand() : String;
	
	/**
	* Adds the specified action listener to receive action events
	* from this menu item.
	* If l is null, no exception is thrown and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param      l the action listener.
	* @see        #removeActionListener
	* @see        #getActionListeners
	* @see        java.awt.event.ActionEvent
	* @see        java.awt.event.ActionListener
	* @since      JDK1.1
	*/
	@:require(java1) @:overload @:public @:synchronized public function addActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Removes the specified action listener so it no longer receives
	* action events from this menu item.
	* If l is null, no exception is thrown and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param      l the action listener.
	* @see        #addActionListener
	* @see        #getActionListeners
	* @see        java.awt.event.ActionEvent
	* @see        java.awt.event.ActionListener
	* @since      JDK1.1
	*/
	@:require(java1) @:overload @:public @:synchronized public function removeActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Returns an array of all the action listeners
	* registered on this menu item.
	*
	* @return all of this menu item's <code>ActionListener</code>s
	*         or an empty array if no action
	*         listeners are currently registered
	*
	* @see        #addActionListener
	* @see        #removeActionListener
	* @see        java.awt.event.ActionEvent
	* @see        java.awt.event.ActionListener
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:synchronized public function getActionListeners() : java.NativeArray<java.awt.event.ActionListener>;
	
	/**
	* Returns an array of all the objects currently registered
	* as <code><em>Foo</em>Listener</code>s
	* upon this <code>MenuItem</code>.
	* <code><em>Foo</em>Listener</code>s are registered using the
	* <code>add<em>Foo</em>Listener</code> method.
	*
	* <p>
	* You can specify the <code>listenerType</code> argument
	* with a class literal, such as
	* <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a
	* <code>MenuItem</code> <code>m</code>
	* for its action listeners with the following code:
	*
	* <pre>ActionListener[] als = (ActionListener[])(m.getListeners(ActionListener.class));</pre>
	*
	* If no such listeners exist, this method returns an empty array.
	*
	* @param listenerType the type of listeners requested; this parameter
	*          should specify an interface that descends from
	*          <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s on this menu item,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code>
	*          doesn't specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getActionListeners
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Processes events on this menu item. If the event is an
	* instance of <code>ActionEvent</code>, it invokes
	* <code>processActionEvent</code>, another method
	* defined by <code>MenuItem</code>.
	* <p>
	* Currently, menu items only support action events.
	* <p>Note that if the event parameter is <code>null</code>
	* the behavior is unspecified and may result in an
	* exception.
	*
	* @param       e the event
	* @see         java.awt.MenuItem#processActionEvent
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:protected override private function processEvent(e : java.awt.AWTEvent) : Void;
	
	/**
	* Processes action events occurring on this menu item,
	* by dispatching them to any registered
	* <code>ActionListener</code> objects.
	* This method is not called unless action events are
	* enabled for this component. Action events are enabled
	* when one of the following occurs:
	* <p><ul>
	* <li>An <code>ActionListener</code> object is registered
	* via <code>addActionListener</code>.
	* <li>Action events are enabled via <code>enableEvents</code>.
	* </ul>
	* <p>Note that if the event parameter is <code>null</code>
	* the behavior is unspecified and may result in an
	* exception.
	*
	* @param       e the action event
	* @see         java.awt.event.ActionEvent
	* @see         java.awt.event.ActionListener
	* @see         java.awt.MenuItem#enableEvents
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:protected private function processActionEvent(e : java.awt.event.ActionEvent) : Void;
	
	/**
	* Returns a string representing the state of this <code>MenuItem</code>.
	* This method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return the parameter string of this menu item
	*/
	@:overload @:public override public function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this MenuItem.
	* For menu items, the AccessibleContext takes the form of an
	* AccessibleAWTMenuItem.
	* A new AccessibleAWTMenuItem instance is created if necessary.
	*
	* @return an AccessibleAWTMenuItem that serves as the
	*         AccessibleContext of this MenuItem
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* Inner class of MenuItem used to provide default support for
* accessibility.  This class is not meant to be used directly by
* application developers, but is instead meant only to be
* subclassed by menu component developers.
* <p>
* This class implements accessibility support for the
* <code>MenuItem</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to menu item user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$MenuItem$AccessibleAWTMenuItem') extern class MenuItem_AccessibleAWTMenuItem extends java.awt.MenuComponent.MenuComponent_AccessibleAWTMenuComponent implements javax.accessibility.AccessibleAction implements javax.accessibility.AccessibleValue
{
	/**
	* Get the accessible name of this object.
	*
	* @return the localized name of the object -- can be null if this
	* object does not have a name
	*/
	@:overload @:public override public function getAccessibleName() : String;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
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
	* Returns the number of Actions available in this object.  The
	* default behavior of a menu item is to have one action.
	*
	* @return 1, the number of Actions in this object
	*/
	@:overload @:public public function getAccessibleActionCount() : Int;
	
	/**
	* Return a description of the specified action of the object.
	*
	* @param i zero-based index of the actions
	*/
	@:overload @:public public function getAccessibleActionDescription(i : Int) : String;
	
	/**
	* Perform the specified Action on the object
	*
	* @param i zero-based index of actions
	* @return true if the action was performed; otherwise false.
	*/
	@:overload @:public public function doAccessibleAction(i : Int) : Bool;
	
	/**
	* Get the value of this object as a Number.
	*
	* @return An Integer of 0 if this isn't selected or an Integer of 1 if
	* this is selected.
	* @see javax.swing.AbstractButton#isSelected()
	*/
	@:overload @:public public function getCurrentAccessibleValue() : java.lang.Number;
	
	/**
	* Set the value of this object as a Number.
	*
	* @return True if the value was set.
	*/
	@:overload @:public public function setCurrentAccessibleValue(n : java.lang.Number) : Bool;
	
	/**
	* Get the minimum value of this object as a Number.
	*
	* @return An Integer of 0.
	*/
	@:overload @:public public function getMinimumAccessibleValue() : java.lang.Number;
	
	/**
	* Get the maximum value of this object as a Number.
	*
	* @return An Integer of 0.
	*/
	@:overload @:public public function getMaximumAccessibleValue() : java.lang.Number;
	
	
}
