package java.awt;
/*
* Copyright (c) 1995, 2007, Oracle and/or its affiliates. All rights reserved.
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
* The <code>List</code> component presents the user with a
* scrolling list of text items. The list can be set up so that
* the user can choose either one item or multiple items.
* <p>
* For example, the code&nbsp;.&nbsp;.&nbsp;.
* <p>
* <hr><blockquote><pre>
* List lst = new List(4, false);
* lst.add("Mercury");
* lst.add("Venus");
* lst.add("Earth");
* lst.add("JavaSoft");
* lst.add("Mars");
* lst.add("Jupiter");
* lst.add("Saturn");
* lst.add("Uranus");
* lst.add("Neptune");
* lst.add("Pluto");
* cnt.add(lst);
* </pre></blockquote><hr>
* <p>
* where <code>cnt</code> is a container, produces the following
* scrolling list:
* <p>
* <img src="doc-files/List-1.gif"
* alt="Shows a list containing: Venus, Earth, JavaSoft, and Mars. Javasoft is selected." ALIGN=center HSPACE=10 VSPACE=7>
* <p>
* If the List allows multiple selections, then clicking on
* an item that is already selected deselects it. In the preceding
* example, only one item from the scrolling list can be selected
* at a time, since the second argument when creating the new scrolling
* list is <code>false</code>. If the List does not allow multiple
* selections, selecting an item causes any other selected item
* to be deselected.
* <p>
* Note that the list in the example shown was created with four visible
* rows.  Once the list has been created, the number of visible rows
* cannot be changed.  A default <code>List</code> is created with
* four rows, so that <code>lst = new List()</code> is equivalent to
* <code>list = new List(4, false)</code>.
* <p>
* Beginning with Java&nbsp;1.1, the Abstract Window Toolkit
* sends the <code>List</code> object all mouse, keyboard, and focus events
* that occur over it. (The old AWT event model is being maintained
* only for backwards compatibility, and its use is discouraged.)
* <p>
* When an item is selected or deselected by the user, AWT sends an instance
* of <code>ItemEvent</code> to the list.
* When the user double-clicks on an item in a scrolling list,
* AWT sends an instance of <code>ActionEvent</code> to the
* list following the item event. AWT also generates an action event
* when the user presses the return key while an item in the
* list is selected.
* <p>
* If an application wants to perform some action based on an item
* in this list being selected or activated by the user, it should implement
* <code>ItemListener</code> or <code>ActionListener</code>
* as appropriate and register the new listener to receive
* events from this list.
* <p>
* For multiple-selection scrolling lists, it is considered a better
* user interface to use an external gesture (such as clicking on a
* button) to trigger the action.
* @author      Sami Shaio
* @see         java.awt.event.ItemEvent
* @see         java.awt.event.ItemListener
* @see         java.awt.event.ActionEvent
* @see         java.awt.event.ActionListener
* @since       JDK1.0
*/
@:require(java0) extern class List extends java.awt.Component implements java.awt.ItemSelectable implements javax.accessibility.Accessible
{
	/**
	* Creates a new scrolling list.
	* By default, there are four visible lines and multiple selections are
	* not allowed.  Note that this is a convenience method for
	* <code>List(0, false)</code>.  Also note that the number of visible
	* lines in the list cannot be changed after it has been created.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new scrolling list initialized with the specified
	* number of visible lines. By default, multiple selections are
	* not allowed.  Note that this is a convenience method for
	* <code>List(rows, false)</code>.  Also note that the number
	* of visible rows in the list cannot be changed after it has
	* been created.
	* @param       rows the number of items to show.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function new(rows : Int) : Void;
	
	/**
	* Creates a new scrolling list initialized to display the specified
	* number of rows. Note that if zero rows are specified, then
	* the list will be created with a default of four rows.
	* Also note that the number of visible rows in the list cannot
	* be changed after it has been created.
	* If the value of <code>multipleMode</code> is
	* <code>true</code>, then the user can select multiple items from
	* the list. If it is <code>false</code>, only one item at a time
	* can be selected.
	* @param       rows   the number of items to show.
	* @param       multipleMode   if <code>true</code>,
	*                     then multiple selections are allowed;
	*                     otherwise, only one item can be selected at a time.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(rows : Int, multipleMode : Bool) : Void;
	
	/**
	* Creates the peer for the list.  The peer allows us to modify the
	* list's appearance without changing its functionality.
	*/
	@:overload override public function addNotify() : Void;
	
	/**
	* Removes the peer for this list.  The peer allows us to modify the
	* list's appearance without changing its functionality.
	*/
	@:overload override public function removeNotify() : Void;
	
	/**
	* Gets the number of items in the list.
	* @return     the number of items in the list
	* @see        #getItem
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function getItemCount() : Int;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getItemCount()</code>.
	*/
	@:overload public function countItems() : Int;
	
	/**
	* Gets the item associated with the specified index.
	* @return       an item that is associated with
	*                    the specified index
	* @param        index the position of the item
	* @see          #getItemCount
	*/
	@:overload public function getItem(index : Int) : String;
	
	/**
	* Gets the items in the list.
	* @return       a string array containing items of the list
	* @see          #select
	* @see          #deselect
	* @see          #isIndexSelected
	* @since        JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function getItems() : java.NativeArray<String>;
	
	/**
	* Adds the specified item to the end of scrolling list.
	* @param item the item to be added
	* @since JDK1.1
	*/
	@:require(java1) @:overload public function add(item : String) : Void;
	
	/**
	* @deprecated      replaced by <code>add(String)</code>.
	*/
	@:overload public function addItem(item : String) : Void;
	
	/**
	* Adds the specified item to the the scrolling list
	* at the position indicated by the index.  The index is
	* zero-based.  If the value of the index is less than zero,
	* or if the value of the index is greater than or equal to
	* the number of items in the list, then the item is added
	* to the end of the list.
	* @param       item   the item to be added;
	*              if this parameter is <code>null</code> then the item is
	*              treated as an empty string, <code>""</code>
	* @param       index  the position at which to add the item
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function add(item : String, index : Int) : Void;
	
	/**
	* @deprecated      replaced by <code>add(String, int)</code>.
	*/
	@:overload @:synchronized public function addItem(item : String, index : Int) : Void;
	
	/**
	* Replaces the item at the specified index in the scrolling list
	* with the new string.
	* @param       newValue   a new string to replace an existing item
	* @param       index      the position of the item to replace
	* @exception ArrayIndexOutOfBoundsException if <code>index</code>
	*          is out of range
	*/
	@:overload @:synchronized public function replaceItem(newValue : String, index : Int) : Void;
	
	/**
	* Removes all items from this list.
	* @see #remove
	* @see #delItems
	* @since JDK1.1
	*/
	@:require(java1) @:overload public function removeAll() : Void;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>removeAll()</code>.
	*/
	@:overload @:synchronized public function clear() : Void;
	
	/**
	* Removes the first occurrence of an item from the list.
	* If the specified item is selected, and is the only selected
	* item in the list, the list is set to have no selection.
	* @param        item  the item to remove from the list
	* @exception    IllegalArgumentException
	*                     if the item doesn't exist in the list
	* @since        JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function remove(item : String) : Void;
	
	/**
	* Removes the item at the specified position
	* from this scrolling list.
	* If the item with the specified position is selected, and is the
	* only selected item in the list, the list is set to have no selection.
	* @param      position   the index of the item to delete
	* @see        #add(String, int)
	* @since      JDK1.1
	* @exception    ArrayIndexOutOfBoundsException
	*               if the <code>position</code> is less than 0 or
	*               greater than <code>getItemCount()-1</code>
	*/
	@:require(java1) @:overload public function remove(position : Int) : Void;
	
	/**
	* @deprecated     replaced by <code>remove(String)</code>
	*                         and <code>remove(int)</code>.
	*/
	@:overload public function delItem(position : Int) : Void;
	
	/**
	* Gets the index of the selected item on the list,
	*
	* @return        the index of the selected item;
	*                if no item is selected, or if multiple items are
	*                selected, <code>-1</code> is returned.
	* @see           #select
	* @see           #deselect
	* @see           #isIndexSelected
	*/
	@:overload @:synchronized public function getSelectedIndex() : Int;
	
	/**
	* Gets the selected indexes on the list.
	*
	* @return        an array of the selected indexes on this scrolling list;
	*                if no item is selected, a zero-length array is returned.
	* @see           #select
	* @see           #deselect
	* @see           #isIndexSelected
	*/
	@:overload @:synchronized public function getSelectedIndexes() : java.NativeArray<Int>;
	
	/**
	* Gets the selected item on this scrolling list.
	*
	* @return        the selected item on the list;
	*                if no item is selected, or if multiple items are
	*                selected, <code>null</code> is returned.
	* @see           #select
	* @see           #deselect
	* @see           #isIndexSelected
	*/
	@:overload @:synchronized public function getSelectedItem() : String;
	
	/**
	* Gets the selected items on this scrolling list.
	*
	* @return        an array of the selected items on this scrolling list;
	*                if no item is selected, a zero-length array is returned.
	* @see           #select
	* @see           #deselect
	* @see           #isIndexSelected
	*/
	@:overload @:synchronized public function getSelectedItems() : java.NativeArray<String>;
	
	/**
	* Gets the selected items on this scrolling list in an array of Objects.
	* @return        an array of <code>Object</code>s representing the
	*                selected items on this scrolling list;
	*                if no item is selected, a zero-length array is returned.
	* @see #getSelectedItems
	* @see ItemSelectable
	*/
	@:overload public function getSelectedObjects() : java.NativeArray<Dynamic>;
	
	/**
	* Selects the item at the specified index in the scrolling list.
	*<p>
	* Note that passing out of range parameters is invalid,
	* and will result in unspecified behavior.
	*
	* <p>Note that this method should be primarily used to
	* initially select an item in this component.
	* Programmatically calling this method will <i>not</i> trigger
	* an <code>ItemEvent</code>.  The only way to trigger an
	* <code>ItemEvent</code> is by user interaction.
	*
	* @param        index the position of the item to select
	* @see          #getSelectedItem
	* @see          #deselect
	* @see          #isIndexSelected
	*/
	@:overload public function select(index : Int) : Void;
	
	/**
	* Deselects the item at the specified index.
	* <p>
	* Note that passing out of range parameters is invalid,
	* and will result in unspecified behavior.
	* <p>
	* If the item at the specified index is not selected,
	* then the operation is ignored.
	* @param        index the position of the item to deselect
	* @see          #select
	* @see          #getSelectedItem
	* @see          #isIndexSelected
	*/
	@:overload @:synchronized public function deselect(index : Int) : Void;
	
	/**
	* Determines if the specified item in this scrolling list is
	* selected.
	* @param      index   the item to be checked
	* @return     <code>true</code> if the specified item has been
	*                       selected; <code>false</code> otherwise
	* @see        #select
	* @see        #deselect
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function isIndexSelected(index : Int) : Bool;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>isIndexSelected(int)</code>.
	*/
	@:overload public function isSelected(index : Int) : Bool;
	
	/**
	* Gets the number of visible lines in this list.  Note that
	* once the <code>List</code> has been created, this number
	* will never change.
	* @return     the number of visible lines in this scrolling list
	*/
	@:overload public function getRows() : Int;
	
	/**
	* Determines whether this list allows multiple selections.
	* @return     <code>true</code> if this list allows multiple
	*                 selections; otherwise, <code>false</code>
	* @see        #setMultipleMode
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function isMultipleMode() : Bool;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>isMultipleMode()</code>.
	*/
	@:overload public function allowsMultipleSelections() : Bool;
	
	/**
	* Sets the flag that determines whether this list
	* allows multiple selections.
	* When the selection mode is changed from multiple-selection to
	* single-selection, the selected items change as follows:
	* If a selected item has the location cursor, only that
	* item will remain selected.  If no selected item has the
	* location cursor, all items will be deselected.
	* @param       b   if <code>true</code> then multiple selections
	*                      are allowed; otherwise, only one item from
	*                      the list can be selected at once
	* @see         #isMultipleMode
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function setMultipleMode(b : Bool) : Void;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>setMultipleMode(boolean)</code>.
	*/
	@:overload @:synchronized public function setMultipleSelections(b : Bool) : Void;
	
	/**
	* Gets the index of the item that was last made visible by
	* the method <code>makeVisible</code>.
	* @return      the index of the item that was last made visible
	* @see         #makeVisible
	*/
	@:overload public function getVisibleIndex() : Int;
	
	/**
	* Makes the item at the specified index visible.
	* @param       index    the position of the item
	* @see         #getVisibleIndex
	*/
	@:overload @:synchronized public function makeVisible(index : Int) : Void;
	
	/**
	* Gets the preferred dimensions for a list with the specified
	* number of rows.
	* @param      rows    number of rows in the list
	* @return     the preferred dimensions for displaying this scrolling list
	*             given that the specified number of rows must be visible
	* @see        java.awt.Component#getPreferredSize
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function getPreferredSize(rows : Int) : java.awt.Dimension;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getPreferredSize(int)</code>.
	*/
	@:overload public function preferredSize(rows : Int) : java.awt.Dimension;
	
	/**
	* Gets the preferred size of this scrolling list.
	* @return     the preferred dimensions for displaying this scrolling list
	* @see        java.awt.Component#getPreferredSize
	* @since      JDK1.1
	*/
	@:require(java1) @:overload override public function getPreferredSize() : java.awt.Dimension;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getPreferredSize()</code>.
	*/
	@:overload override public function preferredSize() : java.awt.Dimension;
	
	/**
	* Gets the minumum dimensions for a list with the specified
	* number of rows.
	* @param      rows    number of rows in the list
	* @return     the minimum dimensions for displaying this scrolling list
	*             given that the specified number of rows must be visible
	* @see        java.awt.Component#getMinimumSize
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function getMinimumSize(rows : Int) : java.awt.Dimension;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getMinimumSize(int)</code>.
	*/
	@:overload public function minimumSize(rows : Int) : java.awt.Dimension;
	
	/**
	* Determines the minimum size of this scrolling list.
	* @return       the minimum dimensions needed
	*                        to display this scrolling list
	* @see          java.awt.Component#getMinimumSize()
	* @since        JDK1.1
	*/
	@:require(java1) @:overload override public function getMinimumSize() : java.awt.Dimension;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getMinimumSize()</code>.
	*/
	@:overload override public function minimumSize() : java.awt.Dimension;
	
	/**
	* Adds the specified item listener to receive item events from
	* this list.  Item events are sent in response to user input, but not
	* in response to calls to <code>select</code> or <code>deselect</code>.
	* If listener <code>l</code> is <code>null</code>,
	* no exception is thrown and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param         l the item listener
	* @see           #removeItemListener
	* @see           #getItemListeners
	* @see           #select
	* @see           #deselect
	* @see           java.awt.event.ItemEvent
	* @see           java.awt.event.ItemListener
	* @since         JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function addItemListener(l : java.awt.event.ItemListener) : Void;
	
	/**
	* Removes the specified item listener so that it no longer
	* receives item events from this list.
	* If listener <code>l</code> is <code>null</code>,
	* no exception is thrown and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param           l the item listener
	* @see             #addItemListener
	* @see             #getItemListeners
	* @see             java.awt.event.ItemEvent
	* @see             java.awt.event.ItemListener
	* @since           JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function removeItemListener(l : java.awt.event.ItemListener) : Void;
	
	/**
	* Returns an array of all the item listeners
	* registered on this list.
	*
	* @return all of this list's <code>ItemListener</code>s
	*         or an empty array if no item
	*         listeners are currently registered
	*
	* @see             #addItemListener
	* @see             #removeItemListener
	* @see             java.awt.event.ItemEvent
	* @see             java.awt.event.ItemListener
	* @since 1.4
	*/
	@:require(java4) @:overload @:synchronized public function getItemListeners() : java.NativeArray<java.awt.event.ItemListener>;
	
	/**
	* Adds the specified action listener to receive action events from
	* this list. Action events occur when a user double-clicks
	* on a list item or types Enter when the list has the keyboard
	* focus.
	* <p>
	* If listener <code>l</code> is <code>null</code>,
	* no exception is thrown and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param         l the action listener
	* @see           #removeActionListener
	* @see           #getActionListeners
	* @see           java.awt.event.ActionEvent
	* @see           java.awt.event.ActionListener
	* @since         JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function addActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Removes the specified action listener so that it no longer
	* receives action events from this list. Action events
	* occur when a user double-clicks on a list item.
	* If listener <code>l</code> is <code>null</code>,
	* no exception is thrown and no action is performed.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param           l     the action listener
	* @see             #addActionListener
	* @see             #getActionListeners
	* @see             java.awt.event.ActionEvent
	* @see             java.awt.event.ActionListener
	* @since           JDK1.1
	*/
	@:require(java1) @:overload @:synchronized public function removeActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Returns an array of all the action listeners
	* registered on this list.
	*
	* @return all of this list's <code>ActionListener</code>s
	*         or an empty array if no action
	*         listeners are currently registered
	*
	* @see             #addActionListener
	* @see             #removeActionListener
	* @see             java.awt.event.ActionEvent
	* @see             java.awt.event.ActionListener
	* @since 1.4
	*/
	@:require(java4) @:overload @:synchronized public function getActionListeners() : java.NativeArray<java.awt.event.ActionListener>;
	
	/**
	* Returns an array of all the objects currently registered
	* as <code><em>Foo</em>Listener</code>s
	* upon this <code>List</code>.
	* <code><em>Foo</em>Listener</code>s are registered using the
	* <code>add<em>Foo</em>Listener</code> method.
	*
	* <p>
	* You can specify the <code>listenerType</code> argument
	* with a class literal, such as
	* <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a
	* <code>List</code> <code>l</code>
	* for its item listeners with the following code:
	*
	* <pre>ItemListener[] ils = (ItemListener[])(l.getListeners(ItemListener.class));</pre>
	*
	* If no such listeners exist, this method returns an empty array.
	*
	* @param listenerType the type of listeners requested; this parameter
	*          should specify an interface that descends from
	*          <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s on this list,
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
	* Processes events on this scrolling list. If an event is
	* an instance of <code>ItemEvent</code>, it invokes the
	* <code>processItemEvent</code> method. Else, if the
	* event is an instance of <code>ActionEvent</code>,
	* it invokes <code>processActionEvent</code>.
	* If the event is not an item event or an action event,
	* it invokes <code>processEvent</code> on the superclass.
	* <p>Note that if the event parameter is <code>null</code>
	* the behavior is unspecified and may result in an
	* exception.
	*
	* @param        e the event
	* @see          java.awt.event.ActionEvent
	* @see          java.awt.event.ItemEvent
	* @see          #processActionEvent
	* @see          #processItemEvent
	* @since        JDK1.1
	*/
	@:require(java1) @:overload override private function processEvent(e : java.awt.AWTEvent) : Void;
	
	/**
	* Processes item events occurring on this list by
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
	* Processes action events occurring on this component
	* by dispatching them to any registered
	* <code>ActionListener</code> objects.
	* <p>
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
	* @see         #addActionListener
	* @see         java.awt.Component#enableEvents
	* @since       JDK1.1
	*/
	@:require(java1) @:overload private function processActionEvent(e : java.awt.event.ActionEvent) : Void;
	
	/**
	* Returns the parameter string representing the state of this
	* scrolling list. This string is useful for debugging.
	* @return    the parameter string of this scrolling list
	*/
	@:overload override private function paramString() : String;
	
	/**
	* @deprecated As of JDK version 1.1,
	* Not for public use in the future.
	* This method is expected to be retained only as a package
	* private method.
	*/
	@:overload @:synchronized public function delItems(start : Int, end : Int) : Void;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with this
	* <code>List</code>. For lists, the <code>AccessibleContext</code>
	* takes the form of an <code>AccessibleAWTList</code>.
	* A new <code>AccessibleAWTList</code> instance is created, if necessary.
	*
	* @return an <code>AccessibleAWTList</code> that serves as the
	*         <code>AccessibleContext</code> of this <code>List</code>
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>List</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to list user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$List$AccessibleAWTList') extern class List_AccessibleAWTList extends java.awt.Component.Component_AccessibleAWTComponent implements javax.accessibility.AccessibleSelection implements java.awt.event.ItemListener implements java.awt.event.ActionListener
{
	@:overload public function new() : Void;
	
	@:overload public function actionPerformed(event : java.awt.event.ActionEvent) : Void;
	
	@:overload public function itemStateChanged(event : java.awt.event.ItemEvent) : Void;
	
	/**
	* Get the state set of this object.
	*
	* @return an instance of AccessibleState containing the current state
	* of the object
	* @see AccessibleState
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Returns the Accessible child contained at the local coordinate
	* Point, if one exists.
	*
	* @return the Accessible at the specified location, if it exists
	*/
	@:overload override public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	/**
	* Returns the number of accessible children in the object.  If all
	* of the children of this object implement Accessible, than this
	* method should return the number of children of this object.
	*
	* @return the number of accessible children in the object.
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Return the nth Accessible child of the object.
	*
	* @param i zero-based index of child
	* @return the nth Accessible child of the object
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Get the AccessibleSelection associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleSelection interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Returns the number of items currently selected.
	* If no items are selected, the return value will be 0.
	*
	* @return the number of items currently selected.
	*/
	@:overload public function getAccessibleSelectionCount() : Int;
	
	/**
	* Returns an Accessible representing the specified selected item
	* in the object.  If there isn't a selection, or there are
	* fewer items selected than the integer passed in, the return
	* value will be null.
	*
	* @param i the zero-based index of selected items
	* @return an Accessible containing the selected item
	*/
	@:overload public function getAccessibleSelection(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns true if the current child of this object is selected.
	*
	* @param i the zero-based index of the child in this Accessible
	* object.
	* @see AccessibleContext#getAccessibleChild
	*/
	@:overload public function isAccessibleChildSelected(i : Int) : Bool;
	
	/**
	* Adds the specified selected item in the object to the object's
	* selection.  If the object supports multiple selections,
	* the specified item is added to any existing selection, otherwise
	* it replaces any existing selection in the object.  If the
	* specified item is already selected, this method has no effect.
	*
	* @param i the zero-based index of selectable items
	*/
	@:overload public function addAccessibleSelection(i : Int) : Void;
	
	/**
	* Removes the specified selected item in the object from the object's
	* selection.  If the specified item isn't currently selected, this
	* method has no effect.
	*
	* @param i the zero-based index of selectable items
	*/
	@:overload public function removeAccessibleSelection(i : Int) : Void;
	
	/**
	* Clears the selection in the object, so that nothing in the
	* object is selected.
	*/
	@:overload public function clearAccessibleSelection() : Void;
	
	/**
	* Causes every selected item in the object to be selected
	* if the object supports multiple selections.
	*/
	@:overload public function selectAllAccessibleSelection() : Void;
	
	
}
/**
* This class implements accessibility support for
* List children.  It provides an implementation of the
* Java Accessibility API appropriate to list children
* user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$List$AccessibleAWTList$AccessibleAWTListChild') extern class List_AccessibleAWTList_AccessibleAWTListChild extends java.awt.Component.Component_AccessibleAWTComponent implements javax.accessibility.Accessible
{
	@:overload public function new(parent : List, indexInParent : Int) : Void;
	
	/**
	* Gets the AccessibleContext for this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which acts as its own AccessibleContext.
	*
	* @return this object
	*/
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of
	* the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Get the state set of this object.  The AccessibleStateSet of an
	* object is composed of a set of unique AccessibleState's.  A
	* change in the AccessibleStateSet of an object will cause a
	* PropertyChangeEvent to be fired for the
	* ACCESSIBLE_STATE_PROPERTY property.
	*
	* @return an instance of AccessibleStateSet containing the
	* current state set of the object
	* @see AccessibleStateSet
	* @see AccessibleState
	* @see #addPropertyChangeListener
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Gets the locale of the component. If the component does not
	* have a locale, then the locale of its parent is returned.
	*
	* @return This component's locale.  If this component does not have
	* a locale, the locale of its parent is returned.
	*
	* @exception IllegalComponentStateException
	* If the Component does not have its own locale and has not yet
	* been added to a containment hierarchy such that the locale can
	* be determined from the containing parent.
	*/
	@:overload override public function getLocale() : java.util.Locale;
	
	/**
	* Get the 0-based index of this object in its accessible parent.
	*
	* @return the 0-based index of this object in its parent; -1 if
	* this object does not have an accessible parent.
	*
	* @see #getAccessibleParent
	* @see #getAccessibleChildrenCount
	* @see #getAccessibleChild
	*/
	@:overload override public function getAccessibleIndexInParent() : Int;
	
	/**
	* Returns the number of accessible children of the object.
	*
	* @return the number of accessible children of the object.
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Return the specified Accessible child of the object.  The
	* Accessible children of an Accessible object are zero-based,
	* so the first child of an Accessible child is at index 0, the
	* second child is at index 1, and so on.
	*
	* @param i zero-based index of child
	* @return the Accessible child of the object
	* @see #getAccessibleChildrenCount
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Get the background color of this object.
	*
	* @return the background color, if supported, of the object;
	* otherwise, null
	* @see #setBackground
	*/
	@:overload override public function getBackground() : java.awt.Color;
	
	/**
	* Set the background color of this object.
	*
	* @param c the new Color for the background
	* @see #setBackground
	*/
	@:overload override public function setBackground(c : java.awt.Color) : Void;
	
	/**
	* Get the foreground color of this object.
	*
	* @return the foreground color, if supported, of the object;
	* otherwise, null
	* @see #setForeground
	*/
	@:overload override public function getForeground() : java.awt.Color;
	
	/**
	* Set the foreground color of this object.
	*
	* @param c the new Color for the foreground
	* @see #getForeground
	*/
	@:overload override public function setForeground(c : java.awt.Color) : Void;
	
	/**
	* Get the Cursor of this object.
	*
	* @return the Cursor, if supported, of the object; otherwise, null
	* @see #setCursor
	*/
	@:overload override public function getCursor() : java.awt.Cursor;
	
	/**
	* Set the Cursor of this object.
	* <p>
	* The method may have no visual effect if the Java platform
	* implementation and/or the native system do not support
	* changing the mouse cursor shape.
	* @param cursor the new Cursor for the object
	* @see #getCursor
	*/
	@:overload override public function setCursor(cursor : java.awt.Cursor) : Void;
	
	/**
	* Get the Font of this object.
	*
	* @return the Font,if supported, for the object; otherwise, null
	* @see #setFont
	*/
	@:overload override public function getFont() : java.awt.Font;
	
	/**
	* Set the Font of this object.
	*
	* @param f the new Font for the object
	* @see #getFont
	*/
	@:overload override public function setFont(f : java.awt.Font) : Void;
	
	/**
	* Get the FontMetrics of this object.
	*
	* @param f the Font
	* @return the FontMetrics, if supported, the object; otherwise, null
	* @see #getFont
	*/
	@:overload override public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Determine if the object is enabled.  Objects that are enabled
	* will also have the AccessibleState.ENABLED state set in their
	* AccessibleStateSet.
	*
	* @return true if object is enabled; otherwise, false
	* @see #setEnabled
	* @see AccessibleContext#getAccessibleStateSet
	* @see AccessibleState#ENABLED
	* @see AccessibleStateSet
	*/
	@:overload override public function isEnabled() : Bool;
	
	/**
	* Set the enabled state of the object.
	*
	* @param b if true, enables this object; otherwise, disables it
	* @see #isEnabled
	*/
	@:overload override public function setEnabled(b : Bool) : Void;
	
	/**
	* Determine if the object is visible.  Note: this means that the
	* object intends to be visible; however, it may not be
	* showing on the screen because one of the objects that this object
	* is contained by is currently not visible.  To determine if an
	* object is showing on the screen, use isShowing().
	* <p>Objects that are visible will also have the
	* AccessibleState.VISIBLE state set in their AccessibleStateSet.
	*
	* @return true if object is visible; otherwise, false
	* @see #setVisible
	* @see AccessibleContext#getAccessibleStateSet
	* @see AccessibleState#VISIBLE
	* @see AccessibleStateSet
	*/
	@:overload override public function isVisible() : Bool;
	
	/**
	* Set the visible state of the object.
	*
	* @param b if true, shows this object; otherwise, hides it
	* @see #isVisible
	*/
	@:overload override public function setVisible(b : Bool) : Void;
	
	/**
	* Determine if the object is showing.  This is determined by
	* checking the visibility of the object and visibility of the
	* object ancestors.
	* Note: this will return true even if the object is obscured
	* by another (for example, it to object is underneath a menu
	* that was pulled down).
	*
	* @return true if object is showing; otherwise, false
	*/
	@:overload override public function isShowing() : Bool;
	
	/**
	* Checks whether the specified point is within this object's
	* bounds, where the point's x and y coordinates are defined to
	* be relative to the coordinate system of the object.
	*
	* @param p the Point relative to the coordinate system of the
	* object
	* @return true if object contains Point; otherwise false
	* @see #getBounds
	*/
	@:overload override public function contains(p : java.awt.Point) : Bool;
	
	/**
	* Returns the location of the object on the screen.
	*
	* @return location of object on screen; null if this object
	* is not on the screen
	* @see #getBounds
	* @see #getLocation
	*/
	@:overload override public function getLocationOnScreen() : java.awt.Point;
	
	/**
	* Gets the location of the object relative to the parent in the
	* form of a point specifying the object's top-left corner in the
	* screen's coordinate space.
	*
	* @return An instance of Point representing the top-left corner of
	* the objects's bounds in the coordinate space of the screen; null
	* if this object or its parent are not on the screen
	* @see #getBounds
	* @see #getLocationOnScreen
	*/
	@:overload override public function getLocation() : java.awt.Point;
	
	/**
	* Sets the location of the object relative to the parent.
	* @param p the new position for the top-left corner
	* @see #getLocation
	*/
	@:overload override public function setLocation(p : java.awt.Point) : Void;
	
	/**
	* Gets the bounds of this object in the form of a Rectangle object.
	* The bounds specify this object's width, height, and location
	* relative to its parent.
	*
	* @return A rectangle indicating this component's bounds; null if
	* this object is not on the screen.
	* @see #contains
	*/
	@:overload override public function getBounds() : java.awt.Rectangle;
	
	/**
	* Sets the bounds of this object in the form of a Rectangle
	* object.  The bounds specify this object's width, height, and
	* location relative to its parent.
	*
	* @param r rectangle indicating this component's bounds
	* @see #getBounds
	*/
	@:overload override public function setBounds(r : java.awt.Rectangle) : Void;
	
	/**
	* Returns the size of this object in the form of a Dimension
	* object.  The height field of the Dimension object contains this
	* objects's height, and the width field of the Dimension object
	* contains this object's width.
	*
	* @return A Dimension object that indicates the size of this
	* component; null if this object is not on the screen
	* @see #setSize
	*/
	@:overload override public function getSize() : java.awt.Dimension;
	
	/**
	* Resizes this object so that it has width and height.
	*
	* @param d - The dimension specifying the new size of the object.
	* @see #getSize
	*/
	@:overload override public function setSize(d : java.awt.Dimension) : Void;
	
	/**
	* Returns the <code>Accessible</code> child, if one exists,
	* contained at the local coordinate <code>Point</code>.
	*
	* @param p the point relative to the coordinate system of this
	*     object
	* @return the <code>Accessible</code>, if it exists,
	*     at the specified location; otherwise <code>null</code>
	*/
	@:overload override public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	/**
	* Returns whether this object can accept focus or not.   Objects
	* that can accept focus will also have the
	* <code>AccessibleState.FOCUSABLE</code> state set in their
	* <code>AccessibleStateSet</code>.
	*
	* @return true if object can accept focus; otherwise false
	* @see AccessibleContext#getAccessibleStateSet
	* @see AccessibleState#FOCUSABLE
	* @see AccessibleState#FOCUSED
	* @see AccessibleStateSet
	*/
	@:overload override public function isFocusTraversable() : Bool;
	
	/**
	* Requests focus for this object.  If this object cannot accept
	* focus, nothing will happen.  Otherwise, the object will attempt
	* to take focus.
	* @see #isFocusTraversable
	*/
	@:overload override public function requestFocus() : Void;
	
	/**
	* Adds the specified focus listener to receive focus events from
	* this component.
	*
	* @param l the focus listener
	* @see #removeFocusListener
	*/
	@:overload override public function addFocusListener(l : java.awt.event.FocusListener) : Void;
	
	/**
	* Removes the specified focus listener so it no longer receives
	* focus events from this component.
	*
	* @param l the focus listener
	* @see #addFocusListener
	*/
	@:overload override public function removeFocusListener(l : java.awt.event.FocusListener) : Void;
	
	
}
