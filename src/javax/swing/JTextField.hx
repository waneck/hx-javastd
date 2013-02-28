package javax.swing;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JTextField extends javax.swing.text.JTextComponent implements javax.swing.SwingConstants
{
	/**
	* Constructs a new <code>TextField</code>.  A default model is created,
	* the initial string is <code>null</code>,
	* and the number of columns is set to 0.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new <code>TextField</code> initialized with the
	* specified text. A default model is created and the number of
	* columns is 0.
	*
	* @param text the text to be displayed, or <code>null</code>
	*/
	@:overload public function new(text : String) : Void;
	
	/**
	* Constructs a new empty <code>TextField</code> with the specified
	* number of columns.
	* A default model is created and the initial string is set to
	* <code>null</code>.
	*
	* @param columns  the number of columns to use to calculate
	*   the preferred width; if columns is set to zero, the
	*   preferred width will be whatever naturally results from
	*   the component implementation
	*/
	@:overload public function new(columns : Int) : Void;
	
	/**
	* Constructs a new <code>TextField</code> initialized with the
	* specified text and columns.  A default model is created.
	*
	* @param text the text to be displayed, or <code>null</code>
	* @param columns  the number of columns to use to calculate
	*   the preferred width; if columns is set to zero, the
	*   preferred width will be whatever naturally results from
	*   the component implementation
	*/
	@:overload public function new(text : String, columns : Int) : Void;
	
	/**
	* Constructs a new <code>JTextField</code> that uses the given text
	* storage model and the given number of columns.
	* This is the constructor through which the other constructors feed.
	* If the document is <code>null</code>, a default model is created.
	*
	* @param doc  the text storage to use; if this is <code>null</code>,
	*          a default will be provided by calling the
	*          <code>createDefaultModel</code> method
	* @param text  the initial string to display, or <code>null</code>
	* @param columns  the number of columns to use to calculate
	*   the preferred width >= 0; if <code>columns</code>
	*   is set to zero, the preferred width will be whatever
	*   naturally results from the component implementation
	* @exception IllegalArgumentException if <code>columns</code> < 0
	*/
	@:overload public function new(doc : javax.swing.text.Document, text : String, columns : Int) : Void;
	
	/**
	* Gets the class ID for a UI.
	*
	* @return the string "TextFieldUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Associates the editor with a text document.
	* The currently registered factory is used to build a view for
	* the document, which gets displayed by the editor after revalidation.
	* A PropertyChange event ("document") is propagated to each listener.
	*
	* @param doc  the document to display/edit
	* @see #getDocument
	* @beaninfo
	*  description: the text document model
	*        bound: true
	*       expert: true
	*/
	@:overload override public function setDocument(doc : javax.swing.text.Document) : Void;
	
	/**
	* Calls to <code>revalidate</code> that come from within the
	* textfield itself will
	* be handled by validating the textfield, unless the textfield
	* is contained within a <code>JViewport</code>,
	* in which case this returns false.
	*
	* @return if the parent of this textfield is a <code>JViewPort</code>
	*          return false, otherwise return true
	*
	* @see JComponent#revalidate
	* @see JComponent#isValidateRoot
	* @see java.awt.Container#isValidateRoot
	*/
	@:overload override public function isValidateRoot() : Bool;
	
	/**
	* Returns the horizontal alignment of the text.
	* Valid keys are:
	* <ul>
	* <li><code>JTextField.LEFT</code>
	* <li><code>JTextField.CENTER</code>
	* <li><code>JTextField.RIGHT</code>
	* <li><code>JTextField.LEADING</code>
	* <li><code>JTextField.TRAILING</code>
	* </ul>
	*
	* @return the horizontal alignment
	*/
	@:overload public function getHorizontalAlignment() : Int;
	
	/**
	* Sets the horizontal alignment of the text.
	* Valid keys are:
	* <ul>
	* <li><code>JTextField.LEFT</code>
	* <li><code>JTextField.CENTER</code>
	* <li><code>JTextField.RIGHT</code>
	* <li><code>JTextField.LEADING</code>
	* <li><code>JTextField.TRAILING</code>
	* </ul>
	* <code>invalidate</code> and <code>repaint</code> are called when the
	* alignment is set,
	* and a <code>PropertyChange</code> event ("horizontalAlignment") is fired.
	*
	* @param alignment the alignment
	* @exception IllegalArgumentException if <code>alignment</code>
	*  is not a valid key
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: Set the field alignment to LEFT, CENTER, RIGHT,
	*              LEADING (the default) or TRAILING
	*        enum: LEFT JTextField.LEFT CENTER JTextField.CENTER RIGHT JTextField.RIGHT
	*              LEADING JTextField.LEADING TRAILING JTextField.TRAILING
	*/
	@:overload public function setHorizontalAlignment(alignment : Int) : Void;
	
	/**
	* Creates the default implementation of the model
	* to be used at construction if one isn't explicitly
	* given.  An instance of <code>PlainDocument</code> is returned.
	*
	* @return the default model implementation
	*/
	@:overload private function createDefaultModel() : javax.swing.text.Document;
	
	/**
	* Returns the number of columns in this <code>TextField</code>.
	*
	* @return the number of columns >= 0
	*/
	@:overload public function getColumns() : Int;
	
	/**
	* Sets the number of columns in this <code>TextField</code>,
	* and then invalidate the layout.
	*
	* @param columns the number of columns >= 0
	* @exception IllegalArgumentException if <code>columns</code>
	*          is less than 0
	* @beaninfo
	* description: the number of columns preferred for display
	*/
	@:overload public function setColumns(columns : Int) : Void;
	
	/**
	* Returns the column width.
	* The meaning of what a column is can be considered a fairly weak
	* notion for some fonts.  This method is used to define the width
	* of a column.  By default this is defined to be the width of the
	* character <em>m</em> for the font used.  This method can be
	* redefined to be some alternative amount
	*
	* @return the column width >= 1
	*/
	@:overload private function getColumnWidth() : Int;
	
	/**
	* Returns the preferred size <code>Dimensions</code> needed for this
	* <code>TextField</code>.  If a non-zero number of columns has been
	* set, the width is set to the columns multiplied by
	* the column width.
	*
	* @return the dimension of this textfield
	*/
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	/**
	* Sets the current font.  This removes cached row height and column
	* width so the new font will be reflected.
	* <code>revalidate</code> is called after setting the font.
	*
	* @param f the new font
	*/
	@:overload override public function setFont(f : java.awt.Font) : Void;
	
	/**
	* Adds the specified action listener to receive
	* action events from this textfield.
	*
	* @param l the action listener to be added
	*/
	@:overload @:synchronized public function addActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Removes the specified action listener so that it no longer
	* receives action events from this textfield.
	*
	* @param l the action listener to be removed
	*/
	@:overload @:synchronized public function removeActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Returns an array of all the <code>ActionListener</code>s added
	* to this JTextField with addActionListener().
	*
	* @return all of the <code>ActionListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload @:synchronized public function getActionListeners() : java.NativeArray<java.awt.event.ActionListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created.
	* The listener list is processed in last to
	* first order.
	* @see EventListenerList
	*/
	@:overload private function fireActionPerformed() : Void;
	
	/**
	* Sets the command string used for action events.
	*
	* @param command the command string
	*/
	@:overload public function setActionCommand(command : String) : Void;
	
	/**
	* Sets the <code>Action</code> for the <code>ActionEvent</code> source.
	* The new <code>Action</code> replaces
	* any previously set <code>Action</code> but does not affect
	* <code>ActionListeners</code> independently
	* added with <code>addActionListener</code>.
	* If the <code>Action</code> is already a registered
	* <code>ActionListener</code>
	* for the <code>ActionEvent</code> source, it is not re-registered.
	* <p>
	* Setting the <code>Action</code> results in immediately changing
	* all the properties described in <a href="Action.html#buttonActions">
	* Swing Components Supporting <code>Action</code></a>.
	* Subsequently, the textfield's properties are automatically updated
	* as the <code>Action</code>'s properties change.
	* <p>
	* This method uses three other methods to set
	* and help track the <code>Action</code>'s property values.
	* It uses the <code>configurePropertiesFromAction</code> method
	* to immediately change the textfield's properties.
	* To track changes in the <code>Action</code>'s property values,
	* this method registers the <code>PropertyChangeListener</code>
	* returned by <code>createActionPropertyChangeListener</code>. The
	* default {@code PropertyChangeListener} invokes the
	* {@code actionPropertyChanged} method when a property in the
	* {@code Action} changes.
	*
	* @param a the <code>Action</code> for the <code>JTextField</code>,
	*          or <code>null</code>
	* @since 1.3
	* @see Action
	* @see #getAction
	* @see #configurePropertiesFromAction
	* @see #createActionPropertyChangeListener
	* @see #actionPropertyChanged
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: the Action instance connected with this ActionEvent source
	*/
	@:require(java3) @:overload public function setAction(a : javax.swing.Action) : Void;
	
	/**
	* Returns the currently set <code>Action</code> for this
	* <code>ActionEvent</code> source, or <code>null</code>
	* if no <code>Action</code> is set.
	*
	* @return the <code>Action</code> for this <code>ActionEvent</code> source,
	*          or <code>null</code>
	* @since 1.3
	* @see Action
	* @see #setAction
	*/
	@:require(java3) @:overload public function getAction() : javax.swing.Action;
	
	/**
	* Sets the properties on this textfield to match those in the specified
	* <code>Action</code>.  Refer to <a href="Action.html#buttonActions">
	* Swing Components Supporting <code>Action</code></a> for more
	* details as to which properties this sets.
	*
	* @param a the <code>Action</code> from which to get the properties,
	*          or <code>null</code>
	* @since 1.3
	* @see Action
	* @see #setAction
	*/
	@:require(java3) @:overload private function configurePropertiesFromAction(a : javax.swing.Action) : Void;
	
	/**
	* Updates the textfield's state in response to property changes in
	* associated action. This method is invoked from the
	* {@code PropertyChangeListener} returned from
	* {@code createActionPropertyChangeListener}. Subclasses do not normally
	* need to invoke this. Subclasses that support additional {@code Action}
	* properties should override this and
	* {@code configurePropertiesFromAction}.
	* <p>
	* Refer to the table at <a href="Action.html#buttonActions">
	* Swing Components Supporting <code>Action</code></a> for a list of
	* the properties this method sets.
	*
	* @param action the <code>Action</code> associated with this textfield
	* @param propertyName the name of the property that changed
	* @since 1.6
	* @see Action
	* @see #configurePropertiesFromAction
	*/
	@:require(java6) @:overload private function actionPropertyChanged(action : javax.swing.Action, propertyName : String) : Void;
	
	/**
	* Creates and returns a <code>PropertyChangeListener</code> that is
	* responsible for listening for changes from the specified
	* <code>Action</code> and updating the appropriate properties.
	* <p>
	* <b>Warning:</b> If you subclass this do not create an anonymous
	* inner class.  If you do the lifetime of the textfield will be tied to
	* that of the <code>Action</code>.
	*
	* @param a the textfield's action
	* @since 1.3
	* @see Action
	* @see #setAction
	*/
	@:require(java3) @:overload private function createActionPropertyChangeListener(a : javax.swing.Action) : java.beans.PropertyChangeListener;
	
	/**
	* Fetches the command list for the editor.  This is
	* the list of commands supported by the plugged-in UI
	* augmented by the collection of commands that the
	* editor itself supports.  These are useful for binding
	* to events, such as in a keymap.
	*
	* @return the command list
	*/
	@:overload override public function getActions() : java.NativeArray<javax.swing.Action>;
	
	/**
	* Processes action events occurring on this textfield by
	* dispatching them to any registered <code>ActionListener</code> objects.
	* This is normally called by the controller registered with
	* textfield.
	*/
	@:overload public function postActionEvent() : Void;
	
	/**
	* Gets the visibility of the text field.  This can
	* be adjusted to change the location of the visible
	* area if the size of the field is greater than
	* the area that was allocated to the field.
	*
	* <p>
	* The fields look-and-feel implementation manages
	* the values of the minimum, maximum, and extent
	* properties on the <code>BoundedRangeModel</code>.
	*
	* @return the visibility
	* @see BoundedRangeModel
	*/
	@:overload public function getHorizontalVisibility() : javax.swing.BoundedRangeModel;
	
	/**
	* Gets the scroll offset, in pixels.
	*
	* @return the offset >= 0
	*/
	@:overload public function getScrollOffset() : Int;
	
	/**
	* Sets the scroll offset, in pixels.
	*
	* @param scrollOffset the offset >= 0
	*/
	@:overload public function setScrollOffset(scrollOffset : Int) : Void;
	
	/**
	* Scrolls the field left or right.
	*
	* @param r the region to scroll
	*/
	@:overload override public function scrollRectToVisible(r : java.awt.Rectangle) : Void;
	
	/**
	* Name of the action to send notification that the
	* contents of the field have been accepted.  Typically
	* this is bound to a carriage-return.
	*/
	public static var notifyAction(default, null) : String;
	
	/**
	* Returns a string representation of this <code>JTextField</code>.
	* This method is intended to be used only for debugging purposes,
	* and the content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JTextField</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with this
	* <code>JTextField</code>. For <code>JTextFields</code>,
	* the <code>AccessibleContext</code> takes the form of an
	* <code>AccessibleJTextField</code>.
	* A new <code>AccessibleJTextField</code> instance is created
	* if necessary.
	*
	* @return an <code>AccessibleJTextField</code> that serves as the
	*         <code>AccessibleContext</code> of this <code>JTextField</code>
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
@:native('javax$swing$JTextField$TextFieldActionPropertyChangeListener') @:internal extern class JTextField_TextFieldActionPropertyChangeListener extends javax.swing.ActionPropertyChangeListener<JTextField>
{
	@:overload private function actionPropertyChanged(textField : JTextField, action : javax.swing.Action, e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$JTextField$NotifyAction') @:internal extern class JTextField_NotifyAction extends javax.swing.text.TextAction
{
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
@:native('javax$swing$JTextField$ScrollRepainter') @:internal extern class JTextField_ScrollRepainter implements javax.swing.event.ChangeListener implements java.io.Serializable
{
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JTextField</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to text field user-interface
* elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JTextField$AccessibleJTextField') extern class JTextField_AccessibleJTextField extends javax.swing.text.JTextComponent.JTextComponent_AccessibleJTextComponent
{
	/**
	* Gets the state set of this object.
	*
	* @return an instance of AccessibleStateSet describing the states
	* of the object
	* @see AccessibleState
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	
}
