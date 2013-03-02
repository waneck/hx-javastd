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
* A check box is a graphical component that can be in either an
* "on" (<code>true</code>) or "off" (<code>false</code>) state.
* Clicking on a check box changes its state from
* "on" to "off," or from "off" to "on."
* <p>
* The following code example creates a set of check boxes in
* a grid layout:
* <p>
* <hr><blockquote><pre>
* setLayout(new GridLayout(3, 1));
* add(new Checkbox("one", null, true));
* add(new Checkbox("two"));
* add(new Checkbox("three"));
* </pre></blockquote><hr>
* <p>
* This image depicts the check boxes and grid layout
* created by this code example:
* <p>
* <img src="doc-files/Checkbox-1.gif" alt="The following context describes the graphic."
* ALIGN=center HSPACE=10 VSPACE=7>
* <p>
* The button labeled <code>one</code> is in the "on" state, and the
* other two are in the "off" state. In this example, which uses the
* <code>GridLayout</code> class, the states of the three check
* boxes are set independently.
* <p>
* Alternatively, several check boxes can be grouped together under
* the control of a single object, using the
* <code>CheckboxGroup</code> class.
* In a check box group, at most one button can be in the "on"
* state at any given time. Clicking on a check box to turn it on
* forces any other check box in the same group that is on
* into the "off" state.
*
* @author      Sami Shaio
* @see         java.awt.GridLayout
* @see         java.awt.CheckboxGroup
* @since       JDK1.0
*/
@:require(java0) extern class Checkbox extends java.awt.Component implements java.awt.ItemSelectable implements javax.accessibility.Accessible
{
	/**
	* Creates a check box with an empty string for its label.
	* The state of this check box is set to "off," and it is not
	* part of any check box group.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a check box with the specified label.  The state
	* of this check box is set to "off," and it is not part of
	* any check box group.
	*
	* @param     label   a string label for this check box,
	*                        or <code>null</code> for no label.
	* @exception HeadlessException if
	*      <code>GraphicsEnvironment.isHeadless</code>
	*      returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(label : String) : Void;
	
	/**
	* Creates a check box with the specified label
	* and sets the specified state.
	* This check box is not part of any check box group.
	*
	* @param     label   a string label for this check box,
	*                        or <code>null</code> for no label
	* @param     state    the initial state of this check box
	* @exception HeadlessException if
	*     <code>GraphicsEnvironment.isHeadless</code>
	*     returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(label : String, state : Bool) : Void;
	
	/**
	* Constructs a Checkbox with the specified label, set to the
	* specified state, and in the specified check box group.
	*
	* @param     label   a string label for this check box,
	*                        or <code>null</code> for no label.
	* @param     state   the initial state of this check box.
	* @param     group   a check box group for this check box,
	*                           or <code>null</code> for no group.
	* @exception HeadlessException if
	*     <code>GraphicsEnvironment.isHeadless</code>
	*     returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function new(label : String, state : Bool, group : java.awt.CheckboxGroup) : Void;
	
	/**
	* Creates a check box with the specified label, in the specified
	* check box group, and set to the specified state.
	*
	* @param     label   a string label for this check box,
	*                        or <code>null</code> for no label.
	* @param     group   a check box group for this check box,
	*                           or <code>null</code> for no group.
	* @param     state   the initial state of this check box.
	* @exception HeadlessException if
	*    <code>GraphicsEnvironment.isHeadless</code>
	*    returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function new(label : String, group : java.awt.CheckboxGroup, state : Bool) : Void;
	
	/**
	* Creates the peer of the Checkbox. The peer allows you to change the
	* look of the Checkbox without changing its functionality.
	*
	* @see     java.awt.Toolkit#createCheckbox(java.awt.Checkbox)
	* @see     java.awt.Component#getToolkit()
	*/
	@:overload public function addNotify() : Void;
	
	/**
	* Gets the label of this check box.
	*
	* @return   the label of this check box, or <code>null</code>
	*                  if this check box has no label.
	* @see      #setLabel(String)
	*/
	@:overload public function getLabel() : String;
	
	/**
	* Sets this check box's label to be the string argument.
	*
	* @param    label   a string to set as the new label, or
	*                        <code>null</code> for no label.
	* @see      #getLabel
	*/
	@:overload public function setLabel(label : String) : Void;
	
	/**
	* Determines whether this check box is in the "on" or "off" state.
	* The boolean value <code>true</code> indicates the "on" state,
	* and <code>false</code> indicates the "off" state.
	*
	* @return    the state of this check box, as a boolean value
	* @see       #setState
	*/
	@:overload public function getState() : Bool;
	
	/**
	* Sets the state of this check box to the specified state.
	* The boolean value <code>true</code> indicates the "on" state,
	* and <code>false</code> indicates the "off" state.
	*
	* <p>Note that this method should be primarily used to
	* initialize the state of the checkbox.  Programmatically
	* setting the state of the checkbox will <i>not</i> trigger
	* an <code>ItemEvent</code>.  The only way to trigger an
	* <code>ItemEvent</code> is by user interaction.
	*
	* @param     state   the boolean state of the check box
	* @see       #getState
	*/
	@:overload public function setState(state : Bool) : Void;
	
	/**
	* Returns an array (length 1) containing the checkbox
	* label or null if the checkbox is not selected.
	* @see ItemSelectable
	*/
	@:overload public function getSelectedObjects() : java.NativeArray<Dynamic>;
	
	/**
	* Determines this check box's group.
	* @return     this check box's group, or <code>null</code>
	*               if the check box is not part of a check box group.
	* @see        #setCheckboxGroup(CheckboxGroup)
	*/
	@:overload public function getCheckboxGroup() : java.awt.CheckboxGroup;
	
	/**
	* Sets this check box's group to the specified check box group.
	* If this check box is already in a different check box group,
	* it is first taken out of that group.
	* <p>
	* If the state of this check box is <code>true</code> and the new
	* group already has a check box selected, this check box's state
	* is changed to <code>false</code>.  If the state of this check
	* box is <code>true</code> and the new group has no check box
	* selected, this check box becomes the selected checkbox for
	* the new group and its state is <code>true</code>.
	*
	* @param     g   the new check box group, or <code>null</code>
	*                to remove this check box from any check box group
	* @see       #getCheckboxGroup
	*/
	@:overload public function setCheckboxGroup(g : java.awt.CheckboxGroup) : Void;
	
	/**
	* Adds the specified item listener to receive item events from
	* this check box.  Item events are sent to listeners in response
	* to user input, but not in response to calls to setState().
	* If l is null, no exception is thrown and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param         l    the item listener
	* @see           #removeItemListener
	* @see           #getItemListeners
	* @see           #setState
	* @see           java.awt.event.ItemEvent
	* @see           java.awt.event.ItemListener
	* @since         JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function addItemListener(l : java.awt.event.ItemListener) : Void;
	
	/**
	* Removes the specified item listener so that the item listener
	* no longer receives item events from this check box.
	* If l is null, no exception is thrown and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
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
	* registered on this checkbox.
	*
	* @return all of this checkbox's <code>ItemListener</code>s
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
	* upon this <code>Checkbox</code>.
	* <code><em>Foo</em>Listener</code>s are registered using the
	* <code>add<em>Foo</em>Listener</code> method.
	*
	* <p>
	* You can specify the <code>listenerType</code> argument
	* with a class literal, such as
	* <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a
	* <code>Checkbox</code> <code>c</code>
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
	*          <code><em>Foo</em>Listener</code>s on this checkbox,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code>
	*          doesn't specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getItemListeners
	* @since 1.3
	*/
	@:require(java3) @:overload public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Processes events on this check box.
	* If the event is an instance of <code>ItemEvent</code>,
	* this method invokes the <code>processItemEvent</code> method.
	* Otherwise, it calls its superclass's <code>processEvent</code> method.
	* <p>Note that if the event parameter is <code>null</code>
	* the behavior is unspecified and may result in an
	* exception.
	*
	* @param         e the event
	* @see           java.awt.event.ItemEvent
	* @see           #processItemEvent
	* @since         JDK1.1
	*/
	@:require(java1) @:overload private function processEvent(e : java.awt.AWTEvent) : Void;
	
	/**
	* Processes item events occurring on this check box by
	* dispatching them to any registered
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
	* @see         #addItemListener
	* @see         java.awt.Component#enableEvents
	* @since       JDK1.1
	*/
	@:require(java1) @:overload private function processItemEvent(e : java.awt.event.ItemEvent) : Void;
	
	/**
	* Returns a string representing the state of this <code>Checkbox</code>.
	* This method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return    the parameter string of this check box
	*/
	@:overload private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this Checkbox.
	* For checkboxes, the AccessibleContext takes the form of an
	* AccessibleAWTCheckbox.
	* A new AccessibleAWTCheckbox is created if necessary.
	*
	* @return an AccessibleAWTCheckbox that serves as the
	*         AccessibleContext of this Checkbox
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>Checkbox</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to checkbox user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$Checkbox$AccessibleAWTCheckbox') extern class Checkbox_AccessibleAWTCheckbox extends java.awt.Component.Component_AccessibleAWTComponent implements java.awt.event.ItemListener implements javax.accessibility.AccessibleAction implements javax.accessibility.AccessibleValue
{
	@:overload public function new() : Void;
	
	/**
	* Fire accessible property change events when the state of the
	* toggle button changes.
	*/
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	/**
	* Get the AccessibleAction associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleAction interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Get the AccessibleValue associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleValue interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Returns the number of Actions available in this object.
	* If there is more than one, the first one is the "default"
	* action.
	*
	* @return the number of Actions in this object
	*/
	@:overload public function getAccessibleActionCount() : Int;
	
	/**
	* Return a description of the specified action of the object.
	*
	* @param i zero-based index of the actions
	*/
	@:overload public function getAccessibleActionDescription(i : Int) : String;
	
	/**
	* Perform the specified Action on the object
	*
	* @param i zero-based index of actions
	* @return true if the the action was performed; else false.
	*/
	@:overload public function doAccessibleAction(i : Int) : Bool;
	
	/**
	* Get the value of this object as a Number.  If the value has not been
	* set, the return value will be null.
	*
	* @return value of the object
	* @see #setCurrentAccessibleValue
	*/
	@:overload public function getCurrentAccessibleValue() : java.lang.Number;
	
	/**
	* Set the value of this object as a Number.
	*
	* @return True if the value was set; else False
	* @see #getCurrentAccessibleValue
	*/
	@:overload public function setCurrentAccessibleValue(n : java.lang.Number) : Bool;
	
	/**
	* Get the minimum value of this object as a Number.
	*
	* @return Minimum value of the object; null if this object does not
	* have a minimum value
	* @see #getMaximumAccessibleValue
	*/
	@:overload public function getMinimumAccessibleValue() : java.lang.Number;
	
	/**
	* Get the maximum value of this object as a Number.
	*
	* @return Maximum value of the object; null if this object does not
	* have a maximum value
	* @see #getMinimumAccessibleValue
	*/
	@:overload public function getMaximumAccessibleValue() : java.lang.Number;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of
	* the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Get the state set of this object.
	*
	* @return an instance of AccessibleState containing the current state
	* of the object
	* @see AccessibleState
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	
}
