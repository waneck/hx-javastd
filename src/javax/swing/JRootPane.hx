package javax.swing;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class JRootPane extends javax.swing.JComponent implements javax.accessibility.Accessible
{
	/**
	* Constant used for the windowDecorationStyle property. Indicates that
	* the <code>JRootPane</code> should not provide any sort of
	* Window decorations.
	*
	* @since 1.4
	*/
	@:require(java4) public static var NONE(default, null) : Int;
	
	/**
	* Constant used for the windowDecorationStyle property. Indicates that
	* the <code>JRootPane</code> should provide decorations appropriate for
	* a Frame.
	*
	* @since 1.4
	*/
	@:require(java4) public static var FRAME(default, null) : Int;
	
	/**
	* Constant used for the windowDecorationStyle property. Indicates that
	* the <code>JRootPane</code> should provide decorations appropriate for
	* a Dialog.
	*
	* @since 1.4
	*/
	@:require(java4) public static var PLAIN_DIALOG(default, null) : Int;
	
	/**
	* Constant used for the windowDecorationStyle property. Indicates that
	* the <code>JRootPane</code> should provide decorations appropriate for
	* a Dialog used to display an informational message.
	*
	* @since 1.4
	*/
	@:require(java4) public static var INFORMATION_DIALOG(default, null) : Int;
	
	/**
	* Constant used for the windowDecorationStyle property. Indicates that
	* the <code>JRootPane</code> should provide decorations appropriate for
	* a Dialog used to display an error message.
	*
	* @since 1.4
	*/
	@:require(java4) public static var ERROR_DIALOG(default, null) : Int;
	
	/**
	* Constant used for the windowDecorationStyle property. Indicates that
	* the <code>JRootPane</code> should provide decorations appropriate for
	* a Dialog used to display a <code>JColorChooser</code>.
	*
	* @since 1.4
	*/
	@:require(java4) public static var COLOR_CHOOSER_DIALOG(default, null) : Int;
	
	/**
	* Constant used for the windowDecorationStyle property. Indicates that
	* the <code>JRootPane</code> should provide decorations appropriate for
	* a Dialog used to display a <code>JFileChooser</code>.
	*
	* @since 1.4
	*/
	@:require(java4) public static var FILE_CHOOSER_DIALOG(default, null) : Int;
	
	/**
	* Constant used for the windowDecorationStyle property. Indicates that
	* the <code>JRootPane</code> should provide decorations appropriate for
	* a Dialog used to present a question to the user.
	*
	* @since 1.4
	*/
	@:require(java4) public static var QUESTION_DIALOG(default, null) : Int;
	
	/**
	* Constant used for the windowDecorationStyle property. Indicates that
	* the <code>JRootPane</code> should provide decorations appropriate for
	* a Dialog used to display a warning message.
	*
	* @since 1.4
	*/
	@:require(java4) public static var WARNING_DIALOG(default, null) : Int;
	
	/** The menu bar. */
	private var menuBar : javax.swing.JMenuBar;
	
	/** The content pane. */
	private var contentPane : java.awt.Container;
	
	/** The layered pane that manages the menu bar and content pane. */
	private var layeredPane : javax.swing.JLayeredPane;
	
	/**
	* The glass pane that overlays the menu bar and content pane,
	*  so it can intercept mouse movements and such.
	*/
	private var glassPane : java.awt.Component;
	
	/**
	* The button that gets activated when the pane has the focus and
	* a UI-specific action like pressing the <b>Enter</b> key occurs.
	*/
	private var defaultButton : javax.swing.JButton;
	
	/**
	* As of Java 2 platform v1.3 this unusable field is no longer used.
	* To override the default button you should replace the <code>Action</code>
	* in the <code>JRootPane</code>'s <code>ActionMap</code>. Please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*  @see #defaultButton
	*/
	private var defaultPressAction : JRootPane_DefaultAction;
	
	/**
	* As of Java 2 platform v1.3 this unusable field is no longer used.
	* To override the default button you should replace the <code>Action</code>
	* in the <code>JRootPane</code>'s <code>ActionMap</code>. Please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*  @see #defaultButton
	*/
	private var defaultReleaseAction : JRootPane_DefaultAction;
	
	/**
	* Creates a <code>JRootPane</code>, setting up its
	* <code>glassPane</code>, <code>layeredPane</code>,
	* and <code>contentPane</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setDoubleBuffered(aFlag : Bool) : Void;
	
	/**
	* Returns a constant identifying the type of Window decorations the
	* <code>JRootPane</code> is providing.
	*
	* @return One of <code>NONE</code>, <code>FRAME</code>,
	*        <code>PLAIN_DIALOG</code>, <code>INFORMATION_DIALOG</code>,
	*        <code>ERROR_DIALOG</code>, <code>COLOR_CHOOSER_DIALOG</code>,
	*        <code>FILE_CHOOSER_DIALOG</code>, <code>QUESTION_DIALOG</code> or
	*        <code>WARNING_DIALOG</code>.
	* @see #setWindowDecorationStyle
	* @since 1.4
	*/
	@:require(java4) @:overload public function getWindowDecorationStyle() : Int;
	
	/**
	* Sets the type of Window decorations (such as borders, widgets for
	* closing a Window, title ...) the <code>JRootPane</code> should
	* provide. The default is to provide no Window decorations
	* (<code>NONE</code>).
	* <p>
	* This is only a hint, and some look and feels may not support
	* this.
	* This is a bound property.
	*
	* @param windowDecorationStyle Constant identifying Window decorations
	*        to provide.
	* @see JDialog#setDefaultLookAndFeelDecorated
	* @see JFrame#setDefaultLookAndFeelDecorated
	* @see LookAndFeel#getSupportsWindowDecorations
	* @throws IllegalArgumentException if <code>style</code> is
	*        not one of: <code>NONE</code>, <code>FRAME</code>,
	*        <code>PLAIN_DIALOG</code>, <code>INFORMATION_DIALOG</code>,
	*        <code>ERROR_DIALOG</code>, <code>COLOR_CHOOSER_DIALOG</code>,
	*        <code>FILE_CHOOSER_DIALOG</code>, <code>QUESTION_DIALOG</code>, or
	*        <code>WARNING_DIALOG</code>.
	* @since 1.4
	* @beaninfo
	*        bound: true
	*         enum: NONE                   JRootPane.NONE
	*               FRAME                  JRootPane.FRAME
	*               PLAIN_DIALOG           JRootPane.PLAIN_DIALOG
	*               INFORMATION_DIALOG     JRootPane.INFORMATION_DIALOG
	*               ERROR_DIALOG           JRootPane.ERROR_DIALOG
	*               COLOR_CHOOSER_DIALOG   JRootPane.COLOR_CHOOSER_DIALOG
	*               FILE_CHOOSER_DIALOG    JRootPane.FILE_CHOOSER_DIALOG
	*               QUESTION_DIALOG        JRootPane.QUESTION_DIALOG
	*               WARNING_DIALOG         JRootPane.WARNING_DIALOG
	*       expert: true
	*    attribute: visualUpdate true
	*  description: Identifies the type of Window decorations to provide
	*/
	@:require(java4) @:overload public function setWindowDecorationStyle(windowDecorationStyle : Int) : Void;
	
	/**
	* Returns the L&F object that renders this component.
	*
	* @return <code>LabelUI</code> object
	* @since 1.3
	*/
	@:require(java3) @:overload public function getUI() : javax.swing.plaf.RootPaneUI;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui  the <code>LabelUI</code> L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*      expert: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	* @since 1.3
	*/
	@:require(java3) @:overload public function setUI(ui : javax.swing.plaf.RootPaneUI) : Void;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns a string that specifies the name of the L&F class
	* that renders this component.
	*
	* @return the string "RootPaneUI"
	*
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Called by the constructor methods to create the default
	* <code>layeredPane</code>.
	* Bt default it creates a new <code>JLayeredPane</code>.
	* @return the default <code>layeredPane</code>
	*/
	@:overload private function createLayeredPane() : javax.swing.JLayeredPane;
	
	/**
	* Called by the constructor methods to create the default
	* <code>contentPane</code>.
	* By default this method creates a new <code>JComponent</code> add sets a
	* <code>BorderLayout</code> as its <code>LayoutManager</code>.
	* @return the default <code>contentPane</code>
	*/
	@:overload private function createContentPane() : java.awt.Container;
	
	/**
	* Called by the constructor methods to create the default
	* <code>glassPane</code>.
	* By default this method creates a new <code>JComponent</code>
	* with visibility set to false.
	* @return the default <code>glassPane</code>
	*/
	@:overload private function createGlassPane() : java.awt.Component;
	
	/**
	* Called by the constructor methods to create the default
	* <code>layoutManager</code>.
	* @return the default <code>layoutManager</code>.
	*/
	@:overload private function createRootLayout() : java.awt.LayoutManager;
	
	/**
	* Adds or changes the menu bar used in the layered pane.
	* @param menu the <code>JMenuBar</code> to add
	*/
	@:overload public function setJMenuBar(menu : javax.swing.JMenuBar) : Void;
	
	/**
	* Specifies the menu bar value.
	* @deprecated As of Swing version 1.0.3
	*  replaced by <code>setJMenuBar(JMenuBar menu)</code>.
	* @param menu the <code>JMenuBar</code> to add.
	*/
	@:overload public function setMenuBar(menu : javax.swing.JMenuBar) : Void;
	
	/**
	* Returns the menu bar from the layered pane.
	* @return the <code>JMenuBar</code> used in the pane
	*/
	@:overload public function getJMenuBar() : javax.swing.JMenuBar;
	
	/**
	* Returns the menu bar value.
	* @deprecated As of Swing version 1.0.3
	*  replaced by <code>getJMenuBar()</code>.
	* @return the <code>JMenuBar</code> used in the pane
	*/
	@:overload public function getMenuBar() : javax.swing.JMenuBar;
	
	/**
	* Sets the content pane -- the container that holds the components
	* parented by the root pane.
	* <p>
	* Swing's painting architecture requires an opaque <code>JComponent</code>
	* in the containment hiearchy. This is typically provided by the
	* content pane. If you replace the content pane it is recommended you
	* replace it with an opaque <code>JComponent</code>.
	*
	* @param content the <code>Container</code> to use for component-contents
	* @exception java.awt.IllegalComponentStateException (a runtime
	*            exception) if the content pane parameter is <code>null</code>
	*/
	@:overload public function setContentPane(content : java.awt.Container) : Void;
	
	/**
	* Returns the content pane -- the container that holds the components
	* parented by the root pane.
	*
	* @return the <code>Container</code> that holds the component-contents
	*/
	@:overload public function getContentPane() : java.awt.Container;
	
	/**
	* Sets the layered pane for the root pane. The layered pane
	* typically holds a content pane and an optional <code>JMenuBar</code>.
	*
	* @param layered  the <code>JLayeredPane</code> to use
	* @exception java.awt.IllegalComponentStateException (a runtime
	*            exception) if the layered pane parameter is <code>null</code>
	*/
	@:overload public function setLayeredPane(layered : javax.swing.JLayeredPane) : Void;
	
	/**
	* Gets the layered pane used by the root pane. The layered pane
	* typically holds a content pane and an optional <code>JMenuBar</code>.
	*
	* @return the <code>JLayeredPane</code> currently in use
	*/
	@:overload public function getLayeredPane() : javax.swing.JLayeredPane;
	
	/**
	* Sets a specified <code>Component</code> to be the glass pane for this
	* root pane.  The glass pane should normally be a lightweight,
	* transparent component, because it will be made visible when
	* ever the root pane needs to grab input events.
	* <p>
	* The new glass pane's visibility is changed to match that of
	* the current glass pane.  An implication of this is that care
	* must be taken when you want to replace the glass pane and
	* make it visible.  Either of the following will work:
	* <pre>
	*   root.setGlassPane(newGlassPane);
	*   newGlassPane.setVisible(true);
	* </pre>
	* or:
	* <pre>
	*   root.getGlassPane().setVisible(true);
	*   root.setGlassPane(newGlassPane);
	* </pre>
	*
	* @param glass the <code>Component</code> to use as the glass pane
	*              for this <code>JRootPane</code>
	* @exception NullPointerException if the <code>glass</code> parameter is
	*          <code>null</code>
	*/
	@:overload public function setGlassPane(glass : java.awt.Component) : Void;
	
	/**
	* Returns the current glass pane for this <code>JRootPane</code>.
	* @return the current glass pane
	* @see #setGlassPane
	*/
	@:overload public function getGlassPane() : java.awt.Component;
	
	/**
	* If a descendant of this <code>JRootPane</code> calls
	* <code>revalidate</code>, validate from here on down.
	*<p>
	* Deferred requests to layout a component and its descendents again.
	* For example, calls to <code>revalidate</code>, are pushed upwards to
	* either a <code>JRootPane</code> or a <code>JScrollPane</code>
	* because both classes override <code>isValidateRoot</code> to return true.
	*
	* @see JComponent#isValidateRoot
	* @see java.awt.Container#isValidateRoot
	* @return true
	*/
	@:overload override public function isValidateRoot() : Bool;
	
	/**
	* The <code>glassPane</code> and <code>contentPane</code>
	* have the same bounds, which means <code>JRootPane</code>
	* does not tiles its children and this should return false.
	* On the other hand, the <code>glassPane</code>
	* is normally not visible, and so this can return true if the
	* <code>glassPane</code> isn't visible. Therefore, the
	* return value here depends upon the visiblity of the
	* <code>glassPane</code>.
	*
	* @return true if this component's children don't overlap
	*/
	@:overload override public function isOptimizedDrawingEnabled() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function addNotify() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function removeNotify() : Void;
	
	/**
	* Sets the <code>defaultButton</code> property,
	* which determines the current default button for this <code>JRootPane</code>.
	* The default button is the button which will be activated
	* when a UI-defined activation event (typically the <b>Enter</b> key)
	* occurs in the root pane regardless of whether or not the button
	* has keyboard focus (unless there is another component within
	* the root pane which consumes the activation event,
	* such as a <code>JTextPane</code>).
	* For default activation to work, the button must be an enabled
	* descendent of the root pane when activation occurs.
	* To remove a default button from this root pane, set this
	* property to <code>null</code>.
	*
	* @see JButton#isDefaultButton
	* @param defaultButton the <code>JButton</code> which is to be the default button
	*
	* @beaninfo
	*  description: The button activated by default in this root pane
	*/
	@:overload public function setDefaultButton(defaultButton : javax.swing.JButton) : Void;
	
	/**
	* Returns the value of the <code>defaultButton</code> property.
	* @return the <code>JButton</code> which is currently the default button
	* @see #setDefaultButton
	*/
	@:overload public function getDefaultButton() : javax.swing.JButton;
	
	/**
	* Overridden to enforce the position of the glass component as
	* the zero child.
	*
	* @param comp the component to be enhanced
	* @param constraints the constraints to be respected
	* @param index the index
	*/
	@:overload override private function addImpl(comp : java.awt.Component, constraints : Dynamic, index : Int) : Void;
	
	/**
	* Returns a string representation of this <code>JRootPane</code>.
	* This method is intended to be used only for debugging purposes,
	* and the content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JRootPane</code>.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with this
	* <code>JRootPane</code>. For root panes, the
	* <code>AccessibleContext</code> takes the form of an
	* <code>AccessibleJRootPane</code>.
	* A new <code>AccessibleJRootPane</code> instance is created if necessary.
	*
	* @return an <code>AccessibleJRootPane</code> that serves as the
	*         <code>AccessibleContext</code> of this <code>JRootPane</code>
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
@:native('javax$swing$JRootPane$DefaultAction') @:internal extern class JRootPane_DefaultAction extends javax.swing.AbstractAction
{
	@:overload public function setOwner(owner : javax.swing.JButton) : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* A custom layout manager that is responsible for the layout of
* layeredPane, glassPane, and menuBar.
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
@:native('javax$swing$JRootPane$RootLayout') extern class JRootPane_RootLayout implements java.awt.LayoutManager2 implements java.io.Serializable
{
	/**
	* Returns the amount of space the layout would like to have.
	*
	* @param parent the Container for which this layout manager
	* is being used
	* @return a Dimension object containing the layout's preferred size
	*/
	@:overload public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the minimum amount of space the layout needs.
	*
	* @param parent the Container for which this layout manager
	* is being used
	* @return a Dimension object containing the layout's minimum size
	*/
	@:overload public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the maximum amount of space the layout can use.
	*
	* @param target the Container for which this layout manager
	* is being used
	* @return a Dimension object containing the layout's maximum size
	*/
	@:overload public function maximumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Instructs the layout manager to perform the layout for the specified
	* container.
	*
	* @param parent the Container for which this layout manager
	* is being used
	*/
	@:overload public function layoutContainer(parent : java.awt.Container) : Void;
	
	@:overload public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	@:overload public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	@:overload public function addLayoutComponent(comp : java.awt.Component, constraints : Dynamic) : Void;
	
	@:overload public function getLayoutAlignmentX(target : java.awt.Container) : Single;
	
	@:overload public function getLayoutAlignmentY(target : java.awt.Container) : Single;
	
	@:overload public function invalidateLayout(target : java.awt.Container) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JRootPane</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to root pane user-interface elements.
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
@:native('javax$swing$JRootPane$AccessibleJRootPane') extern class JRootPane_AccessibleJRootPane extends javax.swing.JComponent.JComponent_AccessibleJComponent
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of
	* the object
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Returns the number of accessible children of the object.
	*
	* @return the number of accessible children of the object.
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Returns the specified Accessible child of the object.  The Accessible
	* children of an Accessible object are zero-based, so the first child
	* of an Accessible child is at index 0, the second child is at index 1,
	* and so on.
	*
	* @param i zero-based index of child
	* @return the Accessible child of the object
	* @see #getAccessibleChildrenCount
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	
}
