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
* Defines common behaviors for buttons and menu items.
* <p>
* Buttons can be configured, and to some degree controlled, by
* <code><a href="Action.html">Action</a></code>s.  Using an
* <code>Action</code> with a button has many benefits beyond directly
* configuring a button.  Refer to <a href="Action.html#buttonActions">
* Swing Components Supporting <code>Action</code></a> for more
* details, and you can find more information in <a
* href="http://java.sun.com/docs/books/tutorial/uiswing/misc/action.html">How
* to Use Actions</a>, a section in <em>The Java Tutorial</em>.
* <p>
* For further information see
* <a
href="http://java.sun.com/docs/books/tutorial/uiswing/components/button.html">How to Use Buttons, Check Boxes, and Radio Buttons</a>,
* a section in <em>The Java Tutorial</em>.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @author Jeff Dinkins
*/
extern class AbstractButton extends javax.swing.JComponent implements java.awt.ItemSelectable implements javax.swing.SwingConstants
{
	/** Identifies a change in the button model. */
	public static var MODEL_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies a change in the button's text. */
	public static var TEXT_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies a change to the button's mnemonic. */
	public static var MNEMONIC_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies a change in the button's margins. */
	public static var MARGIN_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies a change in the button's vertical alignment. */
	public static var VERTICAL_ALIGNMENT_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies a change in the button's horizontal alignment. */
	public static var HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies a change in the button's vertical text position. */
	public static var VERTICAL_TEXT_POSITION_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies a change in the button's horizontal text position. */
	public static var HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change to having the border drawn,
	* or having it not drawn.
	*/
	public static var BORDER_PAINTED_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change to having the border highlighted when focused,
	* or not.
	*/
	public static var FOCUS_PAINTED_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change from rollover enabled to disabled or back
	* to enabled.
	*/
	public static var ROLLOVER_ENABLED_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change to having the button paint the content area.
	*/
	public static var CONTENT_AREA_FILLED_CHANGED_PROPERTY(default, null) : String;
	
	/** Identifies a change to the icon that represents the button. */
	public static var ICON_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change to the icon used when the button has been
	* pressed.
	*/
	public static var PRESSED_ICON_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change to the icon used when the button has
	* been selected.
	*/
	public static var SELECTED_ICON_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change to the icon used when the cursor is over
	* the button.
	*/
	public static var ROLLOVER_ICON_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change to the icon used when the cursor is
	* over the button and it has been selected.
	*/
	public static var ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change to the icon used when the button has
	* been disabled.
	*/
	public static var DISABLED_ICON_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Identifies a change to the icon used when the button has been
	* disabled and selected.
	*/
	public static var DISABLED_SELECTED_ICON_CHANGED_PROPERTY(default, null) : String;
	
	/** The data model that determines the button's state. */
	private var model : javax.swing.ButtonModel;
	
	/**
	* The button model's <code>changeListener</code>.
	*/
	private var changeListener : javax.swing.event.ChangeListener;
	
	/**
	* The button model's <code>ActionListener</code>.
	*/
	private var actionListener : java.awt.event.ActionListener;
	
	/**
	* The button model's <code>ItemListener</code>.
	*/
	private var itemListener : java.awt.event.ItemListener;
	
	/**
	* Only one <code>ChangeEvent</code> is needed per button
	* instance since the
	* event's only state is the source property.  The source of events
	* generated is always "this".
	*/
	@:transient private var changeEvent : javax.swing.event.ChangeEvent;
	
	/**
	* Sets the <code>hideActionText</code> property, which determines
	* whether the button displays text from the <code>Action</code>.
	* This is useful only if an <code>Action</code> has been
	* installed on the button.
	*
	* @param hideActionText <code>true</code> if the button's
	*                       <code>text</code> property should not reflect
	*                       that of the <code>Action</code>; the default is
	*                       <code>false</code>
	* @see <a href="Action.html#buttonActions">Swing Components Supporting
	*      <code>Action</code></a>
	* @since 1.6
	* @beaninfo
	*        bound: true
	*    expert: true
	*  description: Whether the text of the button should come from
	*               the <code>Action</code>.
	*/
	@:require(java6) @:overload public function setHideActionText(hideActionText : Bool) : Void;
	
	/**
	* Returns the value of the <code>hideActionText</code> property, which
	* determines whether the button displays text from the
	* <code>Action</code>.  This is useful only if an <code>Action</code>
	* has been installed on the button.
	*
	* @return <code>true</code> if the button's <code>text</code>
	*         property should not reflect that of the
	*         <code>Action</code>; the default is <code>false</code>
	* @since 1.6
	*/
	@:require(java6) @:overload public function getHideActionText() : Bool;
	
	/**
	* Returns the button's text.
	* @return the buttons text
	* @see #setText
	*/
	@:overload public function getText() : String;
	
	/**
	* Sets the button's text.
	* @param text the string used to set the text
	* @see #getText
	* @beaninfo
	*        bound: true
	*    preferred: true
	*    attribute: visualUpdate true
	*  description: The button's text.
	*/
	@:overload public function setText(text : String) : Void;
	
	/**
	* Returns the state of the button. True if the
	* toggle button is selected, false if it's not.
	* @return true if the toggle button is selected, otherwise false
	*/
	@:overload public function isSelected() : Bool;
	
	/**
	* Sets the state of the button. Note that this method does not
	* trigger an <code>actionEvent</code>.
	* Call <code>doClick</code> to perform a programatic action change.
	*
	* @param b  true if the button is selected, otherwise false
	*/
	@:overload public function setSelected(b : Bool) : Void;
	
	/**
	* Programmatically perform a "click". This does the same
	* thing as if the user had pressed and released the button.
	*/
	@:overload public function doClick() : Void;
	
	/**
	* Programmatically perform a "click". This does the same
	* thing as if the user had pressed and released the button.
	* The button stays visually "pressed" for <code>pressTime</code>
	*  milliseconds.
	*
	* @param pressTime the time to "hold down" the button, in milliseconds
	*/
	@:overload public function doClick(pressTime : Int) : Void;
	
	/**
	* Sets space for margin between the button's border and
	* the label. Setting to <code>null</code> will cause the button to
	* use the default margin.  The button's default <code>Border</code>
	* object will use this value to create the proper margin.
	* However, if a non-default border is set on the button,
	* it is that <code>Border</code> object's responsibility to create the
	* appropriate margin space (else this property will
	* effectively be ignored).
	*
	* @param m the space between the border and the label
	*
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The space between the button's border and the label.
	*/
	@:overload public function setMargin(m : java.awt.Insets) : Void;
	
	/**
	* Returns the margin between the button's border and
	* the label.
	*
	* @return an <code>Insets</code> object specifying the margin
	*          between the botton's border and the label
	* @see #setMargin
	*/
	@:overload public function getMargin() : java.awt.Insets;
	
	/**
	* Returns the default icon.
	* @return the default <code>Icon</code>
	* @see #setIcon
	*/
	@:overload public function getIcon() : javax.swing.Icon;
	
	/**
	* Sets the button's default icon. This icon is
	* also used as the "pressed" and "disabled" icon if
	* there is no explicitly set pressed icon.
	*
	* @param defaultIcon the icon used as the default image
	* @see #getIcon
	* @see #setPressedIcon
	* @beaninfo
	*           bound: true
	*       attribute: visualUpdate true
	*     description: The button's default icon
	*/
	@:overload public function setIcon(defaultIcon : javax.swing.Icon) : Void;
	
	/**
	* Returns the pressed icon for the button.
	* @return the <code>pressedIcon</code> property
	* @see #setPressedIcon
	*/
	@:overload public function getPressedIcon() : javax.swing.Icon;
	
	/**
	* Sets the pressed icon for the button.
	* @param pressedIcon the icon used as the "pressed" image
	* @see #getPressedIcon
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The pressed icon for the button.
	*/
	@:overload public function setPressedIcon(pressedIcon : javax.swing.Icon) : Void;
	
	/**
	* Returns the selected icon for the button.
	* @return the <code>selectedIcon</code> property
	* @see #setSelectedIcon
	*/
	@:overload public function getSelectedIcon() : javax.swing.Icon;
	
	/**
	* Sets the selected icon for the button.
	* @param selectedIcon the icon used as the "selected" image
	* @see #getSelectedIcon
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The selected icon for the button.
	*/
	@:overload public function setSelectedIcon(selectedIcon : javax.swing.Icon) : Void;
	
	/**
	* Returns the rollover icon for the button.
	* @return the <code>rolloverIcon</code> property
	* @see #setRolloverIcon
	*/
	@:overload public function getRolloverIcon() : javax.swing.Icon;
	
	/**
	* Sets the rollover icon for the button.
	* @param rolloverIcon the icon used as the "rollover" image
	* @see #getRolloverIcon
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The rollover icon for the button.
	*/
	@:overload public function setRolloverIcon(rolloverIcon : javax.swing.Icon) : Void;
	
	/**
	* Returns the rollover selection icon for the button.
	* @return the <code>rolloverSelectedIcon</code> property
	* @see #setRolloverSelectedIcon
	*/
	@:overload public function getRolloverSelectedIcon() : javax.swing.Icon;
	
	/**
	* Sets the rollover selected icon for the button.
	* @param rolloverSelectedIcon the icon used as the
	*          "selected rollover" image
	* @see #getRolloverSelectedIcon
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The rollover selected icon for the button.
	*/
	@:overload public function setRolloverSelectedIcon(rolloverSelectedIcon : javax.swing.Icon) : Void;
	
	/**
	* Returns the icon used by the button when it's disabled.
	* If no disabled icon has been set this will forward the call to
	* the look and feel to construct an appropriate disabled Icon.
	* <p>
	* Some look and feels might not render the disabled Icon, in which
	* case they will ignore this.
	*
	* @return the <code>disabledIcon</code> property
	* @see #getPressedIcon
	* @see #setDisabledIcon
	* @see javax.swing.LookAndFeel#getDisabledIcon
	*/
	@:overload public function getDisabledIcon() : javax.swing.Icon;
	
	/**
	* Sets the disabled icon for the button.
	* @param disabledIcon the icon used as the disabled image
	* @see #getDisabledIcon
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The disabled icon for the button.
	*/
	@:overload public function setDisabledIcon(disabledIcon : javax.swing.Icon) : Void;
	
	/**
	* Returns the icon used by the button when it's disabled and selected.
	* If no disabled selection icon has been set, this will forward
	* the call to the LookAndFeel to construct an appropriate disabled
	* Icon from the selection icon if it has been set and to
	* <code>getDisabledIcon()</code> otherwise.
	* <p>
	* Some look and feels might not render the disabled selected Icon, in
	* which case they will ignore this.
	*
	* @return the <code>disabledSelectedIcon</code> property
	* @see #getDisabledIcon
	* @see #setDisabledSelectedIcon
	* @see javax.swing.LookAndFeel#getDisabledSelectedIcon
	*/
	@:overload public function getDisabledSelectedIcon() : javax.swing.Icon;
	
	/**
	* Sets the disabled selection icon for the button.
	* @param disabledSelectedIcon the icon used as the disabled
	*          selection image
	* @see #getDisabledSelectedIcon
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The disabled selection icon for the button.
	*/
	@:overload public function setDisabledSelectedIcon(disabledSelectedIcon : javax.swing.Icon) : Void;
	
	/**
	* Returns the vertical alignment of the text and icon.
	*
	* @return the <code>verticalAlignment</code> property, one of the
	*          following values:
	* <ul>
	* <li>{@code SwingConstants.CENTER} (the default)
	* <li>{@code SwingConstants.TOP}
	* <li>{@code SwingConstants.BOTTOM}
	* </ul>
	*/
	@:overload public function getVerticalAlignment() : Int;
	
	/**
	* Sets the vertical alignment of the icon and text.
	* @param alignment one of the following values:
	* <ul>
	* <li>{@code SwingConstants.CENTER} (the default)
	* <li>{@code SwingConstants.TOP}
	* <li>{@code SwingConstants.BOTTOM}
	* </ul>
	* @throws IllegalArgumentException if the alignment is not one of the legal
	*         values listed above
	* @beaninfo
	*        bound: true
	*         enum: TOP    SwingConstants.TOP
	*               CENTER SwingConstants.CENTER
	*               BOTTOM  SwingConstants.BOTTOM
	*    attribute: visualUpdate true
	*  description: The vertical alignment of the icon and text.
	*/
	@:overload public function setVerticalAlignment(alignment : Int) : Void;
	
	/**
	* Returns the horizontal alignment of the icon and text.
	* {@code AbstractButton}'s default is {@code SwingConstants.CENTER},
	* but subclasses such as {@code JCheckBox} may use a different default.
	*
	* @return the <code>horizontalAlignment</code> property,
	*             one of the following values:
	* <ul>
	*   <li>{@code SwingConstants.RIGHT}
	*   <li>{@code SwingConstants.LEFT}
	*   <li>{@code SwingConstants.CENTER}
	*   <li>{@code SwingConstants.LEADING}
	*   <li>{@code SwingConstants.TRAILING}
	* </ul>
	*/
	@:overload public function getHorizontalAlignment() : Int;
	
	/**
	* Sets the horizontal alignment of the icon and text.
	* {@code AbstractButton}'s default is {@code SwingConstants.CENTER},
	* but subclasses such as {@code JCheckBox} may use a different default.
	*
	* @param alignment the alignment value, one of the following values:
	* <ul>
	*   <li>{@code SwingConstants.RIGHT}
	*   <li>{@code SwingConstants.LEFT}
	*   <li>{@code SwingConstants.CENTER}
	*   <li>{@code SwingConstants.LEADING}
	*   <li>{@code SwingConstants.TRAILING}
	* </ul>
	* @throws IllegalArgumentException if the alignment is not one of the
	*         valid values
	* @beaninfo
	*        bound: true
	*         enum: LEFT     SwingConstants.LEFT
	*               CENTER   SwingConstants.CENTER
	*               RIGHT    SwingConstants.RIGHT
	*               LEADING  SwingConstants.LEADING
	*               TRAILING SwingConstants.TRAILING
	*    attribute: visualUpdate true
	*  description: The horizontal alignment of the icon and text.
	*/
	@:overload public function setHorizontalAlignment(alignment : Int) : Void;
	
	/**
	* Returns the vertical position of the text relative to the icon.
	* @return the <code>verticalTextPosition</code> property,
	*          one of the following values:
	* <ul>
	* <li>{@code SwingConstants.CENTER} (the default)
	* <li>{@code SwingConstants.TOP}
	* <li>{@code SwingConstants.BOTTOM}
	* </ul>
	*/
	@:overload public function getVerticalTextPosition() : Int;
	
	/**
	* Sets the vertical position of the text relative to the icon.
	* @param textPosition  one of the following values:
	* <ul>
	* <li>{@code SwingConstants.CENTER} (the default)
	* <li>{@code SwingConstants.TOP}
	* <li>{@code SwingConstants.BOTTOM}
	* </ul>
	* @beaninfo
	*        bound: true
	*         enum: TOP    SwingConstants.TOP
	*               CENTER SwingConstants.CENTER
	*               BOTTOM SwingConstants.BOTTOM
	*    attribute: visualUpdate true
	*  description: The vertical position of the text relative to the icon.
	*/
	@:overload public function setVerticalTextPosition(textPosition : Int) : Void;
	
	/**
	* Returns the horizontal position of the text relative to the icon.
	* @return the <code>horizontalTextPosition</code> property,
	*          one of the following values:
	* <ul>
	* <li>{@code SwingConstants.RIGHT}
	* <li>{@code SwingConstants.LEFT}
	* <li>{@code SwingConstants.CENTER}
	* <li>{@code SwingConstants.LEADING}
	* <li>{@code SwingConstants.TRAILING} (the default)
	* </ul>
	*/
	@:overload public function getHorizontalTextPosition() : Int;
	
	/**
	* Sets the horizontal position of the text relative to the icon.
	* @param textPosition one of the following values:
	* <ul>
	* <li>{@code SwingConstants.RIGHT}
	* <li>{@code SwingConstants.LEFT}
	* <li>{@code SwingConstants.CENTER}
	* <li>{@code SwingConstants.LEADING}
	* <li>{@code SwingConstants.TRAILING} (the default)
	* </ul>
	* @exception IllegalArgumentException if <code>textPosition</code>
	*          is not one of the legal values listed above
	* @beaninfo
	*        bound: true
	*         enum: LEFT     SwingConstants.LEFT
	*               CENTER   SwingConstants.CENTER
	*               RIGHT    SwingConstants.RIGHT
	*               LEADING  SwingConstants.LEADING
	*               TRAILING SwingConstants.TRAILING
	*    attribute: visualUpdate true
	*  description: The horizontal position of the text relative to the icon.
	*/
	@:overload public function setHorizontalTextPosition(textPosition : Int) : Void;
	
	/**
	* Returns the amount of space between the text and the icon
	* displayed in this button.
	*
	* @return an int equal to the number of pixels between the text
	*         and the icon.
	* @since 1.4
	* @see #setIconTextGap
	*/
	@:require(java4) @:overload public function getIconTextGap() : Int;
	
	/**
	* If both the icon and text properties are set, this property
	* defines the space between them.
	* <p>
	* The default value of this property is 4 pixels.
	* <p>
	* This is a JavaBeans bound property.
	*
	* @since 1.4
	* @see #getIconTextGap
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: If both the icon and text properties are set, this
	*               property defines the space between them.
	*/
	@:require(java4) @:overload public function setIconTextGap(iconTextGap : Int) : Void;
	
	/**
	* Verify that the {@code key} argument is a legal value for the
	* {@code horizontalAlignment} and {@code horizontalTextPosition}
	* properties. Valid values are:
	* <ul>
	*   <li>{@code SwingConstants.RIGHT}
	*   <li>{@code SwingConstants.LEFT}
	*   <li>{@code SwingConstants.CENTER}
	*   <li>{@code SwingConstants.LEADING}
	*   <li>{@code SwingConstants.TRAILING}
	* </ul>
	*
	* @param key the property value to check
	* @param exception the message to use in the
	*        {@code IllegalArgumentException} that is thrown for an invalid
	*        value
	* @exception IllegalArgumentException if key is not one of the legal
	*            values listed above
	* @see #setHorizontalTextPosition
	* @see #setHorizontalAlignment
	*/
	@:overload private function checkHorizontalKey(key : Int, exception : String) : Int;
	
	/**
	* Verify that the {@code key} argument is a legal value for the
	* vertical properties. Valid values are:
	* <ul>
	*   <li>{@code SwingConstants.CENTER}
	*   <li>{@code SwingConstants.TOP}
	*   <li>{@code SwingConstants.BOTTOM}
	* </ul>
	*
	* @param key the property value to check
	* @param exception the message to use in the
	*        {@code IllegalArgumentException} that is thrown for an invalid
	*        value
	* @exception IllegalArgumentException if key is not one of the legal
	*            values listed above
	*/
	@:overload private function checkVerticalKey(key : Int, exception : String) : Int;
	
	/**
	*{@inheritDoc}
	*
	* @since 1.6
	*/
	@:require(java6) @:overload override public function removeNotify() : Void;
	
	/**
	* Sets the action command for this button.
	* @param actionCommand the action command for this button
	*/
	@:overload public function setActionCommand(actionCommand : String) : Void;
	
	/**
	* Returns the action command for this button.
	* @return the action command for this button
	*/
	@:overload public function getActionCommand() : String;
	
	/**
	* Sets the <code>Action</code>.
	* The new <code>Action</code> replaces any previously set
	* <code>Action</code> but does not affect <code>ActionListeners</code>
	* independently added with <code>addActionListener</code>.
	* If the <code>Action</code> is already a registered
	* <code>ActionListener</code> for the button, it is not re-registered.
	* <p>
	* Setting the <code>Action</code> results in immediately changing
	* all the properties described in <a href="Action.html#buttonActions">
	* Swing Components Supporting <code>Action</code></a>.
	* Subsequently, the button's properties are automatically updated
	* as the <code>Action</code>'s properties change.
	* <p>
	* This method uses three other methods to set
	* and help track the <code>Action</code>'s property values.
	* It uses the <code>configurePropertiesFromAction</code> method
	* to immediately change the button's properties.
	* To track changes in the <code>Action</code>'s property values,
	* this method registers the <code>PropertyChangeListener</code>
	* returned by <code>createActionPropertyChangeListener</code>. The
	* default {@code PropertyChangeListener} invokes the
	* {@code actionPropertyChanged} method when a property in the
	* {@code Action} changes.
	*
	* @param a the <code>Action</code> for the <code>AbstractButton</code>,
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
	* @return the <code>Action</code> for this <code>ActionEvent</code>
	*          source, or <code>null</code>
	* @since 1.3
	* @see Action
	* @see #setAction
	*/
	@:require(java3) @:overload public function getAction() : javax.swing.Action;
	
	/**
	* Sets the properties on this button to match those in the specified
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
	* Updates the button's state in response to property changes in the
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
	* @param action the <code>Action</code> associated with this button
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
	* inner class.  If you do the lifetime of the button will be tied to
	* that of the <code>Action</code>.
	*
	* @param a the button's action
	* @since 1.3
	* @see Action
	* @see #setAction
	*/
	@:require(java3) @:overload private function createActionPropertyChangeListener(a : javax.swing.Action) : java.beans.PropertyChangeListener;
	
	/**
	* Gets the <code>borderPainted</code> property.
	*
	* @return the value of the <code>borderPainted</code> property
	* @see #setBorderPainted
	*/
	@:overload public function isBorderPainted() : Bool;
	
	/**
	* Sets the <code>borderPainted</code> property.
	* If <code>true</code> and the button has a border,
	* the border is painted. The default value for the
	* <code>borderPainted</code> property is <code>true</code>.
	* <p/>
	* Some look and feels might not support
	* the <code>borderPainted</code> property,
	* in which case they ignore this.
	*
	* @param b if true and border property is not <code>null</code>,
	*          the border is painted
	* @see #isBorderPainted
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Whether the border should be painted.
	*/
	@:overload public function setBorderPainted(b : Bool) : Void;
	
	/**
	* Paint the button's border if <code>BorderPainted</code>
	* property is true and the button has a border.
	* @param g the <code>Graphics</code> context in which to paint
	*
	* @see #paint
	* @see #setBorder
	*/
	@:overload override private function paintBorder(g : java.awt.Graphics) : Void;
	
	/**
	* Gets the <code>paintFocus</code> property.
	*
	* @return the <code>paintFocus</code> property
	* @see #setFocusPainted
	*/
	@:overload public function isFocusPainted() : Bool;
	
	/**
	* Sets the <code>paintFocus</code> property, which must
	* be <code>true</code> for the focus state to be painted.
	* The default value for the <code>paintFocus</code> property
	* is <code>true</code>.
	* Some look and feels might not paint focus state;
	* they will ignore this property.
	*
	* @param b if <code>true</code>, the focus state should be painted
	* @see #isFocusPainted
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Whether focus should be painted
	*/
	@:overload public function setFocusPainted(b : Bool) : Void;
	
	/**
	* Gets the <code>contentAreaFilled</code> property.
	*
	* @return the <code>contentAreaFilled</code> property
	* @see #setContentAreaFilled
	*/
	@:overload public function isContentAreaFilled() : Bool;
	
	/**
	* Sets the <code>contentAreaFilled</code> property.
	* If <code>true</code> the button will paint the content
	* area.  If you wish to have a transparent button, such as
	* an icon only button, for example, then you should set
	* this to <code>false</code>. Do not call <code>setOpaque(false)</code>.
	* The default value for the the <code>contentAreaFilled</code>
	* property is <code>true</code>.
	* <p>
	* This function may cause the component's opaque property to change.
	* <p>
	* The exact behavior of calling this function varies on a
	* component-by-component and L&F-by-L&F basis.
	*
	* @param b if true, the content should be filled; if false
	*          the content area is not filled
	* @see #isContentAreaFilled
	* @see #setOpaque
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Whether the button should paint the content area
	*               or leave it transparent.
	*/
	@:overload public function setContentAreaFilled(b : Bool) : Void;
	
	/**
	* Gets the <code>rolloverEnabled</code> property.
	*
	* @return the value of the <code>rolloverEnabled</code> property
	* @see #setRolloverEnabled
	*/
	@:overload public function isRolloverEnabled() : Bool;
	
	/**
	* Sets the <code>rolloverEnabled</code> property, which
	* must be <code>true</code> for rollover effects to occur.
	* The default value for the <code>rolloverEnabled</code>
	* property is <code>false</code>.
	* Some look and feels might not implement rollover effects;
	* they will ignore this property.
	*
	* @param b if <code>true</code>, rollover effects should be painted
	* @see #isRolloverEnabled
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Whether rollover effects should be enabled.
	*/
	@:overload public function setRolloverEnabled(b : Bool) : Void;
	
	/**
	* Returns the keyboard mnemonic from the the current model.
	* @return the keyboard mnemonic from the model
	*/
	@:overload public function getMnemonic() : Int;
	
	/**
	* Sets the keyboard mnemonic on the current model.
	* The mnemonic is the key which when combined with the look and feel's
	* mouseless modifier (usually Alt) will activate this button
	* if focus is contained somewhere within this button's ancestor
	* window.
	* <p>
	* A mnemonic must correspond to a single key on the keyboard
	* and should be specified using one of the <code>VK_XXX</code>
	* keycodes defined in <code>java.awt.event.KeyEvent</code>.
	* These codes and the wider array of codes for international
	* keyboards may be obtained through
	* <code>java.awt.event.KeyEvent.getExtendedKeyCodeForChar</code>.
	* Mnemonics are case-insensitive, therefore a key event
	* with the corresponding keycode would cause the button to be
	* activated whether or not the Shift modifier was pressed.
	* <p>
	* If the character defined by the mnemonic is found within
	* the button's label string, the first occurrence of it
	* will be underlined to indicate the mnemonic to the user.
	*
	* @param mnemonic the key code which represents the mnemonic
	* @see     java.awt.event.KeyEvent
	* @see     #setDisplayedMnemonicIndex
	*
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: the keyboard character mnemonic
	*/
	@:overload public function setMnemonic(mnemonic : Int) : Void;
	
	/**
	* This method is now obsolete, please use <code>setMnemonic(int)</code>
	* to set the mnemonic for a button.  This method is only designed
	* to handle character values which fall between 'a' and 'z' or
	* 'A' and 'Z'.
	*
	* @param mnemonic  a char specifying the mnemonic value
	* @see #setMnemonic(int)
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: the keyboard character mnemonic
	*/
	@:overload public function setMnemonic(mnemonic : java.StdTypes.Char16) : Void;
	
	/**
	* Provides a hint to the look and feel as to which character in the
	* text should be decorated to represent the mnemonic. Not all look and
	* feels may support this. A value of -1 indicates either there is no
	* mnemonic, the mnemonic character is not contained in the string, or
	* the developer does not wish the mnemonic to be displayed.
	* <p>
	* The value of this is updated as the properties relating to the
	* mnemonic change (such as the mnemonic itself, the text...).
	* You should only ever have to call this if
	* you do not wish the default character to be underlined. For example, if
	* the text was 'Save As', with a mnemonic of 'a', and you wanted the 'A'
	* to be decorated, as 'Save <u>A</u>s', you would have to invoke
	* <code>setDisplayedMnemonicIndex(5)</code> after invoking
	* <code>setMnemonic(KeyEvent.VK_A)</code>.
	*
	* @since 1.4
	* @param index Index into the String to underline
	* @exception IllegalArgumentException will be thrown if <code>index</code>
	*            is &gt;= length of the text, or &lt; -1
	* @see #getDisplayedMnemonicIndex
	*
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: the index into the String to draw the keyboard character
	*               mnemonic at
	*/
	@:require(java4) @:overload public function setDisplayedMnemonicIndex(index : Int) : Void;
	
	/**
	* Returns the character, as an index, that the look and feel should
	* provide decoration for as representing the mnemonic character.
	*
	* @since 1.4
	* @return index representing mnemonic character
	* @see #setDisplayedMnemonicIndex
	*/
	@:require(java4) @:overload public function getDisplayedMnemonicIndex() : Int;
	
	/**
	* Sets the amount of time (in milliseconds) required between
	* mouse press events for the button to generate the corresponding
	* action events.  After the initial mouse press occurs (and action
	* event generated) any subsequent mouse press events which occur
	* on intervals less than the threshhold will be ignored and no
	* corresponding action event generated.  By default the threshhold is 0,
	* which means that for each mouse press, an action event will be
	* fired, no matter how quickly the mouse clicks occur.  In buttons
	* where this behavior is not desirable (for example, the "OK" button
	* in a dialog), this threshhold should be set to an appropriate
	* positive value.
	*
	* @see #getMultiClickThreshhold
	* @param threshhold the amount of time required between mouse
	*        press events to generate corresponding action events
	* @exception   IllegalArgumentException if threshhold < 0
	* @since 1.4
	*/
	@:require(java4) @:overload public function setMultiClickThreshhold(threshhold : haxe.Int64) : Void;
	
	/**
	* Gets the amount of time (in milliseconds) required between
	* mouse press events for the button to generate the corresponding
	* action events.
	*
	* @see #setMultiClickThreshhold
	* @return the amount of time required between mouse press events
	*         to generate corresponding action events
	* @since 1.4
	*/
	@:require(java4) @:overload public function getMultiClickThreshhold() : haxe.Int64;
	
	/**
	* Returns the model that this button represents.
	* @return the <code>model</code> property
	* @see #setModel
	*/
	@:overload public function getModel() : javax.swing.ButtonModel;
	
	/**
	* Sets the model that this button represents.
	* @param newModel the new <code>ButtonModel</code>
	* @see #getModel
	* @beaninfo
	*        bound: true
	*  description: Model that the Button uses.
	*/
	@:overload public function setModel(newModel : javax.swing.ButtonModel) : Void;
	
	/**
	* Returns the L&F object that renders this component.
	* @return the ButtonUI object
	* @see #setUI
	*/
	@:overload public function getUI() : javax.swing.plaf.ButtonUI;
	
	/**
	* Sets the L&F object that renders this component.
	* @param ui the <code>ButtonUI</code> L&F object
	* @see #getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.ButtonUI) : Void;
	
	/**
	* Resets the UI property to a value from the current look
	* and feel.  Subtypes of <code>AbstractButton</code>
	* should override this to update the UI. For
	* example, <code>JButton</code> might do the following:
	* <pre>
	*      setUI((ButtonUI)UIManager.getUI(
	*          "ButtonUI", "javax.swing.plaf.basic.BasicButtonUI", this));
	* </pre>
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Adds the specified component to this container at the specified
	* index, refer to
	* {@link java.awt.Container#addImpl(Component, Object, int)}
	* for a complete description of this method.
	*
	* @param     comp the component to be added
	* @param     constraints an object expressing layout constraints
	*                 for this component
	* @param     index the position in the container's list at which to
	*                 insert the component, where <code>-1</code>
	*                 means append to the end
	* @exception IllegalArgumentException if <code>index</code> is invalid
	* @exception IllegalArgumentException if adding the container's parent
	*                  to itself
	* @exception IllegalArgumentException if adding a window to a container
	* @since 1.5
	*/
	@:require(java5) @:overload override private function addImpl(comp : java.awt.Component, constraints : Dynamic, index : Int) : Void;
	
	/**
	* Sets the layout manager for this container, refer to
	* {@link java.awt.Container#setLayout(LayoutManager)}
	* for a complete description of this method.
	*
	* @param mgr the specified layout manager
	* @since 1.5
	*/
	@:require(java5) @:overload override public function setLayout(mgr : java.awt.LayoutManager) : Void;
	
	/**
	* Adds a <code>ChangeListener</code> to the button.
	* @param l the listener to be added
	*/
	@:overload public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes a ChangeListener from the button.
	* @param l the listener to be removed
	*/
	@:overload public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the <code>ChangeListener</code>s added
	* to this AbstractButton with addChangeListener().
	*
	* @return all of the <code>ChangeListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getChangeListeners() : java.NativeArray<javax.swing.event.ChangeListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created.
	* @see EventListenerList
	*/
	@:overload private function fireStateChanged() : Void;
	
	/**
	* Adds an <code>ActionListener</code> to the button.
	* @param l the <code>ActionListener</code> to be added
	*/
	@:overload public function addActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Removes an <code>ActionListener</code> from the button.
	* If the listener is the currently set <code>Action</code>
	* for the button, then the <code>Action</code>
	* is set to <code>null</code>.
	*
	* @param l the listener to be removed
	*/
	@:overload public function removeActionListener(l : java.awt.event.ActionListener) : Void;
	
	/**
	* Returns an array of all the <code>ActionListener</code>s added
	* to this AbstractButton with addActionListener().
	*
	* @return all of the <code>ActionListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getActionListeners() : java.NativeArray<java.awt.event.ActionListener>;
	
	/**
	* Subclasses that want to handle <code>ChangeEvents</code> differently
	* can override this to return another <code>ChangeListener</code>
	* implementation.
	*
	* @return the new <code>ChangeListener</code>
	*/
	@:overload private function createChangeListener() : javax.swing.event.ChangeListener;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the <code>event</code>
	* parameter.
	*
	* @param event  the <code>ActionEvent</code> object
	* @see EventListenerList
	*/
	@:overload private function fireActionPerformed(event : java.awt.event.ActionEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the <code>event</code> parameter.
	*
	* @param event  the <code>ItemEvent</code> object
	* @see EventListenerList
	*/
	@:overload private function fireItemStateChanged(event : java.awt.event.ItemEvent) : Void;
	
	@:overload private function createActionListener() : java.awt.event.ActionListener;
	
	@:overload private function createItemListener() : java.awt.event.ItemListener;
	
	/**
	* Enables (or disables) the button.
	* @param b  true to enable the button, otherwise false
	*/
	@:overload override public function setEnabled(b : Bool) : Void;
	
	/**
	* Returns the label text.
	*
	* @return a <code>String</code> containing the label
	* @deprecated - Replaced by <code>getText</code>
	*/
	@:overload public function getLabel() : String;
	
	/**
	* Sets the label text.
	*
	* @param label  a <code>String</code> containing the text
	* @deprecated - Replaced by <code>setText(text)</code>
	* @beaninfo
	*        bound: true
	*  description: Replace by setText(text)
	*/
	@:overload public function setLabel(label : String) : Void;
	
	/**
	* Adds an <code>ItemListener</code> to the <code>checkbox</code>.
	* @param l  the <code>ItemListener</code> to be added
	*/
	@:overload public function addItemListener(l : java.awt.event.ItemListener) : Void;
	
	/**
	* Removes an <code>ItemListener</code> from the button.
	* @param l the <code>ItemListener</code> to be removed
	*/
	@:overload public function removeItemListener(l : java.awt.event.ItemListener) : Void;
	
	/**
	* Returns an array of all the <code>ItemListener</code>s added
	* to this AbstractButton with addItemListener().
	*
	* @return all of the <code>ItemListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getItemListeners() : java.NativeArray<java.awt.event.ItemListener>;
	
	/**
	* Returns an array (length 1) containing the label or
	* <code>null</code> if the button is not selected.
	*
	* @return an array containing 1 Object: the text of the button,
	*         if the item is selected; otherwise <code>null</code>
	*/
	@:overload public function getSelectedObjects() : java.NativeArray<Dynamic>;
	
	@:overload private function init(text : String, icon : javax.swing.Icon) : Void;
	
	/**
	* This is overridden to return false if the current <code>Icon</code>'s
	* <code>Image</code> is not equal to the
	* passed in <code>Image</code> <code>img</code>.
	*
	* @param img  the <code>Image</code> to be compared
	* @param infoflags flags used to repaint the button when the image
	*          is updated and which determine how much is to be painted
	* @param x  the x coordinate
	* @param y  the y coordinate
	* @param w  the width
	* @param h  the height
	* @see     java.awt.image.ImageObserver
	* @see     java.awt.Component#imageUpdate(java.awt.Image, int, int, int, int, int)
	*/
	@:overload override public function imageUpdate(img : java.awt.Image, infoflags : Int, x : Int, y : Int, w : Int, h : Int) : Bool;
	
	/**
	* Returns a string representation of this <code>AbstractButton</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	* <P>
	* Overriding <code>paramString</code> to provide information about the
	* specific new aspects of the JFC components.
	*
	* @return  a string representation of this <code>AbstractButton</code>
	*/
	@:overload override private function paramString() : String;
	
	
}
@:native('javax$swing$AbstractButton$ButtonActionPropertyChangeListener') @:internal extern class AbstractButton_ButtonActionPropertyChangeListener extends javax.swing.ActionPropertyChangeListener<AbstractButton>
{
	@:overload private function actionPropertyChanged(button : AbstractButton, action : javax.swing.Action, e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* Extends <code>ChangeListener</code> to be serializable.
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
@:native('javax$swing$AbstractButton$ButtonChangeListener') extern class AbstractButton_ButtonChangeListener implements javax.swing.event.ChangeListener implements java.io.Serializable
{
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
@:native('javax$swing$AbstractButton$Handler') @:internal extern class AbstractButton_Handler implements java.awt.event.ActionListener implements javax.swing.event.ChangeListener implements java.awt.event.ItemListener implements java.io.Serializable
{
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload public function actionPerformed(event : java.awt.event.ActionEvent) : Void;
	
	@:overload public function itemStateChanged(event : java.awt.event.ItemEvent) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>AbstractButton</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to button and menu item
* user-interface elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
* @since 1.4
*/
@:require(java4) @:native('javax$swing$AbstractButton$AccessibleAbstractButton') extern class AbstractButton_AccessibleAbstractButton extends AccessibleJComponent implements javax.accessibility.AccessibleAction implements javax.accessibility.AccessibleValue implements javax.accessibility.AccessibleText implements javax.accessibility.AccessibleExtendedComponent
{
	/**
	* Returns the accessible name of this object.
	*
	* @return the localized name of the object -- can be
	*              <code>null</code> if this
	*              object does not have a name
	*/
	@:overload public function getAccessibleName() : String;
	
	/**
	* Get the AccessibleIcons associated with this object if one
	* or more exist.  Otherwise return null.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleIcon() : java.NativeArray<javax.accessibility.AccessibleIcon>;
	
	/**
	* Get the state set of this object.
	*
	* @return an instance of AccessibleState containing the current state
	* of the object
	* @see AccessibleState
	*/
	@:overload public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Get the AccessibleRelationSet associated with this object if one
	* exists.  Otherwise return null.
	* @see AccessibleRelation
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleRelationSet() : javax.accessibility.AccessibleRelationSet;
	
	/**
	* Get the AccessibleAction associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleAction interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Get the AccessibleValue associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleValue interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Returns the number of Actions available in this object.  The
	* default behavior of a button is to have one action - toggle
	* the button.
	*
	* @return 1, the number of Actions in this object
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
	* Get the value of this object as a Number.
	*
	* @return An Integer of 0 if this isn't selected or an Integer of 1 if
	* this is selected.
	* @see AbstractButton#isSelected
	*/
	@:overload public function getCurrentAccessibleValue() : java.lang.Number;
	
	/**
	* Set the value of this object as a Number.
	*
	* @return True if the value was set.
	*/
	@:overload public function setCurrentAccessibleValue(n : java.lang.Number) : Bool;
	
	/**
	* Get the minimum value of this object as a Number.
	*
	* @return an Integer of 0.
	*/
	@:overload public function getMinimumAccessibleValue() : java.lang.Number;
	
	/**
	* Get the maximum value of this object as a Number.
	*
	* @return An Integer of 1.
	*/
	@:overload public function getMaximumAccessibleValue() : java.lang.Number;
	
	/* AccessibleText ---------- */
	@:overload public function getAccessibleText() : javax.accessibility.AccessibleText;
	
	/**
	* Given a point in local coordinates, return the zero-based index
	* of the character under that Point.  If the point is invalid,
	* this method returns -1.
	*
	* Note: the AbstractButton must have a valid size (e.g. have
	* been added to a parent container whose ancestor container
	* is a valid top-level window) for this method to be able
	* to return a meaningful value.
	*
	* @param p the Point in local coordinates
	* @return the zero-based index of the character under Point p; if
	* Point is invalid returns -1.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getIndexAtPoint(p : java.awt.Point) : Int;
	
	/**
	* Determine the bounding box of the character at the given
	* index into the string.  The bounds are returned in local
	* coordinates.  If the index is invalid an empty rectangle is
	* returned.
	*
	* Note: the AbstractButton must have a valid size (e.g. have
	* been added to a parent container whose ancestor container
	* is a valid top-level window) for this method to be able
	* to return a meaningful value.
	*
	* @param i the index into the String
	* @return the screen coordinates of the character's the bounding box,
	* if index is invalid returns an empty rectangle.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getCharacterBounds(i : Int) : java.awt.Rectangle;
	
	/**
	* Return the number of characters (valid indicies)
	*
	* @return the number of characters
	* @since 1.3
	*/
	@:require(java3) @:overload public function getCharCount() : Int;
	
	/**
	* Return the zero-based offset of the caret.
	*
	* Note: That to the right of the caret will have the same index
	* value as the offset (the caret is between two characters).
	* @return the zero-based offset of the caret.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getCaretPosition() : Int;
	
	/**
	* Returns the String at a given index.
	*
	* @param part the AccessibleText.CHARACTER, AccessibleText.WORD,
	* or AccessibleText.SENTENCE to retrieve
	* @param index an index within the text >= 0
	* @return the letter, word, or sentence,
	*   null for an invalid index or part
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAtIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the String after a given index.
	*
	* @param part the AccessibleText.CHARACTER, AccessibleText.WORD,
	* or AccessibleText.SENTENCE to retrieve
	* @param index an index within the text >= 0
	* @return the letter, word, or sentence, null for an invalid
	*  index or part
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAfterIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the String before a given index.
	*
	* @param part the AccessibleText.CHARACTER, AccessibleText.WORD,
	*   or AccessibleText.SENTENCE to retrieve
	* @param index an index within the text >= 0
	* @return the letter, word, or sentence, null for an invalid index
	*  or part
	* @since 1.3
	*/
	@:require(java3) @:overload public function getBeforeIndex(part : Int, index : Int) : String;
	
	/**
	* Return the AttributeSet for a given character at a given index
	*
	* @param i the zero-based index into the text
	* @return the AttributeSet of the character
	* @since 1.3
	*/
	@:require(java3) @:overload public function getCharacterAttribute(i : Int) : javax.swing.text.AttributeSet;
	
	/**
	* Returns the start offset within the selected text.
	* If there is no selection, but there is
	* a caret, the start and end offsets will be the same.
	*
	* @return the index into the text of the start of the selection
	* @since 1.3
	*/
	@:require(java3) @:overload public function getSelectionStart() : Int;
	
	/**
	* Returns the end offset within the selected text.
	* If there is no selection, but there is
	* a caret, the start and end offsets will be the same.
	*
	* @return the index into teh text of the end of the selection
	* @since 1.3
	*/
	@:require(java3) @:overload public function getSelectionEnd() : Int;
	
	/**
	* Returns the portion of the text that is selected.
	*
	* @return the String portion of the text that is selected
	* @since 1.3
	*/
	@:require(java3) @:overload public function getSelectedText() : String;
	
	/**
	* Returns the tool tip text
	*
	* @return the tool tip text, if supported, of the object;
	* otherwise, null
	* @since 1.4
	*/
	@:require(java4) @:overload public function getToolTipText() : String;
	
	/**
	* Returns the titled border text
	*
	* @return the titled border text, if supported, of the object;
	* otherwise, null
	* @since 1.4
	*/
	@:require(java4) @:overload public function getTitledBorderText() : String;
	
	/**
	* Returns key bindings associated with this object
	*
	* @return the key bindings, if supported, of the object;
	* otherwise, null
	* @see AccessibleKeyBinding
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAccessibleKeyBinding() : javax.accessibility.AccessibleKeyBinding;
	
	/**
	* Sets the foreground color of this object.
	*
	* @param c the new Color for the foreground
	* @see #getForeground
	*/
	@:overload @:public public function setForeground(c : java.awt.Color) : Void;
	
	/**
	* Returns the location of the object on the screen.
	*
	* @return the location of the object on screen; null if this object
	* is not on the screen
	* @see #getBounds
	* @see #getLocation
	*/
	@:overload @:public public function getLocationOnScreen() : java.awt.Point;
	
	/**
	* Sets the background color of this object.
	*
	* @param c the new Color for the background
	* @see #setBackground
	*/
	@:overload @:public public function setBackground(c : java.awt.Color) : Void;
	
	/**
	* Sets the enabled state of the object.
	*
	* @param b if true, enables this object; otherwise, disables it
	* @see #isEnabled
	*/
	@:overload @:public public function setEnabled(b : Bool) : Void;
	
	/**
	* Gets the background color of this object.
	*
	* @return the background color, if supported, of the object;
	* otherwise, null
	* @see #setBackground
	*/
	@:overload @:public public function getBackground() : java.awt.Color;
	
	/**
	* Gets the bounds of this object in the form of a Rectangle object.
	* The bounds specify this object's width, height, and location
	* relative to its parent.
	*
	* @return A rectangle indicating this component's bounds; null if
	* this object is not on the screen.
	* @see #contains
	*/
	@:overload @:public public function getBounds() : java.awt.Rectangle;
	
	/**
	* Sets the Cursor of this object.
	*
	* @param cursor  the new Cursor for the object
	* @see #getCursor
	*/
	@:overload @:public public function setCursor(cursor : java.awt.Cursor) : Void;
	
	/**
	* Sets the bounds of this object in the form of a Rectangle object.
	* The bounds specify this object's width, height, and location
	* relative to its parent.
	*
	* @param r rectangle indicating this component's bounds
	* @see #getBounds
	*/
	@:overload @:public public function setBounds(r : java.awt.Rectangle) : Void;
	
	/**
	* Removes the specified focus listener so it no longer receives focus
	* events from this component.
	*
	* @param l the focus listener
	* @see #addFocusListener
	*/
	@:overload @:public public function removeFocusListener(l : java.awt.event.FocusListener) : Void;
	
	/**
	* Determines if the object is showing.  This is determined by checking
	* the visibility of the object and its ancestors.
	* Note: this
	* will return true even if the object is obscured by another (for example,
	* it is underneath a menu that was pulled down).
	*
	* @return true if object is showing; otherwise, false
	*/
	@:overload @:public public function isShowing() : Bool;
	
	/**
	* Gets the foreground color of this object.
	*
	* @return the foreground color, if supported, of the object;
	* otherwise, null
	* @see #setForeground
	*/
	@:overload @:public public function getForeground() : java.awt.Color;
	
	/**
	* Sets the location of the object relative to the parent.
	* @param p the new position for the top-left corner
	* @see #getLocation
	*/
	@:overload @:public public function setLocation(p : java.awt.Point) : Void;
	
	/**
	* Adds the specified focus listener to receive focus events from this
	* component.
	*
	* @param l the focus listener
	* @see #removeFocusListener
	*/
	@:overload @:public public function addFocusListener(l : java.awt.event.FocusListener) : Void;
	
	/**
	* Requests focus for this object.  If this object cannot accept focus,
	* nothing will happen.  Otherwise, the object will attempt to take
	* focus.
	* @see #isFocusTraversable
	*/
	@:overload @:public public function requestFocus() : Void;
	
	/**
	* Gets the FontMetrics of this object.
	*
	* @param f the Font
	* @return the FontMetrics, if supported, the object; otherwise, null
	* @see #getFont
	*/
	@:overload @:public public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Checks whether the specified point is within this object's bounds,
	* where the point's x and y coordinates are defined to be relative to the
	* coordinate system of the object.
	*
	* @param p the Point relative to the coordinate system of the object
	* @return true if object contains Point; otherwise false
	* @see #getBounds
	*/
	@:overload @:public public function contains(p : java.awt.Point) : Bool;
	
	/**
	* Returns whether this object can accept focus or not.   Objects that
	* can accept focus will also have the AccessibleState.FOCUSABLE state
	* set in their AccessibleStateSets.
	*
	* @return true if object can accept focus; otherwise false
	* @see AccessibleContext#getAccessibleStateSet
	* @see AccessibleState#FOCUSABLE
	* @see AccessibleState#FOCUSED
	* @see AccessibleStateSet
	*/
	@:overload @:public public function isFocusTraversable() : Bool;
	
	/**
	* Sets the Font of this object.
	*
	* @param f the new Font for the object
	* @see #getFont
	*/
	@:overload @:public public function setFont(f : java.awt.Font) : Void;
	
	/**
	* Gets the Font of this object.
	*
	* @return the Font,if supported, for the object; otherwise, null
	* @see #setFont
	*/
	@:overload @:public public function getFont() : java.awt.Font;
	
	/**
	* Determines if the object is enabled.  Objects that are enabled
	* will also have the AccessibleState.ENABLED state set in their
	* AccessibleStateSets.
	*
	* @return true if object is enabled; otherwise, false
	* @see #setEnabled
	* @see AccessibleContext#getAccessibleStateSet
	* @see AccessibleState#ENABLED
	* @see AccessibleStateSet
	*/
	@:overload @:public public function isEnabled() : Bool;
	
	/**
	* Gets the location of the object relative to the parent in the form
	* of a point specifying the object's top-left corner in the screen's
	* coordinate space.
	*
	* @return An instance of Point representing the top-left corner of the
	* object's bounds in the coordinate space of the screen; null if
	* this object or its parent are not on the screen
	* @see #getBounds
	* @see #getLocationOnScreen
	*/
	@:overload @:public public function getLocation() : java.awt.Point;
	
	/**
	* Returns the Accessible child, if one exists, contained at the local
	* coordinate Point.
	*
	* @param p The point relative to the coordinate system of this object.
	* @return the Accessible, if it exists, at the specified location;
	* otherwise null
	*/
	@:overload @:public public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	/**
	* Gets the Cursor of this object.
	*
	* @return the Cursor, if supported, of the object; otherwise, null
	* @see #setCursor
	*/
	@:overload @:public public function getCursor() : java.awt.Cursor;
	
	/**
	* Determines if the object is visible.  Note: this means that the
	* object intends to be visible; however, it may not be
	* showing on the screen because one of the objects that this object
	* is contained by is currently not visible.  To determine if an object is
	* showing on the screen, use isShowing().
	* <p>Objects that are visible will also have the
	* AccessibleState.VISIBLE state set in their AccessibleStateSets.
	*
	* @return true if object is visible; otherwise, false
	* @see #setVisible
	* @see AccessibleContext#getAccessibleStateSet
	* @see AccessibleState#VISIBLE
	* @see AccessibleStateSet
	*/
	@:overload @:public public function isVisible() : Bool;
	
	/**
	* Sets the visible state of the object.
	*
	* @param b if true, shows this object; otherwise, hides it
	* @see #isVisible
	*/
	@:overload @:public public function setVisible(b : Bool) : Void;
	
	/**
	* Resizes this object so that it has width and height.
	*
	* @param d The dimension specifying the new size of the object.
	* @see #getSize
	*/
	@:overload @:public public function setSize(d : java.awt.Dimension) : Void;
	
	/**
	* Returns the size of this object in the form of a Dimension object.
	* The height field of the Dimension object contains this object's
	* height, and the width field of the Dimension object contains this
	* object's width.
	*
	* @return A Dimension object that indicates the size of this component;
	* null if this object is not on the screen
	* @see #setSize
	*/
	@:overload @:public public function getSize() : java.awt.Dimension;
	
	
}
@:native('javax$swing$AbstractButton$AccessibleAbstractButton$ButtonKeyBinding') @:internal extern class AbstractButton_AccessibleAbstractButton_ButtonKeyBinding implements javax.accessibility.AccessibleKeyBinding
{
	/**
	* Returns the number of key bindings for this object
	*
	* @return the zero-based number of key bindings for this object
	*/
	@:overload public function getAccessibleKeyBindingCount() : Int;
	
	/**
	* Returns a key binding for this object.  The value returned is an
	* java.lang.Object which must be cast to appropriate type depending
	* on the underlying implementation of the key.  For example, if the
	* Object returned is a javax.swing.KeyStroke, the user of this
	* method should do the following:
	* <nf><code>
	* Component c = <get the component that has the key bindings>
	* AccessibleContext ac = c.getAccessibleContext();
	* AccessibleKeyBinding akb = ac.getAccessibleKeyBinding();
	* for (int i = 0; i < akb.getAccessibleKeyBindingCount(); i++) {
	*     Object o = akb.getAccessibleKeyBinding(i);
	*     if (o instanceof javax.swing.KeyStroke) {
	*         javax.swing.KeyStroke keyStroke = (javax.swing.KeyStroke)o;
	*         <do something with the key binding>
	*     }
	* }
	* </code></nf>
	*
	* @param i zero-based index of the key bindings
	* @return a javax.lang.Object which specifies the key binding
	* @exception IllegalArgumentException if the index is
	* out of bounds
	* @see #getAccessibleKeyBindingCount
	*/
	@:overload public function getAccessibleKeyBinding(i : Int) : Dynamic;
	
	
}
