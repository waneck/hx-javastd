package javax.swing.plaf.basic;
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
extern class BasicOptionPaneUI extends javax.swing.plaf.OptionPaneUI
{
	/**
	* Provides the basic look and feel for a <code>JOptionPane</code>.
	* <code>BasicMessagePaneUI</code> provides a means to place an icon,
	* message and buttons into a <code>Container</code>.
	* Generally, the layout will look like:<p>
	* <pre>
	*        ------------------
	*        | i | message    |
	*        | c | message    |
	*        | o | message    |
	*        | n | message    |
	*        ------------------
	*        |     buttons    |
	*        |________________|
	* </pre>
	* icon is an instance of <code>Icon</code> that is wrapped inside a
	* <code>JLabel</code>.  The message is an opaque object and is tested
	* for the following: if the message is a <code>Component</code> it is
	* added to the <code>Container</code>, if it is an <code>Icon</code>
	* it is wrapped inside a <code>JLabel</code> and added to the
	* <code>Container</code> otherwise it is wrapped inside a <code>JLabel</code>.
	* <p>
	* The above layout is used when the option pane's
	* <code>ComponentOrientation</code> property is horizontal, left-to-right.
	* The layout will be adjusted appropriately for other orientations.
	* <p>
	* The <code>Container</code>, message, icon, and buttons are all
	* determined from abstract methods.
	*
	* @author James Gosling
	* @author Scott Violet
	* @author Amy Fowler
	*/
	@:public @:static @:final public static var MinimumWidth(default, null) : Int;
	
	@:public @:static @:final public static var MinimumHeight(default, null) : Int;
	
	/**
	* <code>JOptionPane</code> that the receiver is providing the
	* look and feel for.
	*/
	@:protected private var optionPane : javax.swing.JOptionPane;
	
	@:protected private var minimumSize : java.awt.Dimension;
	
	/** JComponent provide for input if optionPane.getWantsInput() returns
	* true. */
	@:protected private var inputComponent : javax.swing.JComponent;
	
	/** Component to receive focus when messaged with selectInitialValue. */
	@:protected private var initialFocusComponent : java.awt.Component;
	
	/** This is set to true in validateComponent if a Component is contained
	* in either the message or the buttons. */
	@:protected private var hasCustomComponents : Bool;
	
	@:protected private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	/**
	* Creates a new BasicOptionPaneUI instance.
	*/
	@:overload @:public @:static public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Installs the receiver as the L&F for the passed in
	* <code>JOptionPane</code>.
	*/
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Removes the receiver from the L&F controller of the passed in split
	* pane.
	*/
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function installDefaults() : Void;
	
	@:overload @:protected private function uninstallDefaults() : Void;
	
	@:overload @:protected private function installComponents() : Void;
	
	@:overload @:protected private function uninstallComponents() : Void;
	
	@:overload @:protected private function createLayoutManager() : java.awt.LayoutManager;
	
	@:overload @:protected private function installListeners() : Void;
	
	@:overload @:protected private function uninstallListeners() : Void;
	
	@:overload @:protected private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	@:overload @:protected private function installKeyboardActions() : Void;
	
	@:overload @:protected private function uninstallKeyboardActions() : Void;
	
	/**
	* Returns the minimum size the option pane should be. Primarily
	* provided for subclassers wishing to offer a different minimum size.
	*/
	@:overload @:public public function getMinimumOptionPaneSize() : java.awt.Dimension;
	
	/**
	* If <code>c</code> is the <code>JOptionPane</code> the receiver
	* is contained in, the preferred
	* size that is returned is the maximum of the preferred size of
	* the <code>LayoutManager</code> for the <code>JOptionPane</code>, and
	* <code>getMinimumOptionPaneSize</code>.
	*/
	@:overload @:public override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Messaged from installComponents to create a Container containing the
	* body of the message. The icon is the created by calling
	* <code>addIcon</code>.
	*/
	@:overload @:protected private function createMessageArea() : java.awt.Container;
	
	/**
	* Creates the appropriate object to represent <code>msg</code> and
	* places it into <code>container</code>. If <code>msg</code> is an
	* instance of Component, it is added directly, if it is an Icon,
	* a JLabel is created to represent it, otherwise a JLabel is
	* created for the string, if <code>d</code> is an Object[], this
	* method will be recursively invoked for the children.
	* <code>internallyCreated</code> is true if Objc is an instance
	* of Component and was created internally by this method (this is
	* used to correctly set hasCustomComponents only if !internallyCreated).
	*/
	@:overload @:protected private function addMessageComponents(container : java.awt.Container, cons : java.awt.GridBagConstraints, msg : Dynamic, maxll : Int, internallyCreated : Bool) : Void;
	
	/**
	* Returns the message to display from the JOptionPane the receiver is
	* providing the look and feel for.
	*/
	@:overload @:protected private function getMessage() : Dynamic;
	
	/**
	* Creates and adds a JLabel representing the icon returned from
	* <code>getIcon</code> to <code>top</code>. This is messaged from
	* <code>createMessageArea</code>
	*/
	@:overload @:protected private function addIcon(top : java.awt.Container) : Void;
	
	/**
	* Returns the icon from the JOptionPane the receiver is providing
	* the look and feel for, or the default icon as returned from
	* <code>getDefaultIcon</code>.
	*/
	@:overload @:protected private function getIcon() : javax.swing.Icon;
	
	/**
	* Returns the icon to use for the passed in type.
	*/
	@:overload @:protected private function getIconForType(messageType : Int) : javax.swing.Icon;
	
	/**
	* Returns the maximum number of characters to place on a line.
	*/
	@:overload @:protected private function getMaxCharactersPerLineCount() : Int;
	
	/**
	* Recursively creates new JLabel instances to represent <code>d</code>.
	* Each JLabel instance is added to <code>c</code>.
	*/
	@:overload @:protected private function burstStringInto(c : java.awt.Container, d : String, maxll : Int) : Void;
	
	@:overload @:protected private function createSeparator() : java.awt.Container;
	
	/**
	* Creates and returns a Container containing the buttons. The buttons
	* are created by calling <code>getButtons</code>.
	*/
	@:overload @:protected private function createButtonArea() : java.awt.Container;
	
	/**
	* Creates the appropriate object to represent each of the objects in
	* <code>buttons</code> and adds it to <code>container</code>. This
	* differs from addMessageComponents in that it will recurse on
	* <code>buttons</code> and that if button is not a Component
	* it will create an instance of JButton.
	*/
	@:overload @:protected private function addButtonComponents(container : java.awt.Container, buttons : java.NativeArray<Dynamic>, initialIndex : Int) : Void;
	
	@:overload @:protected private function createButtonActionListener(buttonIndex : Int) : java.awt.event.ActionListener;
	
	/**
	* Returns the buttons to display from the JOptionPane the receiver is
	* providing the look and feel for. If the JOptionPane has options
	* set, they will be provided, otherwise if the optionType is
	* YES_NO_OPTION, yesNoOptions is returned, if the type is
	* YES_NO_CANCEL_OPTION yesNoCancelOptions is returned, otherwise
	* defaultButtons are returned.
	*/
	@:overload @:protected private function getButtons() : java.NativeArray<Dynamic>;
	
	/**
	* Returns true, basic L&F wants all the buttons to have the same
	* width.
	*/
	@:overload @:protected private function getSizeButtonsToSameWidth() : Bool;
	
	/**
	* Returns the initial index into the buttons to select. The index
	* is calculated from the initial value from the JOptionPane and
	* options of the JOptionPane or 0.
	*/
	@:overload @:protected private function getInitialValueIndex() : Int;
	
	/**
	* Sets the input value in the option pane the receiver is providing
	* the look and feel for based on the value in the inputComponent.
	*/
	@:overload @:protected private function resetInputValue() : Void;
	
	/**
	* If inputComponent is non-null, the focus is requested on that,
	* otherwise request focus on the default value
	*/
	@:overload @:public override public function selectInitialValue(op : javax.swing.JOptionPane) : Void;
	
	/**
	* Returns true if in the last call to validateComponent the message
	* or buttons contained a subclass of Component.
	*/
	@:overload @:public override public function containsCustomComponents(op : javax.swing.JOptionPane) : Bool;
	
	
}
/**
* <code>ButtonAreaLayout</code> behaves in a similar manner to
* <code>FlowLayout</code>. It lays out all components from left to
* right. If <code>syncAllWidths</code> is true, the widths of each
* component will be set to the largest preferred size width.
*
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code BasicOptionPaneUI}.
*/
@:native('javax$swing$plaf$basic$BasicOptionPaneUI$ButtonAreaLayout') extern class BasicOptionPaneUI_ButtonAreaLayout implements java.awt.LayoutManager
{
	@:protected private var syncAllWidths : Bool;
	
	@:protected private var padding : Int;
	
	/** If true, children are lumped together in parent. */
	@:protected private var centersChildren : Bool;
	
	@:overload @:public public function new(syncAllWidths : Bool, padding : Int) : Void;
	
	@:overload @:public public function setSyncAllWidths(newValue : Bool) : Void;
	
	@:overload @:public public function getSyncAllWidths() : Bool;
	
	@:overload @:public public function setPadding(newPadding : Int) : Void;
	
	@:overload @:public public function getPadding() : Int;
	
	@:overload @:public public function setCentersChildren(newValue : Bool) : Void;
	
	@:overload @:public public function getCentersChildren() : Bool;
	
	@:overload @:public public function addLayoutComponent(string : String, comp : java.awt.Component) : Void;
	
	@:overload @:public public function layoutContainer(container : java.awt.Container) : Void;
	
	@:overload @:public public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code BasicOptionPaneUI}.
