package java.awt;
/*
* Copyright (c) 1995, 2008, Oracle and/or its affiliates. All rights reserved.
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
* The <code>Choice</code> class presents a pop-up menu of choices.
* The current choice is displayed as the title of the menu.
* <p>
* The following code example produces a pop-up menu:
* <p>
* <hr><blockquote><pre>
* Choice ColorChooser = new Choice();
* ColorChooser.add("Green");
* ColorChooser.add("Red");
* ColorChooser.add("Blue");
* </pre></blockquote><hr>
* <p>
* After this choice menu has been added to a panel,
* it appears as follows in its normal state:
* <p>
* <img src="doc-files/Choice-1.gif" alt="The following text describes the graphic"
* ALIGN=center HSPACE=10 VSPACE=7>
* <p>
* In the picture, <code>"Green"</code> is the current choice.
* Pushing the mouse button down on the object causes a menu to
* appear with the current choice highlighted.
* <p>
* Some native platforms do not support arbitrary resizing of
* <code>Choice</code> components and the behavior of
* <code>setSize()/getSize()</code> is bound by
* such limitations.
* Native GUI <code>Choice</code> components' size are often bound by such
* attributes as font size and length of items contained within
* the <code>Choice</code>.
* <p>
* @author      Sami Shaio
* @author      Arthur van Hoff
* @since       JDK1.0
*/
@:require(java0) extern class Choice extends java.awt.Component implements java.awt.ItemSelectable implements javax.accessibility.Accessible
{
	/**
	* Creates a new choice menu. The menu initially has no items in it.
	* <p>
	* By default, the first item added to the choice menu becomes the
	* selected item, until a different selection is made by the user
	* by calling one of the <code>select</code> methods.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true
	* @see       java.awt.GraphicsEnvironment#isHeadless
	* @see       #select(int)
	* @see       #select(java.lang.String)
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates the <code>Choice</code>'s peer.  This peer allows us
	* to change the look
	* of the <code>Choice</code> without changing its functionality.
	* @see     java.awt.Toolkit#createChoice(java.awt.Choice)
	* @see     java.awt.Component#getToolkit()
	*/
	@:overload override public function addNotify() : Void;
	
	/**
	* Returns the number of items in this <code>Choice</code> menu.
	* @return the number of items in this <code>Choice</code> menu
	* @see     #getItem
	* @since   JDK1.1
	*/
	@:require(java1) @:overload public function getItemCount() : Int;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getItemCount()</code>.
	*/
	@:overload public function countItems() : Int;
	
	/**
	* Gets the string at the specified index in this
	* <code>Choice</code> menu.
	* @param      index the index at which to begin
	* @see        #getItemCount
	*/
	@:overload public function getItem(index : Int) : String;
	
	/**
	* Adds an item to this <code>Choice</code> menu.
	* @param      item    the item to be added
	* @exception  NullPointerException   if the item's value is
	*                  <code>null</code>
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function add(item : String) : Void;
	
	/**
	* Obsolete as of Java 2 platform v1.1.  Please use the
	* <code>add</code> method instead.
	* <p>
	* Adds an item to this <code>Choice</code> menu.
	* @param item the item to be added
	* @exception NullPointerException if the item's value is equal to
	*          <code>null</code>
	*/
	@:overload public function addItem(item : String) : Void;
	
	/**
	* Inserts the item into this choice at the specified position.
	* Existing items at an index greater than or equal to
	* <code>index</code> are shifted up by one to accommodate
	* the new item.  If <code>index</code> is greater than or
	* equal to the number of items in this choice,
	* <code>item</code> is added to the end of this choice.
	* <p>
	* If the item is the first one being added to the choice,
	* then the item becomes selected.  Otherwise, if the
	* selected item was one of the items shifted, the first
	* item in the choice becomes the selected item.  If the
	* selected item was no among those shifted, it remains
	* the selected item.
	* @param item the non-<code>null</code> item to be inserted
	* @param index the position at which the item should be inserted
	* @exception IllegalArgumentException if index is less than 0
	*/
	@:overload public function insert(item : String, index : Int) : Void;
	
	/**
	* Removes the first occurrence of <code>item</code>
	* from the <code>Choice</code> menu.  If the item
	* being removed is the currently selected item,
	* then the first item in the choice becomes the
	* selected item.  Otherwise, the currently selected
	* item remains selected (and the selected index is
	* updated accordingly).
	* @param      item  the item to remove from this <code>Choice</code> menu
	* @exception  IllegalArgumentException  if the item doesn't
	*                     exist in the choice menu
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function remove(item : String) : Void;
	
	/**
	* Removes an item from the choice menu
	* at the specified position.  If the item
	* being removed is the currently selected item,
	* then the first item in the choice becomes the
	* selected item.  Otherwise, the currently selected
	* item remains selected (and the selected index is
	* updated accordingly).
	* @param      position the position of the item
	* @throws IndexOutOfBoundsException if the specified
	*          position is out of bounds
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function remove(position : Int) : Void;
	
	/**
	* Removes all items from the choice menu.
	* @see       #remove
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function removeAll() : Void;
	
	/**
	* Gets a representation of the current choice as a string.
	* @return    a string representation of the currently
	*                     selected item in this choice menu
	* @see       #getSelectedIndex
	*/
	@:overload @:synchronized public function getSelectedItem() : String;
	
	/**
	* Returns an array (length 1) containing the currently selected
	* item.  If this choice has no items, returns <code>null</code>.
	* @see ItemSelectable
	*/
	@:overload @:synchronized public function getSelectedObjects() : java.NativeArray<Dynamic>;
	
	/**
	* Returns the index of the currently selected item.
	* If nothing is selected, returns -1.
	*
	* @return the index of the currently selected item, or -1 if nothing
	*  is currently selected
	* @see #getSelectedItem
	*/
	@:overload public function getSelectedIndex() : Int;
	
	/**
	* Sets the selected item in this <code>Choice</code> menu to be the
	* item at the specified position.
	*
	* <p>Note that this method should be primarily used to
	* initially select an item in this component.
	* Programmatically calling this method will <i>not</i> trigger
	* an <code>ItemEvent</code>.  The only way to trigger an
	* <code>ItemEvent</code> is by user interaction.
	*
	* @param      pos      the positon of the selected item
	* @exception  IllegalArgumentException if the specified
	*                            position is greater than the
	*                            number of items or less than zero
	* @see        #getSelectedItem
	* @see        #getSelectedIndex
	*/
	@:overload @:synchronized public function select(pos : Int) : Void;
	
	/**
	* Sets the selected item in this <code>Choice</code> menu
	* to be the item whose name is equal to the specified string.
	* If more than one item matches (is equal to) the specified string,
	* the one with the smallest index is selected.
	*
	* <p>Note that this method should be primarily used to
	* initially select an item in this component.
	* Programmatically calling this method will <i>not</i> trigger
	* an <code>ItemEvent</code>.  The only way to trigger an
	* <code>ItemEvent</code> is by user interaction.
	*
	* @param       str     the specified string
	* @see         #getSelectedItem
	* @see         #getSelectedIndex
	*/
	@:overload @:synchronized public function select(str : String) : Void;
	
	/**
	* Adds the specified item listener to receive item events from
	* this <code>Choice</code> menu.  Item events are sent in response
	* to user input, but not in response to calls to <code>select</code>.
	* If l is <code>null</code>, no exception is thrown and no action
	* is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	* @param         l    the item listener
	* @see           #removeItemListener
	* @see           #getItemListeners
	* @see           #select
	* @see           java.awt.event.ItemEvent
	* @see           java.awt.event.ItemListener
	* @since         JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function addItemListener(l : java.awt.event.ItemListener) : Void;
	
	/**
	* Removes the specified item listener so that it no longer receives
	* item events from this <code>Choice</code> menu.
	* If l is <code>null</code>, no exception is thrown and no
	* action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	* @param         l    the item listener
	* @see           #addItemListener
	* @see           #getItemListeners
	* @see           java.awt.event.ItemEvent
	* @see           java.awt.event.ItemListener
	* @since         JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function removeItemListener(l : java.awt.event.ItemListener) : Void;
	
	/**
	* Returns an array of all the item listeners
	* registered on this choice.
	*
	* @return all of this choice's <code>ItemListener</code>s
	*         or an empty array if no item
	*         listeners are currently registered
	*
	* @see           #addItemListener
	* @see           #removeItemListener
	* @see           java.awt.event.ItemEvent
	* @see           java.awt.event.ItemListener
	* @since 1.4
	*/
	@:require(java4) @:overload @:synchronized public function getItemListeners() : java.NativeArray<java.awt.event.ItemListener>;
	
	/**
	* Returns an array of all the objects currently registered
	* as <code><em>Foo</em>Listener</code>s
	* upon this <code>Choice</code>.
	* <code><em>Foo</em>Listener</code>s are registered using the
	* <code>add<em>Foo</em>Listener</code> method.
	*
	* <p>
	* You can specify the <code>listenerType</code> argument
	* with a class literal, such as
	* <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a
	* <code>Choice</code> <code>c</code>
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
	*          <code><em>Foo</em>Listener</code>s on this choice,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code>
	*          doesn't specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getItemListeners
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Processes events on this choice. If the event is an
	* instance of <code>ItemEvent</code>, it invokes the
	* <code>processItemEvent</code> method. Otherwise, it calls its
	* superclass's <code>processEvent</code> method.
	* <p>Note that if the event parameter is <code>null</code>
	* the behavior is unspecified and may result in an
	* exception.
	*
	* @param      e the event
	* @see        java.awt.event.ItemEvent
	* @see        #processItemEvent
	* @since      JDK1.1
	*/
	@:require(java1) @:overload override private function processEvent(e : java.awt.AWTEvent) : Void;
	
	/**
	* Processes item events occurring on this <code>Choice</code>
	* menu by dispatching them to any registered
	* <code>ItemListener</code> objects.
	* <p>
	* This method is not called unless item events are
	* enabled for this component. Item events are enabled
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
	* @see         #addItemListener(ItemListener)
	* @see         java.awt.Component#enableEvents
	* @since       JDK1.1
	*/
	@:require(java1) @:overload private function processItemEvent(e : java.awt.event.ItemEvent) : Void;
	
	/**
	* Returns a string representing the state of this <code>Choice</code>
	* menu. This method is intended to be used only for debugging purposes,
	* and the content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return    the parameter string of this <code>Choice</code> menu
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with this
	* <code>Choice</code>. For <code>Choice</code> components,
	* the <code>AccessibleContext</code> takes the form of an
	* <code>AccessibleAWTChoice</code>. A new <code>AccessibleAWTChoice</code>
	* instance is created if necessary.
	*
	* @return an <code>AccessibleAWTChoice</code> that serves as the
	*         <code>AccessibleContext</code> of this <code>Choice</code>
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>Choice</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to choice user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$Choice$AccessibleAWTChoice') extern class Choice_AccessibleAWTChoice extends java.awt.Component.Component_AccessibleAWTComponent implements javax.accessibility.AccessibleAction
{
	@:overload public function new() : Void;
	
	/**
	* Get the AccessibleAction associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleAction interface on behalf of itself.
	*
	* @return this object
	* @see AccessibleAction
	*/
	@:overload override public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Returns the number of accessible actions available in this object
	* If there are more than one, the first one is considered the "default"
	* action of the object.
	*
	* @return the zero-based number of Actions in this object
	*/
	@:overload public function getAccessibleActionCount() : Int;
	
	/**
	* Returns a description of the specified action of the object.
	*
	* @param i zero-based index of the actions
	* @return a String description of the action
	* @see #getAccessibleActionCount
	*/
	@:overload public function getAccessibleActionDescription(i : Int) : String;
	
	/**
	* Perform the specified Action on the object
	*
	* @param i zero-based index of actions
	* @return true if the action was performed; otherwise false.
	* @see #getAccessibleActionCount
	*/
	@:overload public function doAccessibleAction(i : Int) : Bool;
	
	
}
