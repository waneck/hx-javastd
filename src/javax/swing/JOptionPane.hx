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
extern class JOptionPane extends javax.swing.JComponent implements javax.accessibility.Accessible
{
	/**
	* Indicates that the user has not yet selected a value.
	*/
	public static var UNINITIALIZED_VALUE(default, null) : Dynamic;
	
	/**
	* Type meaning Look and Feel should not supply any options -- only
	* use the options from the <code>JOptionPane</code>.
	*/
	public static var DEFAULT_OPTION(default, null) : Int;
	
	/** Type used for <code>showConfirmDialog</code>. */
	public static var YES_NO_OPTION(default, null) : Int;
	
	/** Type used for <code>showConfirmDialog</code>. */
	public static var YES_NO_CANCEL_OPTION(default, null) : Int;
	
	/** Type used for <code>showConfirmDialog</code>. */
	public static var OK_CANCEL_OPTION(default, null) : Int;
	
	/** Return value from class method if YES is chosen. */
	public static var YES_OPTION(default, null) : Int;
	
	/** Return value from class method if NO is chosen. */
	public static var NO_OPTION(default, null) : Int;
	
	/** Return value from class method if CANCEL is chosen. */
	public static var CANCEL_OPTION(default, null) : Int;
	
	/** Return value form class method if OK is chosen. */
	public static var OK_OPTION(default, null) : Int;
	
	/** Return value from class method if user closes window without selecting
	* anything, more than likely this should be treated as either a
	* <code>CANCEL_OPTION</code> or <code>NO_OPTION</code>. */
	public static var CLOSED_OPTION(default, null) : Int;
	
	/** Used for error messages. */
	public static var ERROR_MESSAGE(default, null) : Int;
	
	/** Used for information messages. */
	public static var INFORMATION_MESSAGE(default, null) : Int;
	
	/** Used for warning messages. */
	public static var WARNING_MESSAGE(default, null) : Int;
	
	/** Used for questions. */
	public static var QUESTION_MESSAGE(default, null) : Int;
	
	/** No icon is used. */
	public static var PLAIN_MESSAGE(default, null) : Int;
	
	/** Bound property name for <code>icon</code>. */
	public static var ICON_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>message</code>. */
	public static var MESSAGE_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>value</code>. */
	public static var VALUE_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>option</code>. */
	public static var OPTIONS_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>initialValue</code>. */
	public static var INITIAL_VALUE_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>type</code>. */
	public static var MESSAGE_TYPE_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>optionType</code>. */
	public static var OPTION_TYPE_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>selectionValues</code>. */
	public static var SELECTION_VALUES_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>initialSelectionValue</code>. */
	public static var INITIAL_SELECTION_VALUE_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>inputValue</code>. */
	public static var INPUT_VALUE_PROPERTY(default, null) : String;
	
	/** Bound property name for <code>wantsInput</code>. */
	public static var WANTS_INPUT_PROPERTY(default, null) : String;
	
	/** Icon used in pane. */
	@:transient private var icon : javax.swing.Icon;
	
	/** Message to display. */
	@:transient private var message : Dynamic;
	
	/** Options to display to the user. */
	@:transient private var options : java.NativeArray<Dynamic>;
	
	/** Value that should be initially selected in <code>options</code>. */
	@:transient private var initialValue : Dynamic;
	
	/** Message type. */
	private var messageType : Int;
	
	/**
	* Option type, one of <code>DEFAULT_OPTION</code>,
	* <code>YES_NO_OPTION</code>,
	* <code>YES_NO_CANCEL_OPTION</code> or
	* <code>OK_CANCEL_OPTION</code>.
	*/
	private var optionType : Int;
	
	/** Currently selected value, will be a valid option, or
	* <code>UNINITIALIZED_VALUE</code> or <code>null</code>. */
	@:transient private var value : Dynamic;
	
	/** Array of values the user can choose from. Look and feel will
	* provide the UI component to choose this from. */
	@:transient private var selectionValues : java.NativeArray<Dynamic>;
	
	/** Value the user has input. */
	@:transient private var inputValue : Dynamic;
	
	/** Initial value to select in <code>selectionValues</code>. */
	@:transient private var initialSelectionValue : Dynamic;
	
	/** If true, a UI widget will be provided to the user to get input. */
	private var wantsInput : Bool;
	
	/**
	* Shows a question-message dialog requesting input from the user. The
	* dialog uses the default frame, which usually means it is centered on
	* the screen.
	*
	* @param message the <code>Object</code> to display
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showInputDialog(message : Dynamic) : String;
	
	/**
	* Shows a question-message dialog requesting input from the user, with
	* the input value initialized to <code>initialSelectionValue</code>. The
	* dialog uses the default frame, which usually means it is centered on
	* the screen.
	*
	* @param message the <code>Object</code> to display
	* @param initialSelectionValue the value used to initialize the input
	*                 field
	* @since 1.4
	*/
	@:require(java4) @:overload public static function showInputDialog(message : Dynamic, initialSelectionValue : Dynamic) : String;
	
	/**
	* Shows a question-message dialog requesting input from the user
	* parented to <code>parentComponent</code>.
	* The dialog is displayed on top of the <code>Component</code>'s
	* frame, and is usually positioned below the <code>Component</code>.
	*
	* @param parentComponent  the parent <code>Component</code> for the
	*          dialog
	* @param message  the <code>Object</code> to display
	* @exception HeadlessException if
	*    <code>GraphicsEnvironment.isHeadless</code> returns
	*    <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showInputDialog(parentComponent : java.awt.Component, message : Dynamic) : String;
	
	/**
	* Shows a question-message dialog requesting input from the user and
	* parented to <code>parentComponent</code>. The input value will be
	* initialized to <code>initialSelectionValue</code>.
	* The dialog is displayed on top of the <code>Component</code>'s
	* frame, and is usually positioned below the <code>Component</code>.
	*
	* @param parentComponent  the parent <code>Component</code> for the
	*          dialog
	* @param message the <code>Object</code> to display
	* @param initialSelectionValue the value used to initialize the input
	*                 field
	* @since 1.4
	*/
	@:require(java4) @:overload public static function showInputDialog(parentComponent : java.awt.Component, message : Dynamic, initialSelectionValue : Dynamic) : String;
	
	/**
	* Shows a dialog requesting input from the user parented to
	* <code>parentComponent</code> with the dialog having the title
	* <code>title</code> and message type <code>messageType</code>.
	*
	* @param parentComponent  the parent <code>Component</code> for the
	*                  dialog
	* @param message  the <code>Object</code> to display
	* @param title    the <code>String</code> to display in the dialog
	*                  title bar
	* @param messageType the type of message that is to be displayed:
	*                  <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showInputDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, messageType : Int) : String;
	
	/**
	* Prompts the user for input in a blocking dialog where the
	* initial selection, possible selections, and all other options can
	* be specified. The user will able to choose from
	* <code>selectionValues</code>, where <code>null</code> implies the
	* user can input
	* whatever they wish, usually by means of a <code>JTextField</code>.
	* <code>initialSelectionValue</code> is the initial value to prompt
	* the user with. It is up to the UI to decide how best to represent
	* the <code>selectionValues</code>, but usually a
	* <code>JComboBox</code>, <code>JList</code>, or
	* <code>JTextField</code> will be used.
	*
	* @param parentComponent  the parent <code>Component</code> for the
	*                  dialog
	* @param message  the <code>Object</code> to display
	* @param title    the <code>String</code> to display in the
	*                  dialog title bar
	* @param messageType the type of message to be displayed:
	*                  <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @param icon     the <code>Icon</code> image to display
	* @param selectionValues an array of <code>Object</code>s that
	*                  gives the possible selections
	* @param initialSelectionValue the value used to initialize the input
	*                 field
	* @return user's input, or <code>null</code> meaning the user
	*                  canceled the input
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showInputDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, messageType : Int, icon : javax.swing.Icon, selectionValues : java.NativeArray<Dynamic>, initialSelectionValue : Dynamic) : Dynamic;
	
	/**
	* Brings up an information-message dialog titled "Message".
	*
	* @param parentComponent determines the <code>Frame</code> in
	*          which the dialog is displayed; if <code>null</code>,
	*          or if the <code>parentComponent</code> has no
	*          <code>Frame</code>, a default <code>Frame</code> is used
	* @param message   the <code>Object</code> to display
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showMessageDialog(parentComponent : java.awt.Component, message : Dynamic) : Void;
	
	/**
	* Brings up a dialog that displays a message using a default
	* icon determined by the <code>messageType</code> parameter.
	*
	* @param parentComponent determines the <code>Frame</code>
	*          in which the dialog is displayed; if <code>null</code>,
	*          or if the <code>parentComponent</code> has no
	*          <code>Frame</code>, a default <code>Frame</code> is used
	* @param message   the <code>Object</code> to display
	* @param title     the title string for the dialog
	* @param messageType the type of message to be displayed:
	*                  <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showMessageDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, messageType : Int) : Void;
	
	/**
	* Brings up a dialog displaying a message, specifying all parameters.
	*
	* @param parentComponent determines the <code>Frame</code> in which the
	*                  dialog is displayed; if <code>null</code>,
	*                  or if the <code>parentComponent</code> has no
	*                  <code>Frame</code>, a
	*                  default <code>Frame</code> is used
	* @param message   the <code>Object</code> to display
	* @param title     the title string for the dialog
	* @param messageType the type of message to be displayed:
	*                  <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @param icon      an icon to display in the dialog that helps the user
	*                  identify the kind of message that is being displayed
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showMessageDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, messageType : Int, icon : javax.swing.Icon) : Void;
	
	/**
	* Brings up a dialog with the options <i>Yes</i>,
	* <i>No</i> and <i>Cancel</i>; with the
	* title, <b>Select an Option</b>.
	*
	* @param parentComponent determines the <code>Frame</code> in which the
	*                  dialog is displayed; if <code>null</code>,
	*                  or if the <code>parentComponent</code> has no
	*                  <code>Frame</code>, a
	*                  default <code>Frame</code> is used
	* @param message   the <code>Object</code> to display
	* @return an integer indicating the option selected by the user
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showConfirmDialog(parentComponent : java.awt.Component, message : Dynamic) : Int;
	
	/**
	* Brings up a dialog where the number of choices is determined
	* by the <code>optionType</code> parameter.
	*
	* @param parentComponent determines the <code>Frame</code> in which the
	*                  dialog is displayed; if <code>null</code>,
	*                  or if the <code>parentComponent</code> has no
	*                  <code>Frame</code>, a
	*                  default <code>Frame</code> is used
	* @param message   the <code>Object</code> to display
	* @param title     the title string for the dialog
	* @param optionType an int designating the options available on the dialog:
	*                  <code>YES_NO_OPTION</code>,
	*                  <code>YES_NO_CANCEL_OPTION</code>,
	*                  or <code>OK_CANCEL_OPTION</code>
	* @return an int indicating the option selected by the user
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showConfirmDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, optionType : Int) : Int;
	
	/**
	* Brings up a dialog where the number of choices is determined
	* by the <code>optionType</code> parameter, where the
	* <code>messageType</code>
	* parameter determines the icon to display.
	* The <code>messageType</code> parameter is primarily used to supply
	* a default icon from the Look and Feel.
	*
	* @param parentComponent determines the <code>Frame</code> in
	*                  which the dialog is displayed; if <code>null</code>,
	*                  or if the <code>parentComponent</code> has no
	*                  <code>Frame</code>, a
	*                  default <code>Frame</code> is used.
	* @param message   the <code>Object</code> to display
	* @param title     the title string for the dialog
	* @param optionType an integer designating the options available
	*                   on the dialog: <code>YES_NO_OPTION</code>,
	*                  <code>YES_NO_CANCEL_OPTION</code>,
	*                  or <code>OK_CANCEL_OPTION</code>
	* @param messageType an integer designating the kind of message this is;
	*                  primarily used to determine the icon from the pluggable
	*                  Look and Feel: <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @return an integer indicating the option selected by the user
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showConfirmDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, optionType : Int, messageType : Int) : Int;
	
	/**
	* Brings up a dialog with a specified icon, where the number of
	* choices is determined by the <code>optionType</code> parameter.
	* The <code>messageType</code> parameter is primarily used to supply
	* a default icon from the look and feel.
	*
	* @param parentComponent determines the <code>Frame</code> in which the
	*                  dialog is displayed; if <code>null</code>,
	*                  or if the <code>parentComponent</code> has no
	*                  <code>Frame</code>, a
	*                  default <code>Frame</code> is used
	* @param message   the Object to display
	* @param title     the title string for the dialog
	* @param optionType an int designating the options available on the dialog:
	*                  <code>YES_NO_OPTION</code>,
	*                  <code>YES_NO_CANCEL_OPTION</code>,
	*                  or <code>OK_CANCEL_OPTION</code>
	* @param messageType an int designating the kind of message this is,
	*                  primarily used to determine the icon from the pluggable
	*                  Look and Feel: <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @param icon      the icon to display in the dialog
	* @return an int indicating the option selected by the user
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showConfirmDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, optionType : Int, messageType : Int, icon : javax.swing.Icon) : Int;
	
	/**
	* Brings up a dialog with a specified icon, where the initial
	* choice is determined by the <code>initialValue</code> parameter and
	* the number of choices is determined by the <code>optionType</code>
	* parameter.
	* <p>
	* If <code>optionType</code> is <code>YES_NO_OPTION</code>,
	* or <code>YES_NO_CANCEL_OPTION</code>
	* and the <code>options</code> parameter is <code>null</code>,
	* then the options are
	* supplied by the look and feel.
	* <p>
	* The <code>messageType</code> parameter is primarily used to supply
	* a default icon from the look and feel.
	*
	* @param parentComponent determines the <code>Frame</code>
	*                  in which the dialog is displayed;  if
	*                  <code>null</code>, or if the
	*                  <code>parentComponent</code> has no
	*                  <code>Frame</code>, a
	*                  default <code>Frame</code> is used
	* @param message   the <code>Object</code> to display
	* @param title     the title string for the dialog
	* @param optionType an integer designating the options available on the
	*                  dialog: <code>DEFAULT_OPTION</code>,
	*                  <code>YES_NO_OPTION</code>,
	*                  <code>YES_NO_CANCEL_OPTION</code>,
	*                  or <code>OK_CANCEL_OPTION</code>
	* @param messageType an integer designating the kind of message this is,
	*                  primarily used to determine the icon from the
	*                  pluggable Look and Feel: <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @param icon      the icon to display in the dialog
	* @param options   an array of objects indicating the possible choices
	*                  the user can make; if the objects are components, they
	*                  are rendered properly; non-<code>String</code>
	*                  objects are
	*                  rendered using their <code>toString</code> methods;
	*                  if this parameter is <code>null</code>,
	*                  the options are determined by the Look and Feel
	* @param initialValue the object that represents the default selection
	*                  for the dialog; only meaningful if <code>options</code>
	*                  is used; can be <code>null</code>
	* @return an integer indicating the option chosen by the user,
	*                  or <code>CLOSED_OPTION</code> if the user closed
	*                  the dialog
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showOptionDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, optionType : Int, messageType : Int, icon : javax.swing.Icon, options : java.NativeArray<Dynamic>, initialValue : Dynamic) : Int;
	
	/**
	* Creates and returns a new <code>JDialog</code> wrapping
	* <code>this</code> centered on the <code>parentComponent</code>
	* in the <code>parentComponent</code>'s frame.
	* <code>title</code> is the title of the returned dialog.
	* The returned <code>JDialog</code> will not be resizable by the
	* user, however programs can invoke <code>setResizable</code> on
	* the <code>JDialog</code> instance to change this property.
	* The returned <code>JDialog</code> will be set up such that
	* once it is closed, or the user clicks on one of the buttons,
	* the optionpane's value property will be set accordingly and
	* the dialog will be closed.  Each time the dialog is made visible,
	* it will reset the option pane's value property to
	* <code>JOptionPane.UNINITIALIZED_VALUE</code> to ensure the
	* user's subsequent action closes the dialog properly.
	*
	* @param parentComponent determines the frame in which the dialog
	*          is displayed; if the <code>parentComponent</code> has
	*          no <code>Frame</code>, a default <code>Frame</code> is used
	* @param title     the title string for the dialog
	* @return a new <code>JDialog</code> containing this instance
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function createDialog(parentComponent : java.awt.Component, title : String) : javax.swing.JDialog;
	
	/**
	* Creates and returns a new parentless <code>JDialog</code>
	* with the specified title.
	* The returned <code>JDialog</code> will not be resizable by the
	* user, however programs can invoke <code>setResizable</code> on
	* the <code>JDialog</code> instance to change this property.
	* The returned <code>JDialog</code> will be set up such that
	* once it is closed, or the user clicks on one of the buttons,
	* the optionpane's value property will be set accordingly and
	* the dialog will be closed.  Each time the dialog is made visible,
	* it will reset the option pane's value property to
	* <code>JOptionPane.UNINITIALIZED_VALUE</code> to ensure the
	* user's subsequent action closes the dialog properly.
	*
	* @param title     the title string for the dialog
	* @return a new <code>JDialog</code> containing this instance
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since 1.6
	*/
	@:require(java6) @:overload public function createDialog(title : String) : javax.swing.JDialog;
	
	/**
	* Brings up an internal confirmation dialog panel. The dialog
	* is a information-message dialog titled "Message".
	*
	* @param parentComponent determines the <code>Frame</code>
	*          in which the dialog is displayed; if <code>null</code>,
	*          or if the <code>parentComponent</code> has no
	*          <code>Frame</code>, a default <code>Frame</code> is used
	* @param message   the object to display
	*/
	@:overload public static function showInternalMessageDialog(parentComponent : java.awt.Component, message : Dynamic) : Void;
	
	/**
	* Brings up an internal dialog panel that displays a message
	* using a default icon determined by the <code>messageType</code>
	* parameter.
	*
	* @param parentComponent determines the <code>Frame</code>
	*          in which the dialog is displayed; if <code>null</code>,
	*          or if the <code>parentComponent</code> has no
	*          <code>Frame</code>, a default <code>Frame</code> is used
	* @param message   the <code>Object</code> to display
	* @param title     the title string for the dialog
	* @param messageType the type of message to be displayed:
	*                  <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	*/
	@:overload public static function showInternalMessageDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, messageType : Int) : Void;
	
	/**
	* Brings up an internal dialog panel displaying a message,
	* specifying all parameters.
	*
	* @param parentComponent determines the <code>Frame</code>
	*          in which the dialog is displayed; if <code>null</code>,
	*          or if the <code>parentComponent</code> has no
	*          <code>Frame</code>, a default <code>Frame</code> is used
	* @param message   the <code>Object</code> to display
	* @param title     the title string for the dialog
	* @param messageType the type of message to be displayed:
	*                  <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @param icon      an icon to display in the dialog that helps the user
	*                  identify the kind of message that is being displayed
	*/
	@:overload public static function showInternalMessageDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, messageType : Int, icon : javax.swing.Icon) : Void;
	
	/**
	* Brings up an internal dialog panel with the options <i>Yes</i>, <i>No</i>
	* and <i>Cancel</i>; with the title, <b>Select an Option</b>.
	*
	* @param parentComponent determines the <code>Frame</code> in
	*          which the dialog is displayed; if <code>null</code>,
	*          or if the <code>parentComponent</code> has no
	*          <code>Frame</code>, a default <code>Frame</code> is used
	* @param message   the <code>Object</code> to display
	* @return an integer indicating the option selected by the user
	*/
	@:overload public static function showInternalConfirmDialog(parentComponent : java.awt.Component, message : Dynamic) : Int;
	
	/**
	* Brings up a internal dialog panel where the number of choices
	* is determined by the <code>optionType</code> parameter.
	*
	* @param parentComponent determines the <code>Frame</code>
	*          in which the dialog is displayed; if <code>null</code>,
	*          or if the <code>parentComponent</code> has no
	*          <code>Frame</code>, a default <code>Frame</code> is used
	* @param message   the object to display in the dialog; a
	*          <code>Component</code> object is rendered as a
	*          <code>Component</code>; a <code>String</code>
	*          object is rendered as a string; other objects
	*          are converted to a <code>String</code> using the
	*          <code>toString</code> method
	* @param title     the title string for the dialog
	* @param optionType an integer designating the options
	*          available on the dialog: <code>YES_NO_OPTION</code>,
	*          or <code>YES_NO_CANCEL_OPTION</code>
	* @return an integer indicating the option selected by the user
	*/
	@:overload public static function showInternalConfirmDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, optionType : Int) : Int;
	
	/**
	* Brings up an internal dialog panel where the number of choices
	* is determined by the <code>optionType</code> parameter, where
	* the <code>messageType</code> parameter determines the icon to display.
	* The <code>messageType</code> parameter is primarily used to supply
	* a default icon from the Look and Feel.
	*
	* @param parentComponent determines the <code>Frame</code> in
	*          which the dialog is displayed; if <code>null</code>,
	*          or if the <code>parentComponent</code> has no
	*          <code>Frame</code>, a default <code>Frame</code> is used
	* @param message   the object to display in the dialog; a
	*          <code>Component</code> object is rendered as a
	*          <code>Component</code>; a <code>String</code>
	*          object is rendered as a string; other objects are
	*          converted to a <code>String</code> using the
	*          <code>toString</code> method
	* @param title     the title string for the dialog
	* @param optionType an integer designating the options
	*          available on the dialog:
	*          <code>YES_NO_OPTION</code>, or <code>YES_NO_CANCEL_OPTION</code>
	* @param messageType an integer designating the kind of message this is,
	*          primarily used to determine the icon from the
	*          pluggable Look and Feel: <code>ERROR_MESSAGE</code>,
	*          <code>INFORMATION_MESSAGE</code>,
	*          <code>WARNING_MESSAGE</code>, <code>QUESTION_MESSAGE</code>,
	*          or <code>PLAIN_MESSAGE</code>
	* @return an integer indicating the option selected by the user
	*/
	@:overload public static function showInternalConfirmDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, optionType : Int, messageType : Int) : Int;
	
	/**
	* Brings up an internal dialog panel with a specified icon, where
	* the number of choices is determined by the <code>optionType</code>
	* parameter.
	* The <code>messageType</code> parameter is primarily used to supply
	* a default icon from the look and feel.
	*
	* @param parentComponent determines the <code>Frame</code>
	*          in which the dialog is displayed; if <code>null</code>,
	*          or if the parentComponent has no Frame, a
	*          default <code>Frame</code> is used
	* @param message   the object to display in the dialog; a
	*          <code>Component</code> object is rendered as a
	*          <code>Component</code>; a <code>String</code>
	*          object is rendered as a string; other objects are
	*          converted to a <code>String</code> using the
	*          <code>toString</code> method
	* @param title     the title string for the dialog
	* @param optionType an integer designating the options available
	*          on the dialog:
	*          <code>YES_NO_OPTION</code>, or
	*          <code>YES_NO_CANCEL_OPTION</code>.
	* @param messageType an integer designating the kind of message this is,
	*          primarily used to determine the icon from the pluggable
	*          Look and Feel: <code>ERROR_MESSAGE</code>,
	*          <code>INFORMATION_MESSAGE</code>,
	*          <code>WARNING_MESSAGE</code>, <code>QUESTION_MESSAGE</code>,
	*          or <code>PLAIN_MESSAGE</code>
	* @param icon      the icon to display in the dialog
	* @return an integer indicating the option selected by the user
	*/
	@:overload public static function showInternalConfirmDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, optionType : Int, messageType : Int, icon : javax.swing.Icon) : Int;
	
	/**
	* Brings up an internal dialog panel with a specified icon, where
	* the initial choice is determined by the <code>initialValue</code>
	* parameter and the number of choices is determined by the
	* <code>optionType</code> parameter.
	* <p>
	* If <code>optionType</code> is <code>YES_NO_OPTION</code>, or
	* <code>YES_NO_CANCEL_OPTION</code>
	* and the <code>options</code> parameter is <code>null</code>,
	* then the options are supplied by the Look and Feel.
	* <p>
	* The <code>messageType</code> parameter is primarily used to supply
	* a default icon from the look and feel.
	*
	* @param parentComponent determines the <code>Frame</code>
	*          in which the dialog is displayed; if <code>null</code>,
	*          or if the <code>parentComponent</code> has no
	*          <code>Frame</code>, a default <code>Frame</code> is used
	* @param message   the object to display in the dialog; a
	*          <code>Component</code> object is rendered as a
	*          <code>Component</code>; a <code>String</code>
	*          object is rendered as a string. Other objects are
	*          converted to a <code>String</code> using the
	*          <code>toString</code> method
	* @param title     the title string for the dialog
	* @param optionType an integer designating the options available
	*          on the dialog: <code>YES_NO_OPTION</code>,
	*          or <code>YES_NO_CANCEL_OPTION</code>
	* @param messageType an integer designating the kind of message this is;
	*          primarily used to determine the icon from the
	*          pluggable Look and Feel: <code>ERROR_MESSAGE</code>,
	*          <code>INFORMATION_MESSAGE</code>,
	*          <code>WARNING_MESSAGE</code>, <code>QUESTION_MESSAGE</code>,
	*          or <code>PLAIN_MESSAGE</code>
	* @param icon      the icon to display in the dialog
	* @param options   an array of objects indicating the possible choices
	*          the user can make; if the objects are components, they
	*          are rendered properly; non-<code>String</code>
	*          objects are rendered using their <code>toString</code>
	*          methods; if this parameter is <code>null</code>,
	*          the options are determined by the Look and Feel
	* @param initialValue the object that represents the default selection
	*          for the dialog; only meaningful if <code>options</code>
	*          is used; can be <code>null</code>
	* @return an integer indicating the option chosen by the user,
	*          or <code>CLOSED_OPTION</code> if the user closed the Dialog
	*/
	@:overload public static function showInternalOptionDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, optionType : Int, messageType : Int, icon : javax.swing.Icon, options : java.NativeArray<Dynamic>, initialValue : Dynamic) : Int;
	
	/**
	* Shows an internal question-message dialog requesting input from
	* the user parented to <code>parentComponent</code>. The dialog
	* is displayed in the <code>Component</code>'s frame,
	* and is usually positioned below the <code>Component</code>.
	*
	* @param parentComponent  the parent <code>Component</code>
	*          for the dialog
	* @param message  the <code>Object</code> to display
	*/
	@:overload public static function showInternalInputDialog(parentComponent : java.awt.Component, message : Dynamic) : String;
	
	/**
	* Shows an internal dialog requesting input from the user parented
	* to <code>parentComponent</code> with the dialog having the title
	* <code>title</code> and message type <code>messageType</code>.
	*
	* @param parentComponent the parent <code>Component</code> for the dialog
	* @param message  the <code>Object</code> to display
	* @param title    the <code>String</code> to display in the
	*          dialog title bar
	* @param messageType the type of message that is to be displayed:
	*                    ERROR_MESSAGE, INFORMATION_MESSAGE, WARNING_MESSAGE,
	*                    QUESTION_MESSAGE, or PLAIN_MESSAGE
	*/
	@:overload public static function showInternalInputDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, messageType : Int) : String;
	
	/**
	* Prompts the user for input in a blocking internal dialog where
	* the initial selection, possible selections, and all other
	* options can be specified. The user will able to choose from
	* <code>selectionValues</code>, where <code>null</code>
	* implies the user can input
	* whatever they wish, usually by means of a <code>JTextField</code>.
	* <code>initialSelectionValue</code> is the initial value to prompt
	* the user with. It is up to the UI to decide how best to represent
	* the <code>selectionValues</code>, but usually a
	* <code>JComboBox</code>, <code>JList</code>, or
	* <code>JTextField</code> will be used.
	*
	* @param parentComponent the parent <code>Component</code> for the dialog
	* @param message  the <code>Object</code> to display
	* @param title    the <code>String</code> to display in the dialog
	*          title bar
	* @param messageType the type of message to be displayed:
	*                  <code>ERROR_MESSAGE</code>, <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>, or <code>PLAIN_MESSAGE</code>
	* @param icon     the <code>Icon</code> image to display
	* @param selectionValues an array of <code>Objects</code> that
	*                  gives the possible selections
	* @param initialSelectionValue the value used to initialize the input
	*                  field
	* @return user's input, or <code>null</code> meaning the user
	*          canceled the input
	*/
	@:overload public static function showInternalInputDialog(parentComponent : java.awt.Component, message : Dynamic, title : String, messageType : Int, icon : javax.swing.Icon, selectionValues : java.NativeArray<Dynamic>, initialSelectionValue : Dynamic) : Dynamic;
	
	/**
	* Creates and returns an instance of <code>JInternalFrame</code>.
	* The internal frame is created with the specified title,
	* and wrapping the <code>JOptionPane</code>.
	* The returned <code>JInternalFrame</code> is
	* added to the <code>JDesktopPane</code> ancestor of
	* <code>parentComponent</code>, or components
	* parent if one its ancestors isn't a <code>JDesktopPane</code>,
	* or if <code>parentComponent</code>
	* doesn't have a parent then a <code>RuntimeException</code> is thrown.
	*
	* @param parentComponent  the parent <code>Component</code> for
	*          the internal frame
	* @param title    the <code>String</code> to display in the
	*          frame's title bar
	* @return a <code>JInternalFrame</code> containing a
	*          <code>JOptionPane</code>
	* @exception RuntimeException if <code>parentComponent</code> does
	*          not have a valid parent
	*/
	@:overload public function createInternalFrame(parentComponent : java.awt.Component, title : String) : javax.swing.JInternalFrame;
	
	/**
	* Returns the specified component's <code>Frame</code>.
	*
	* @param parentComponent the <code>Component</code> to check for a
	*          <code>Frame</code>
	* @return the <code>Frame</code> that contains the component,
	*          or <code>getRootFrame</code>
	*          if the component is <code>null</code>,
	*          or does not have a valid <code>Frame</code> parent
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see #getRootFrame
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function getFrameForComponent(parentComponent : java.awt.Component) : java.awt.Frame;
	
	/**
	* Returns the specified component's desktop pane.
	*
	* @param parentComponent the <code>Component</code> to check for a
	*          desktop
	* @return the <code>JDesktopPane</code> that contains the component,
	*          or <code>null</code> if the component is <code>null</code>
	*          or does not have an ancestor that is a
	*          <code>JInternalFrame</code>
	*/
	@:overload public static function getDesktopPaneForComponent(parentComponent : java.awt.Component) : javax.swing.JDesktopPane;
	
	/**
	* Sets the frame to use for class methods in which a frame is
	* not provided.
	* <p>
	* <strong>Note:</strong>
	* It is recommended that rather than using this method you supply a valid parent.
	*
	* @param newRootFrame the default <code>Frame</code> to use
	*/
	@:overload public static function setRootFrame(newRootFrame : java.awt.Frame) : Void;
	
	/**
	* Returns the <code>Frame</code> to use for the class methods in
	* which a frame is not provided.
	*
	* @return the default <code>Frame</code> to use
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns
	*   <code>true</code>
	* @see #setRootFrame
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function getRootFrame() : java.awt.Frame;
	
	/**
	* Creates a <code>JOptionPane</code> with a test message.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a instance of <code>JOptionPane</code> to display a
	* message using the
	* plain-message message type and the default options delivered by
	* the UI.
	*
	* @param message the <code>Object</code> to display
	*/
	@:overload public function new(message : Dynamic) : Void;
	
	/**
	* Creates an instance of <code>JOptionPane</code> to display a message
	* with the specified message type and the default options,
	*
	* @param message the <code>Object</code> to display
	* @param messageType the type of message to be displayed:
	*                  <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	*/
	@:overload public function new(message : Dynamic, messageType : Int) : Void;
	
	/**
	* Creates an instance of <code>JOptionPane</code> to display a message
	* with the specified message type and options.
	*
	* @param message the <code>Object</code> to display
	* @param messageType the type of message to be displayed:
	*                  <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @param optionType the options to display in the pane:
	*                  <code>DEFAULT_OPTION</code>, <code>YES_NO_OPTION</code>,
	*                  <code>YES_NO_CANCEL_OPTION</code>,
	*                  <code>OK_CANCEL_OPTION</code>
	*/
	@:overload public function new(message : Dynamic, messageType : Int, optionType : Int) : Void;
	
	/**
	* Creates an instance of <code>JOptionPane</code> to display a message
	* with the specified message type, options, and icon.
	*
	* @param message the <code>Object</code> to display
	* @param messageType the type of message to be displayed:
	*                  <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @param optionType the options to display in the pane:
	*                  <code>DEFAULT_OPTION</code>, <code>YES_NO_OPTION</code>,
	*                  <code>YES_NO_CANCEL_OPTION</code>,
	*                  <code>OK_CANCEL_OPTION</code>
	* @param icon the <code>Icon</code> image to display
	*/
	@:overload public function new(message : Dynamic, messageType : Int, optionType : Int, icon : javax.swing.Icon) : Void;
	
	/**
	* Creates an instance of <code>JOptionPane</code> to display a message
	* with the specified message type, icon, and options.
	* None of the options is initially selected.
	* <p>
	* The options objects should contain either instances of
	* <code>Component</code>s, (which are added directly) or
	* <code>Strings</code> (which are wrapped in a <code>JButton</code>).
	* If you provide <code>Component</code>s, you must ensure that when the
	* <code>Component</code> is clicked it messages <code>setValue</code>
	* in the created <code>JOptionPane</code>.
	*
	* @param message the <code>Object</code> to display
	* @param messageType the type of message to be displayed:
	*                  <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @param optionType the options to display in the pane:
	*                  <code>DEFAULT_OPTION</code>,
	*                  <code>YES_NO_OPTION</code>,
	*                  <code>YES_NO_CANCEL_OPTION</code>,
	*                  <code>OK_CANCEL_OPTION</code>
	* @param icon the <code>Icon</code> image to display
	* @param options  the choices the user can select
	*/
	@:overload public function new(message : Dynamic, messageType : Int, optionType : Int, icon : javax.swing.Icon, options : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Creates an instance of <code>JOptionPane</code> to display a message
	* with the specified message type, icon, and options, with the
	* initially-selected option specified.
	*
	* @param message the <code>Object</code> to display
	* @param messageType the type of message to be displayed:
	*                  <code>ERROR_MESSAGE</code>,
	*                  <code>INFORMATION_MESSAGE</code>,
	*                  <code>WARNING_MESSAGE</code>,
	*                  <code>QUESTION_MESSAGE</code>,
	*                  or <code>PLAIN_MESSAGE</code>
	* @param optionType the options to display in the pane:
	*                  <code>DEFAULT_OPTION</code>,
	*                  <code>YES_NO_OPTION</code>,
	*                  <code>YES_NO_CANCEL_OPTION</code>,
	*                  <code>OK_CANCEL_OPTION</code>
	* @param icon the Icon image to display
	* @param options  the choices the user can select
	* @param initialValue the choice that is initially selected; if
	*                  <code>null</code>, then nothing will be initially selected;
	*                  only meaningful if <code>options</code> is used
	*/
	@:overload public function new(message : Dynamic, messageType : Int, optionType : Int, icon : javax.swing.Icon, options : java.NativeArray<Dynamic>, initialValue : Dynamic) : Void;
	
	/**
	* Sets the UI object which implements the L&F for this component.
	*
	* @param ui  the <code>OptionPaneUI</code> L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*       bound: true
	*      hidden: true
	* description: The UI object that implements the optionpane's LookAndFeel
	*/
	@:overload public function setUI(ui : javax.swing.plaf.OptionPaneUI) : Void;
	
	/**
	* Returns the UI object which implements the L&F for this component.
	*
	* @return the <code>OptionPaneUI</code> object
	*/
	@:overload public function getUI() : javax.swing.plaf.OptionPaneUI;
	
	/**
	* Notification from the <code>UIManager</code> that the L&F has changed.
	* Replaces the current UI object with the latest version from the
	* <code>UIManager</code>.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the name of the UI class that implements the
	* L&F for this component.
	*
	* @return the string "OptionPaneUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Sets the option pane's message-object.
	* @param newMessage the <code>Object</code> to display
	* @see #getMessage
	*
	* @beaninfo
	*   preferred: true
	*   bound: true
	* description: The optionpane's message object.
	*/
	@:overload public function setMessage(newMessage : Dynamic) : Void;
	
	/**
	* Returns the message-object this pane displays.
	* @see #setMessage
	*
	* @return the <code>Object</code> that is displayed
	*/
	@:overload public function getMessage() : Dynamic;
	
	/**
	* Sets the icon to display. If non-<code>null</code>, the look and feel
	* does not provide an icon.
	* @param newIcon the <code>Icon</code> to display
	*
	* @see #getIcon
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The option pane's type icon.
	*/
	@:overload public function setIcon(newIcon : javax.swing.Icon) : Void;
	
	/**
	* Returns the icon this pane displays.
	* @return the <code>Icon</code> that is displayed
	*
	* @see #setIcon
	*/
	@:overload public function getIcon() : javax.swing.Icon;
	
	/**
	* Sets the value the user has chosen.
	* @param newValue  the chosen value
	*
	* @see #getValue
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The option pane's value object.
	*/
	@:overload public function setValue(newValue : Dynamic) : Void;
	
	/**
	* Returns the value the user has selected. <code>UNINITIALIZED_VALUE</code>
	* implies the user has not yet made a choice, <code>null</code> means the
	* user closed the window with out choosing anything. Otherwise
	* the returned value will be one of the options defined in this
	* object.
	*
	* @return the <code>Object</code> chosen by the user,
	*         <code>UNINITIALIZED_VALUE</code>
	*         if the user has not yet made a choice, or <code>null</code> if
	*         the user closed the window without making a choice
	*
	* @see #setValue
	*/
	@:overload public function getValue() : Dynamic;
	
	/**
	* Sets the options this pane displays. If an element in
	* <code>newOptions</code> is a <code>Component</code>
	* it is added directly to the pane,
	* otherwise a button is created for the element.
	*
	* @param newOptions an array of <code>Objects</code> that create the
	*          buttons the user can click on, or arbitrary
	*          <code>Components</code> to add to the pane
	*
	* @see #getOptions
	* @beaninfo
	*       bound: true
	* description: The option pane's options objects.
	*/
	@:overload public function setOptions(newOptions : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Returns the choices the user can make.
	* @return the array of <code>Objects</code> that give the user's choices
	*
	* @see #setOptions
	*/
	@:overload public function getOptions() : java.NativeArray<Dynamic>;
	
	/**
	* Sets the initial value that is to be enabled -- the
	* <code>Component</code>
	* that has the focus when the pane is initially displayed.
	*
	* @param newInitialValue the <code>Object</code> that gets the initial
	*                         keyboard focus
	*
	* @see #getInitialValue
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The option pane's initial value object.
	*/
	@:overload public function setInitialValue(newInitialValue : Dynamic) : Void;
	
	/**
	* Returns the initial value.
	*
	* @return the <code>Object</code> that gets the initial keyboard focus
	*
	* @see #setInitialValue
	*/
	@:overload public function getInitialValue() : Dynamic;
	
	/**
	* Sets the option pane's message type.
	* The message type is used by the Look and Feel to determine the
	* icon to display (if not supplied) as well as potentially how to
	* lay out the <code>parentComponent</code>.
	* @param newType an integer specifying the kind of message to display:
	*                <code>ERROR_MESSAGE</code>, <code>INFORMATION_MESSAGE</code>,
	*                <code>WARNING_MESSAGE</code>,
	*                <code>QUESTION_MESSAGE</code>, or <code>PLAIN_MESSAGE</code>
	* @exception RuntimeException if <code>newType</code> is not one of the
	*          legal values listed above

	* @see #getMessageType
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The option pane's message type.
	*/
	@:overload public function setMessageType(newType : Int) : Void;
	
	/**
	* Returns the message type.
	*
	* @return an integer specifying the message type
	*
	* @see #setMessageType
	*/
	@:overload public function getMessageType() : Int;
	
	/**
	* Sets the options to display.
	* The option type is used by the Look and Feel to
	* determine what buttons to show (unless options are supplied).
	* @param newType an integer specifying the options the L&F is to display:
	*                  <code>DEFAULT_OPTION</code>,
	*                  <code>YES_NO_OPTION</code>,
	*                  <code>YES_NO_CANCEL_OPTION</code>,
	*                  or <code>OK_CANCEL_OPTION</code>
	* @exception RuntimeException if <code>newType</code> is not one of
	*          the legal values listed above
	*
	* @see #getOptionType
	* @see #setOptions
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The option pane's option type.
	*/
	@:overload public function setOptionType(newType : Int) : Void;
	
	/**
	* Returns the type of options that are displayed.
	*
	* @return an integer specifying the user-selectable options
	*
	* @see #setOptionType
	*/
	@:overload public function getOptionType() : Int;
	
	/**
	* Sets the input selection values for a pane that provides the user
	* with a list of items to choose from. (The UI provides a widget
	* for choosing one of the values.)  A <code>null</code> value
	* implies the user can input whatever they wish, usually by means
	* of a <code>JTextField</code>.
	* <p>
	* Sets <code>wantsInput</code> to true. Use
	* <code>setInitialSelectionValue</code> to specify the initially-chosen
	* value. After the pane as been enabled, <code>inputValue</code> is
	* set to the value the user has selected.
	* @param newValues an array of <code>Objects</code> the user to be
	*                  displayed
	*                  (usually in a list or combo-box) from which
	*                  the user can make a selection
	* @see #setWantsInput
	* @see #setInitialSelectionValue
	* @see #getSelectionValues
	* @beaninfo
	*       bound: true
	* description: The option pane's selection values.
	*/
	@:overload public function setSelectionValues(newValues : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Returns the input selection values.
	*
	* @return the array of <code>Objects</code> the user can select
	* @see #setSelectionValues
	*/
	@:overload public function getSelectionValues() : java.NativeArray<Dynamic>;
	
	/**
	* Sets the input value that is initially displayed as selected to the user.
	* Only used if <code>wantsInput</code> is true.
	* @param newValue the initially selected value
	* @see #setSelectionValues
	* @see #getInitialSelectionValue
	* @beaninfo
	*       bound: true
	* description: The option pane's initial selection value object.
	*/
	@:overload public function setInitialSelectionValue(newValue : Dynamic) : Void;
	
	/**
	* Returns the input value that is displayed as initially selected to the user.
	*
	* @return the initially selected value
	* @see #setInitialSelectionValue
	* @see #setSelectionValues
	*/
	@:overload public function getInitialSelectionValue() : Dynamic;
	
	/**
	* Sets the input value that was selected or input by the user.
	* Only used if <code>wantsInput</code> is true.  Note that this method
	* is invoked internally by the option pane (in response to user action)
	* and should generally not be called by client programs.  To set the
	* input value initially displayed as selected to the user, use
	* <code>setInitialSelectionValue</code>.
	*
	* @param newValue the <code>Object</code> used to set the
	*          value that the user specified (usually in a text field)
	* @see #setSelectionValues
	* @see #setInitialSelectionValue
	* @see #setWantsInput
	* @see #getInputValue
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The option pane's input value object.
	*/
	@:overload public function setInputValue(newValue : Dynamic) : Void;
	
	/**
	* Returns the value the user has input, if <code>wantsInput</code>
	* is true.
	*
	* @return the <code>Object</code> the user specified,
	*          if it was one of the objects, or a
	*          <code>String</code> if it was a value typed into a
	*          field
	* @see #setSelectionValues
	* @see #setWantsInput
	* @see #setInputValue
	*/
	@:overload public function getInputValue() : Dynamic;
	
	/**
	* Returns the maximum number of characters to place on a line in a
	* message. Default is to return <code>Integer.MAX_VALUE</code>.
	* The value can be
	* changed by overriding this method in a subclass.
	*
	* @return an integer giving the maximum number of characters on a line
	*/
	@:overload public function getMaxCharactersPerLineCount() : Int;
	
	/**
	* Sets the <code>wantsInput</code> property.
	* If <code>newValue</code> is true, an input component
	* (such as a text field or combo box) whose parent is
	* <code>parentComponent</code> is provided to
	* allow the user to input a value. If <code>getSelectionValues</code>
	* returns a non-<code>null</code> array, the input value is one of the
	* objects in that array. Otherwise the input value is whatever
	* the user inputs.
	* <p>
	* This is a bound property.
	*
	* @see #setSelectionValues
	* @see #setInputValue
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: Flag which allows the user to input a value.
	*/
	@:overload public function setWantsInput(newValue : Bool) : Void;
	
	/**
	* Returns the value of the <code>wantsInput</code> property.
	*
	* @return true if an input component will be provided
	* @see #setWantsInput
	*/
	@:overload public function getWantsInput() : Bool;
	
	/**
	* Requests that the initial value be selected, which will set
	* focus to the initial value. This method
	* should be invoked after the window containing the option pane
	* is made visible.
	*/
	@:overload public function selectInitialValue() : Void;
	
	/**
	* Returns a string representation of this <code>JOptionPane</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JOptionPane</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Returns the <code>AccessibleContext</code> associated with this JOptionPane.
	* For option panes, the <code>AccessibleContext</code> takes the form of an
	* <code>AccessibleJOptionPane</code>.
	* A new <code>AccessibleJOptionPane</code> instance is created if necessary.
	*
	* @return an AccessibleJOptionPane that serves as the
	*         AccessibleContext of this AccessibleJOptionPane
	* @beaninfo
	*       expert: true
	*  description: The AccessibleContext associated with this option pane
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* Retrieves a method from the provided class and makes it accessible.
*/
@:native('javax$swing$JOptionPane$ModalPrivilegedAction') @:internal extern class JOptionPane_ModalPrivilegedAction implements java.security.PrivilegedAction<java.lang.reflect.Method>
{
	@:overload public function new(clazz : Class<Dynamic>, methodName : String) : Void;
	
	@:overload public function run() : java.lang.reflect.Method;
	
	
}
/**
* This class implements accessibility support for the
* <code>JOptionPane</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to option pane user-interface
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
@:native('javax$swing$JOptionPane$AccessibleJOptionPane') extern class JOptionPane_AccessibleJOptionPane extends AccessibleJComponent
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the object
	* @see AccessibleRole
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