*/
@:native('javax$swing$plaf$basic$BasicOptionPaneUI$PropertyChangeHandler') extern class BasicOptionPaneUI_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	/**
	* If the source of the PropertyChangeEvent <code>e</code> equals the
	* optionPane and is one of the ICON_PROPERTY, MESSAGE_PROPERTY,
	* OPTIONS_PROPERTY or INITIAL_VALUE_PROPERTY,
	* validateComponent is invoked.
	*/
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code BasicOptionPaneUI}.
*/
@:native('javax$swing$plaf$basic$BasicOptionPaneUI$ButtonActionListener') extern class BasicOptionPaneUI_ButtonActionListener implements java.awt.event.ActionListener
{
	@:protected private var buttonIndex : Int;
	
	@:overload @:public public function new(buttonIndex : Int) : Void;
	
	@:overload @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicOptionPaneUI$Handler') @:internal extern class BasicOptionPaneUI_Handler implements java.awt.event.ActionListener implements java.awt.event.MouseListener implements java.beans.PropertyChangeListener
{
	@:overload @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* A JTextField that allows you to specify an array of KeyStrokes that
* that will have their bindings processed regardless of whether or
* not they are registered on the JTextField. This is used as we really
* want the ActionListener to be notified so that we can push the
* change to the JOptionPane, but we also want additional bindings
* (those of the JRootPane) to be processed as well.
*/
@:native('javax$swing$plaf$basic$BasicOptionPaneUI$MultiplexingTextField') @:internal extern class BasicOptionPaneUI_MultiplexingTextField extends javax.swing.JTextField
{
	@:overload @:protected override private function processKeyBinding(ks : javax.swing.KeyStroke, e : java.awt.event.KeyEvent, condition : Int, pressed : Bool) : Bool;
	
	
}
/**
* Registered in the ActionMap. Sets the value of the option pane
* to <code>JOptionPane.CLOSED_OPTION</code>.
*/
@:native('javax$swing$plaf$basic$BasicOptionPaneUI$Actions') @:internal extern class BasicOptionPaneUI_Actions extends sun.swing.UIAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class is used to create the default buttons. This indirection is
* used so that addButtonComponents can tell which Buttons were created
* by us vs subclassers or from the JOptionPane itself.
*/
@:native('javax$swing$plaf$basic$BasicOptionPaneUI$ButtonFactory') @:internal extern class BasicOptionPaneUI_ButtonFactory
{
	
}
@:native('javax$swing$plaf$basic$BasicOptionPaneUI$ButtonFactory$ConstrainedButton') @:internal extern class BasicOptionPaneUI_ButtonFactory_ConstrainedButton extends javax.swing.JButton
{
	@:overload @:public override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload @:public override public function getPreferredSize() : java.awt.Dimension;
	
	
}
