package javax.swing;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
* An extended version of <code>java.awt.Frame</code> that adds support for
* the JFC/Swing component architecture.
* You can find task-oriented documentation about using <code>JFrame</code>
* in <em>The Java Tutorial</em>, in the section
* <a
href="http://java.sun.com/docs/books/tutorial/uiswing/components/frame.html">How to Make Frames</a>.
*
* <p>
* The <code>JFrame</code> class is slightly incompatible with <code>Frame</code>.
* Like all other JFC/Swing top-level containers,
* a <code>JFrame</code> contains a <code>JRootPane</code> as its only child.
* The <b>content pane</b> provided by the root pane should,
* as a rule, contain
* all the non-menu components displayed by the <code>JFrame</code>.
* This is different from the AWT <code>Frame</code> case.
* As a conveniance <code>add</code> and its variants, <code>remove</code> and
* <code>setLayout</code> have been overridden to forward to the
* <code>contentPane</code> as necessary. This means you can write:
* <pre>
*       frame.add(child);
* </pre>
* And the child will be added to the contentPane.
* The content pane will
* always be non-null. Attempting to set it to null will cause the JFrame
* to throw an exception. The default content pane will have a BorderLayout
* manager set on it.
* Refer to {@link javax.swing.RootPaneContainer}
* for details on adding, removing and setting the <code>LayoutManager</code>
* of a <code>JFrame</code>.
* <p>
* Unlike a <code>Frame</code>, a <code>JFrame</code> has some notion of how to
* respond when the user attempts to close the window. The default behavior
* is to simply hide the JFrame when the user closes the window. To change the
* default behavior, you invoke the method
* {@link #setDefaultCloseOperation}.
* To make the <code>JFrame</code> behave the same as a <code>Frame</code>
* instance, use
* <code>setDefaultCloseOperation(WindowConstants.DO_NOTHING_ON_CLOSE)</code>.
* <p>
* For more information on content panes
* and other features that root panes provide,
* see <a
href="http://java.sun.com/docs/books/tutorial/uiswing/components/toplevel.html">Using Top-Level Containers</a> in <em>The Java Tutorial</em>.
* <p>
* In a multi-screen environment, you can create a <code>JFrame</code>
* on a different screen device.  See {@link java.awt.Frame} for more
* information.
* <p>
* <strong>Warning:</strong> Swing is not thread safe. For more
* information see <a
* href="package-summary.html#threading">Swing's Threading
* Policy</a>.
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
* @see JRootPane
* @see #setDefaultCloseOperation
* @see java.awt.event.WindowListener#windowClosing
* @see javax.swing.RootPaneContainer
*
* @beaninfo
*      attribute: isContainer true
*      attribute: containerDelegate getContentPane
*    description: A toplevel window which can be minimized to an icon.
*
* @author Jeff Dinkins
* @author Georges Saab
* @author David Kloba
*/
extern class JFrame extends java.awt.Frame implements javax.swing.WindowConstants implements javax.accessibility.Accessible implements javax.swing.RootPaneContainer implements javax.swing.TransferHandler.TransferHandler_HasGetTransferHandler
{
	/**
	* The exit application default window close operation. If a window
	* has this set as the close operation and is closed in an applet,
	* a <code>SecurityException</code> may be thrown.
	* It is recommended you only use this in an application.
	* <p>
	* @since 1.3
	*/
	@:require(java3) @:public @:static @:final public static var EXIT_ON_CLOSE(default, null) : Int;
	
	/**
	* The <code>JRootPane</code> instance that manages the
	* <code>contentPane</code>
	* and optional <code>menuBar</code> for this frame, as well as the
	* <code>glassPane</code>.
	*
	* @see JRootPane
	* @see RootPaneContainer
	*/
	@:protected private var rootPane : javax.swing.JRootPane;
	
	/**
	* If true then calls to <code>add</code> and <code>setLayout</code>
	* will be forwarded to the <code>contentPane</code>. This is initially
	* false, but is set to true when the <code>JFrame</code> is constructed.
	*
	* @see #isRootPaneCheckingEnabled
	* @see #setRootPaneCheckingEnabled
	* @see javax.swing.RootPaneContainer
	*/
	@:protected private var rootPaneCheckingEnabled : Bool;
	
	/**
	* Constructs a new frame that is initially invisible.
	* <p>
	* This constructor sets the component's locale property to the value
	* returned by <code>JComponent.getDefaultLocale</code>.
	*
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see Component#setSize
	* @see Component#setVisible
	* @see JComponent#getDefaultLocale
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a <code>Frame</code> in the specified
	* <code>GraphicsConfiguration</code> of
	* a screen device and a blank title.
	* <p>
	* This constructor sets the component's locale property to the value
	* returned by <code>JComponent.getDefaultLocale</code>.
	*
	* @param gc the <code>GraphicsConfiguration</code> that is used
	*          to construct the new <code>Frame</code>;
	*          if <code>gc</code> is <code>null</code>, the system
	*          default <code>GraphicsConfiguration</code> is assumed
	* @exception IllegalArgumentException if <code>gc</code> is not from
	*          a screen device.  This exception is always thrown when
	*      GraphicsEnvironment.isHeadless() returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see JComponent#getDefaultLocale
	* @since     1.3
	*/
	@:require(java3) @:overload @:public public function new(gc : java.awt.GraphicsConfiguration) : Void;
	
	/**
	* Creates a new, initially invisible <code>Frame</code> with the
	* specified title.
	* <p>
	* This constructor sets the component's locale property to the value
	* returned by <code>JComponent.getDefaultLocale</code>.
	*
	* @param title the title for the frame
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see Component#setSize
	* @see Component#setVisible
	* @see JComponent#getDefaultLocale
	*/
	@:overload @:public public function new(title : String) : Void;
	
	/**
	* Creates a <code>JFrame</code> with the specified title and the
	* specified <code>GraphicsConfiguration</code> of a screen device.
	* <p>
	* This constructor sets the component's locale property to the value
	* returned by <code>JComponent.getDefaultLocale</code>.
	*
	* @param title the title to be displayed in the
	*          frame's border. A <code>null</code> value is treated as
	*          an empty string, "".
	* @param gc the <code>GraphicsConfiguration</code> that is used
	*          to construct the new <code>JFrame</code> with;
	*          if <code>gc</code> is <code>null</code>, the system
	*          default <code>GraphicsConfiguration</code> is assumed
	* @exception IllegalArgumentException if <code>gc</code> is not from
	*          a screen device.  This exception is always thrown when
	*      GraphicsEnvironment.isHeadless() returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see JComponent#getDefaultLocale
	* @since     1.3
	*/
	@:require(java3) @:overload @:public public function new(title : String, gc : java.awt.GraphicsConfiguration) : Void;
	
	/** Called by the constructors to init the <code>JFrame</code> properly. */
	@:overload @:protected private function frameInit() : Void;
	
	/**
	* Called by the constructor methods to create the default
	* <code>rootPane</code>.
	*/
	@:overload @:protected private function createRootPane() : javax.swing.JRootPane;
	
	/**
	* Processes window events occurring on this component.
	* Hides the window or disposes of it, as specified by the setting
	* of the <code>defaultCloseOperation</code> property.
	*
	* @param  e  the window event
	* @see    #setDefaultCloseOperation
	* @see    java.awt.Window#processWindowEvent
	*/
	@:overload @:protected override private function processWindowEvent(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Sets the operation that will happen by default when
	* the user initiates a "close" on this frame.
	* You must specify one of the following choices:
	* <p>
	* <ul>
	* <li><code>DO_NOTHING_ON_CLOSE</code>
	* (defined in <code>WindowConstants</code>):
	* Don't do anything; require the
	* program to handle the operation in the <code>windowClosing</code>
	* method of a registered <code>WindowListener</code> object.
	*
	* <li><code>HIDE_ON_CLOSE</code>
	* (defined in <code>WindowConstants</code>):
	* Automatically hide the frame after
	* invoking any registered <code>WindowListener</code>
	* objects.
	*
	* <li><code>DISPOSE_ON_CLOSE</code>
	* (defined in <code>WindowConstants</code>):
	* Automatically hide and dispose the
	* frame after invoking any registered <code>WindowListener</code>
	* objects.
	*
	* <li><code>EXIT_ON_CLOSE</code>
	* (defined in <code>JFrame</code>):
	* Exit the application using the <code>System</code>
	* <code>exit</code> method.  Use this only in applications.
	* </ul>
	* <p>
	* The value is set to <code>HIDE_ON_CLOSE</code> by default. Changes
	* to the value of this property cause the firing of a property
	* change event, with property name "defaultCloseOperation".
	* <p>
	* <b>Note</b>: When the last displayable window within the
	* Java virtual machine (VM) is disposed of, the VM may
	* terminate.  See <a href="../../java/awt/doc-files/AWTThreadIssues.html">
	* AWT Threading Issues</a> for more information.
	*
	* @param operation the operation which should be performed when the
	*        user closes the frame
	* @exception IllegalArgumentException if defaultCloseOperation value
	*             isn't one of the above valid values
	* @see #addWindowListener
	* @see #getDefaultCloseOperation
	* @see WindowConstants
	* @throws  SecurityException
	*        if <code>EXIT_ON_CLOSE</code> has been specified and the
	*        <code>SecurityManager</code> will
	*        not allow the caller to invoke <code>System.exit</code>
	* @see        java.lang.Runtime#exit(int)
	*
	* @beaninfo
	*   preferred: true
	*       bound: true
	*        enum: DO_NOTHING_ON_CLOSE WindowConstants.DO_NOTHING_ON_CLOSE
	*              HIDE_ON_CLOSE       WindowConstants.HIDE_ON_CLOSE
	*              DISPOSE_ON_CLOSE    WindowConstants.DISPOSE_ON_CLOSE
	*              EXIT_ON_CLOSE       WindowConstants.EXIT_ON_CLOSE
	* description: The frame's default close operation.
	*/
	@:overload @:public public function setDefaultCloseOperation(operation : Int) : Void;
	
	/**
	* Returns the operation that occurs when the user
	* initiates a "close" on this frame.
	*
	* @return an integer indicating the window-close operation
	* @see #setDefaultCloseOperation
	*/
	@:overload @:public public function getDefaultCloseOperation() : Int;
	
	/**
	* Sets the {@code transferHandler} property, which is a mechanism to
	* support transfer of data into this component. Use {@code null}
	* if the component does not support data transfer operations.
	* <p>
	* If the system property {@code suppressSwingDropSupport} is {@code false}
	* (the default) and the current drop target on this component is either
	* {@code null} or not a user-set drop target, this method will change the
	* drop target as follows: If {@code newHandler} is {@code null} it will
	* clear the drop target. If not {@code null} it will install a new
	* {@code DropTarget}.
	* <p>
	* Note: When used with {@code JFrame}, {@code TransferHandler} only
	* provides data import capability, as the data export related methods
	* are currently typed to {@code JComponent}.
	* <p>
	* Please see
	* <a href="http://java.sun.com/docs/books/tutorial/uiswing/misc/dnd.html">
	* How to Use Drag and Drop and Data Transfer</a>, a section in
	* <em>The Java Tutorial</em>, for more information.
	*
	* @param newHandler the new {@code TransferHandler}
	*
	* @see TransferHandler
	* @see #getTransferHandler
	* @see java.awt.Component#setDropTarget
	* @since 1.6
	*
	* @beaninfo
	*        bound: true
	*       hidden: true
	*  description: Mechanism for transfer of data into the component
	*/
	@:require(java6) @:overload @:public public function setTransferHandler(newHandler : javax.swing.TransferHandler) : Void;
	
	/**
	* Gets the <code>transferHandler</code> property.
	*
	* @return the value of the <code>transferHandler</code> property
	*
	* @see TransferHandler
	* @see #setTransferHandler
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getTransferHandler() : javax.swing.TransferHandler;
	
	/**
	* Just calls <code>paint(g)</code>.  This method was overridden to
	* prevent an unnecessary call to clear the background.
	*
	* @param g the Graphics context in which to paint
	*/
	@:overload @:public override public function update(g : java.awt.Graphics) : Void;
	
	/**
	* Sets the menubar for this frame.
	* @param menubar the menubar being placed in the frame
	*
	* @see #getJMenuBar
	*
	* @beaninfo
	*      hidden: true
	* description: The menubar for accessing pulldown menus from this frame.
	*/
	@:overload @:public public function setJMenuBar(menubar : javax.swing.JMenuBar) : Void;
	
	/**
	* Returns the menubar set on this frame.
	* @return the menubar for this frame
	*
	* @see #setJMenuBar
	*/
	@:overload @:public public function getJMenuBar() : javax.swing.JMenuBar;
	
	/**
	* Returns whether calls to <code>add</code> and
	* <code>setLayout</code> are forwarded to the <code>contentPane</code>.
	*
	* @return true if <code>add</code> and <code>setLayout</code>
	*         are fowarded; false otherwise
	*
	* @see #addImpl
	* @see #setLayout
	* @see #setRootPaneCheckingEnabled
	* @see javax.swing.RootPaneContainer
	*/
	@:overload @:protected private function isRootPaneCheckingEnabled() : Bool;
	
	/**
	* Sets whether calls to <code>add</code> and
	* <code>setLayout</code> are forwarded to the <code>contentPane</code>.
	*
	* @param enabled  true if <code>add</code> and <code>setLayout</code>
	*        are forwarded, false if they should operate directly on the
	*        <code>JFrame</code>.
	*
	* @see #addImpl
	* @see #setLayout
	* @see #isRootPaneCheckingEnabled
	* @see javax.swing.RootPaneContainer
	* @beaninfo
	*      hidden: true
	* description: Whether the add and setLayout methods are forwarded
	*/
	@:overload @:protected private function setRootPaneCheckingEnabled(enabled : Bool) : Void;
	
	/**
	* Adds the specified child <code>Component</code>.
	* This method is overridden to conditionally forward calls to the
	* <code>contentPane</code>.
	* By default, children are added to the <code>contentPane</code> instead
	* of the frame, refer to {@link javax.swing.RootPaneContainer} for
	* details.
	*
	* @param comp the component to be enhanced
	* @param constraints the constraints to be respected
	* @param index the index
	* @exception IllegalArgumentException if <code>index</code> is invalid
	* @exception IllegalArgumentException if adding the container's parent
	*                  to itself
	* @exception IllegalArgumentException if adding a window to a container
	*
	* @see #setRootPaneCheckingEnabled
	* @see javax.swing.RootPaneContainer
	*/
	@:overload @:protected override private function addImpl(comp : java.awt.Component, constraints : Dynamic, index : Int) : Void;
	
	/**
	* Removes the specified component from the container. If
	* <code>comp</code> is not the <code>rootPane</code>, this will forward
	* the call to the <code>contentPane</code>. This will do nothing if
	* <code>comp</code> is not a child of the <code>JFrame</code> or
	* <code>contentPane</code>.
	*
	* @param comp the component to be removed
	* @throws NullPointerException if <code>comp</code> is null
	* @see #add
	* @see javax.swing.RootPaneContainer
	*/
	@:overload @:public override public function remove(comp : java.awt.Component) : Void;
	
	/**
	* Sets the <code>LayoutManager</code>.
	* Overridden to conditionally forward the call to the
	* <code>contentPane</code>.
	* Refer to {@link javax.swing.RootPaneContainer} for
	* more information.
	*
	* @param manager the <code>LayoutManager</code>
	* @see #setRootPaneCheckingEnabled
	* @see javax.swing.RootPaneContainer
	*/
	@:overload @:public override public function setLayout(manager : java.awt.LayoutManager) : Void;
	
	/**
	* Returns the <code>rootPane</code> object for this frame.
	* @return the <code>rootPane</code> property
	*
	* @see #setRootPane
	* @see RootPaneContainer#getRootPane
	*/
	@:overload @:public public function getRootPane() : javax.swing.JRootPane;
	
	/**
	* Sets the <code>rootPane</code> property.
	* This method is called by the constructor.
	* @param root the <code>rootPane</code> object for this frame
	*
	* @see #getRootPane
	*
	* @beaninfo
	*   hidden: true
	* description: the RootPane object for this frame.
	*/
	@:overload @:protected private function setRootPane(root : javax.swing.JRootPane) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function setIconImage(image : java.awt.Image) : Void;
	
	/**
	* Returns the <code>contentPane</code> object for this frame.
	* @return the <code>contentPane</code> property
	*
	* @see #setContentPane
	* @see RootPaneContainer#getContentPane
	*/
	@:overload @:public public function getContentPane() : java.awt.Container;
	
	/**
	* Sets the <code>contentPane</code> property.
	* This method is called by the constructor.
	* <p>
	* Swing's painting architecture requires an opaque <code>JComponent</code>
	* in the containment hiearchy. This is typically provided by the
	* content pane. If you replace the content pane it is recommended you
	* replace it with an opaque <code>JComponent</code>.
	*
	* @param contentPane the <code>contentPane</code> object for this frame
	*
	* @exception java.awt.IllegalComponentStateException (a runtime
	*            exception) if the content pane parameter is <code>null</code>
	* @see #getContentPane
	* @see RootPaneContainer#setContentPane
	* @see JRootPane
	*
	* @beaninfo
	*     hidden: true
	*     description: The client area of the frame where child
	*                  components are normally inserted.
	*/
	@:overload @:public public function setContentPane(contentPane : java.awt.Container) : Void;
	
	/**
	* Returns the <code>layeredPane</code> object for this frame.
	* @return the <code>layeredPane</code> property
	*
	* @see #setLayeredPane
	* @see RootPaneContainer#getLayeredPane
	*/
	@:overload @:public public function getLayeredPane() : javax.swing.JLayeredPane;
	
	/**
	* Sets the <code>layeredPane</code> property.
	* This method is called by the constructor.
	* @param layeredPane the <code>layeredPane</code> object for this frame
	*
	* @exception java.awt.IllegalComponentStateException (a runtime
	*            exception) if the layered pane parameter is <code>null</code>
	* @see #getLayeredPane
	* @see RootPaneContainer#setLayeredPane
	*
	* @beaninfo
	*     hidden: true
	*     description: The pane that holds the various frame layers.
	*/
	@:overload @:public public function setLayeredPane(layeredPane : javax.swing.JLayeredPane) : Void;
	
	/**
	* Returns the <code>glassPane</code> object for this frame.
	* @return the <code>glassPane</code> property
	*
	* @see #setGlassPane
	* @see RootPaneContainer#getGlassPane
	*/
	@:overload @:public public function getGlassPane() : java.awt.Component;
	
	/**
	* Sets the <code>glassPane</code> property.
	* This method is called by the constructor.
	* @param glassPane the <code>glassPane</code> object for this frame
	*
	* @see #getGlassPane
	* @see RootPaneContainer#setGlassPane
	*
	* @beaninfo
	*     hidden: true
	*     description: A transparent pane used for menu rendering.
	*/
	@:overload @:public public function setGlassPane(glassPane : java.awt.Component) : Void;
	
	/**
	* {@inheritDoc}
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getGraphics() : java.awt.Graphics;
	
	/**
	* Repaints the specified rectangle of this component within
	* <code>time</code> milliseconds.  Refer to <code>RepaintManager</code>
	* for details on how the repaint is handled.
	*
	* @param     time   maximum time in milliseconds before update
	* @param     x    the <i>x</i> coordinate
	* @param     y    the <i>y</i> coordinate
	* @param     width    the width
	* @param     height   the height
	* @see       RepaintManager
	* @since     1.6
	*/
	@:require(java6) @:overload @:public override public function repaint(time : haxe.Int64, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Provides a hint as to whether or not newly created <code>JFrame</code>s
	* should have their Window decorations (such as borders, widgets to
	* close the window, title...) provided by the current look
	* and feel. If <code>defaultLookAndFeelDecorated</code> is true,
	* the current <code>LookAndFeel</code> supports providing window
	* decorations, and the current window manager supports undecorated
	* windows, then newly created <code>JFrame</code>s will have their
	* Window decorations provided by the current <code>LookAndFeel</code>.
	* Otherwise, newly created <code>JFrame</code>s will have their
	* Window decorations provided by the current window manager.
	* <p>
	* You can get the same effect on a single JFrame by doing the following:
	* <pre>
	*    JFrame frame = new JFrame();
	*    frame.setUndecorated(true);
	*    frame.getRootPane().setWindowDecorationStyle(JRootPane.FRAME);
	* </pre>
	*
	* @param defaultLookAndFeelDecorated A hint as to whether or not current
	*        look and feel should provide window decorations
	* @see javax.swing.LookAndFeel#getSupportsWindowDecorations
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function setDefaultLookAndFeelDecorated(defaultLookAndFeelDecorated : Bool) : Void;
	
	/**
	* Returns true if newly created <code>JFrame</code>s should have their
	* Window decorations provided by the current look and feel. This is only
	* a hint, as certain look and feels may not support this feature.
	*
	* @return true if look and feel should provide Window decorations.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function isDefaultLookAndFeelDecorated() : Bool;
	
	/**
	* Returns a string representation of this <code>JFrame</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JFrame</code>
	*/
	@:overload @:protected override private function paramString() : String;
	
	/** The accessible context property. */
	@:protected private var accessibleContext : javax.accessibility.AccessibleContext;
	
	/**
	* Gets the AccessibleContext associated with this JFrame.
	* For JFrames, the AccessibleContext takes the form of an
	* AccessibleJFrame.
	* A new AccessibleJFrame instance is created if necessary.
	*
	* @return an AccessibleJFrame that serves as the
	*         AccessibleContext of this JFrame
	*/
	@:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JFrame</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to frame user-interface
* elements.
*/
@:native('javax$swing$JFrame$AccessibleJFrame') extern class JFrame_AccessibleJFrame extends java.awt.Frame.Frame_AccessibleAWTFrame
{
	/**
	* Get the accessible name of this object.
	*
	* @return the localized name of the object -- can be null if this
	* object does not have a name
	*/
	@:overload @:public override public function getAccessibleName() : String;
	
	/**
	* Get the state of this object.
	*
	* @return an instance of AccessibleStateSet containing the current
	* state set of the object
	* @see AccessibleState
	*/
	@:overload @:public override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	
}
