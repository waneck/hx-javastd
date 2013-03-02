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
extern class JInternalFrame extends javax.swing.JComponent implements javax.accessibility.Accessible implements javax.swing.WindowConstants implements javax.swing.RootPaneContainer
{
	/**
	* The <code>JRootPane</code> instance that manages the
	* content pane
	* and optional menu bar for this internal frame, as well as the
	* glass pane.
	*
	* @see JRootPane
	* @see RootPaneContainer
	*/
	private var rootPane : javax.swing.JRootPane;
	
	/**
	* If true then calls to <code>add</code> and <code>setLayout</code>
	* will be forwarded to the <code>contentPane</code>. This is initially
	* false, but is set to true when the <code>JInternalFrame</code> is
	* constructed.
	*
	* @see #isRootPaneCheckingEnabled
	* @see #setRootPaneCheckingEnabled
	* @see javax.swing.RootPaneContainer
	*/
	private var rootPaneCheckingEnabled : Bool;
	
	/** The frame can be closed. */
	private var closable : Bool;
	
	/** The frame can be expanded to the size of the desktop pane. */
	private var maximizable : Bool;
	
	/**
	* The frame can "iconified" (shrunk down and displayed as
	* an icon-image).
	* @see JInternalFrame.JDesktopIcon
	* @see #setIconifiable
	*/
	private var iconable : Bool;
	
	/** The frame's size can be changed. */
	private var resizable : Bool;
	
	/** The icon shown in the top-left corner of this internal frame. */
	private var frameIcon : javax.swing.Icon;
	
	/** The title displayed in this internal frame's title bar. */
	private var title : String;
	
	/**
	* The icon that is displayed when this internal frame is iconified.
	* @see #iconable
	*/
	private var desktopIcon : javax.swing.JInternalFrame.JInternalFrame_JDesktopIcon;
	
	/** Bound property name. */
	public static var CONTENT_PANE_PROPERTY(default, null) : String;
	
	/** Bound property name. */
	public static var MENU_BAR_PROPERTY(default, null) : String;
	
	/** Bound property name. */
	public static var TITLE_PROPERTY(default, null) : String;
	
	/** Bound property name. */
	public static var LAYERED_PANE_PROPERTY(default, null) : String;
	
	/** Bound property name. */
	public static var ROOT_PANE_PROPERTY(default, null) : String;
	
	/** Bound property name. */
	public static var GLASS_PANE_PROPERTY(default, null) : String;
	
	/** Bound property name. */
	public static var FRAME_ICON_PROPERTY(default, null) : String;
	
	/**
	* Constrained property name indicated that this frame has
	* selected status.
	*/
	public static var IS_SELECTED_PROPERTY(default, null) : String;
	
	/** Constrained property name indicating that the internal frame is closed. */
	public static var IS_CLOSED_PROPERTY(default, null) : String;
	
	/** Constrained property name indicating that the internal frame is maximized. */
	public static var IS_MAXIMUM_PROPERTY(default, null) : String;
	
	/** Constrained property name indicating that the internal frame is iconified. */
	public static var IS_ICON_PROPERTY(default, null) : String;
	
	/**
	* Creates a non-resizable, non-closable, non-maximizable,
	* non-iconifiable <code>JInternalFrame</code> with no title.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a non-resizable, non-closable, non-maximizable,
	* non-iconifiable <code>JInternalFrame</code> with the specified title.
	* Note that passing in a <code>null</code> <code>title</code> results in
	* unspecified behavior and possibly an exception.
	*
	* @param title  the non-<code>null</code> <code>String</code>
	*     to display in the title bar
	*/
	@:overload public function new(title : String) : Void;
	
	/**
	* Creates a non-closable, non-maximizable, non-iconifiable
	* <code>JInternalFrame</code> with the specified title
	* and resizability.
	*
	* @param title      the <code>String</code> to display in the title bar
	* @param resizable  if <code>true</code>, the internal frame can be resized
	*/
	@:overload public function new(title : String, resizable : Bool) : Void;
	
	/**
	* Creates a non-maximizable, non-iconifiable <code>JInternalFrame</code>
	* with the specified title, resizability, and
	* closability.
	*
	* @param title      the <code>String</code> to display in the title bar
	* @param resizable  if <code>true</code>, the internal frame can be resized
	* @param closable   if <code>true</code>, the internal frame can be closed
	*/
	@:overload public function new(title : String, resizable : Bool, closable : Bool) : Void;
	
	/**
	* Creates a non-iconifiable <code>JInternalFrame</code>
	* with the specified title,
	* resizability, closability, and maximizability.
	*
	* @param title       the <code>String</code> to display in the title bar
	* @param resizable   if <code>true</code>, the internal frame can be resized
	* @param closable    if <code>true</code>, the internal frame can be closed
	* @param maximizable if <code>true</code>, the internal frame can be maximized
	*/
	@:overload public function new(title : String, resizable : Bool, closable : Bool, maximizable : Bool) : Void;
	
	/**
	* Creates a <code>JInternalFrame</code> with the specified title,
	* resizability, closability, maximizability, and iconifiability.
	* All <code>JInternalFrame</code> constructors use this one.
	*
	* @param title       the <code>String</code> to display in the title bar
	* @param resizable   if <code>true</code>, the internal frame can be resized
	* @param closable    if <code>true</code>, the internal frame can be closed
	* @param maximizable if <code>true</code>, the internal frame can be maximized
	* @param iconifiable if <code>true</code>, the internal frame can be iconified
	*/
	@:overload public function new(title : String, resizable : Bool, closable : Bool, maximizable : Bool, iconifiable : Bool) : Void;
	
	/**
	* Called by the constructor to set up the <code>JRootPane</code>.
	* @return  a new <code>JRootPane</code>
	* @see JRootPane
	*/
	@:overload private function createRootPane() : javax.swing.JRootPane;
	
	/**
	* Returns the look-and-feel object that renders this component.
	*
	* @return the <code>InternalFrameUI</code> object that renders
	*          this component
	*/
	@:overload public function getUI() : javax.swing.plaf.InternalFrameUI;
	
	/**
	* Sets the UI delegate for this <code>JInternalFrame</code>.
	* @param ui  the UI delegate
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.InternalFrameUI) : Void;
	
	/**
	* Notification from the <code>UIManager</code> that the look and feel
	* has changed.
	* Replaces the current UI object with the latest version from the
	* <code>UIManager</code>.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the name of the look-and-feel
	* class that renders this component.
	*
	* @return the string "InternalFrameUI"
	*
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*
	* @beaninfo
	*     description: UIClassID
	*/
	@:overload override public function getUIClassID() : String;
	
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
	@:overload private function isRootPaneCheckingEnabled() : Bool;
	
	/**
	* Sets whether calls to <code>add</code> and
	* <code>setLayout</code> are forwarded to the <code>contentPane</code>.
	*
	* @param enabled  true if <code>add</code> and <code>setLayout</code>
	*        are forwarded, false if they should operate directly on the
	*        <code>JInternalFrame</code>.
	*
	* @see #addImpl
	* @see #setLayout
	* @see #isRootPaneCheckingEnabled
	* @see javax.swing.RootPaneContainer
	* @beaninfo
	*      hidden: true
	* description: Whether the add and setLayout methods are forwarded
	*/
	@:overload private function setRootPaneCheckingEnabled(enabled : Bool) : Void;
	
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
	@:overload override private function addImpl(comp : java.awt.Component, constraints : Dynamic, index : Int) : Void;
	
	/**
	* Removes the specified component from the container. If
	* <code>comp</code> is not a child of the <code>JInternalFrame</code>
	* this will forward the call to the <code>contentPane</code>.
	*
	* @param comp the component to be removed
	* @throws NullPointerException if <code>comp</code> is null
	* @see #add
	* @see javax.swing.RootPaneContainer
	*/
	@:overload override public function remove(comp : java.awt.Component) : Void;
	
	/**
	* Ensures that, by default, the layout of this component cannot be set.
	* Overridden to conditionally forward the call to the
	* <code>contentPane</code>.
	* Refer to {@link javax.swing.RootPaneContainer} for
	* more information.
	*
	* @param manager the <code>LayoutManager</code>
	* @see #setRootPaneCheckingEnabled
	*/
	@:overload override public function setLayout(manager : java.awt.LayoutManager) : Void;
	
	/**
	* Returns the current <code>JMenuBar</code> for this
	* <code>JInternalFrame</code>, or <code>null</code>
	* if no menu bar has been set.
	* @return the current menu bar, or <code>null</code> if none has been set
	*
	* @deprecated As of Swing version 1.0.3,
	* replaced by <code>getJMenuBar()</code>.
	*/
	@:overload public function getMenuBar() : javax.swing.JMenuBar;
	
	/**
	* Returns the current <code>JMenuBar</code> for this
	* <code>JInternalFrame</code>, or <code>null</code>
	* if no menu bar has been set.
	*
	* @return  the <code>JMenuBar</code> used by this internal frame
	* @see #setJMenuBar
	*/
	@:overload public function getJMenuBar() : javax.swing.JMenuBar;
	
	/**
	* Sets the <code>menuBar</code> property for this <code>JInternalFrame</code>.
	*
	* @param m  the <code>JMenuBar</code> to use in this internal frame
	* @see #getJMenuBar
	* @deprecated As of Swing version 1.0.3
	*  replaced by <code>setJMenuBar(JMenuBar m)</code>.
	*/
	@:overload public function setMenuBar(m : javax.swing.JMenuBar) : Void;
	
	/**
	* Sets the <code>menuBar</code> property for this <code>JInternalFrame</code>.
	*
	* @param m  the <code>JMenuBar</code> to use in this internal frame
	* @see #getJMenuBar
	* @beaninfo
	*     bound: true
	*     preferred: true
	*     description: The menu bar for accessing pulldown menus
	*                  from this internal frame.
	*/
	@:overload public function setJMenuBar(m : javax.swing.JMenuBar) : Void;
	
	/**
	* Returns the content pane for this internal frame.
	* @return the content pane
	*/
	@:overload public function getContentPane() : java.awt.Container;
	
	/**
	* Sets this <code>JInternalFrame</code>'s <code>contentPane</code>
	* property.
	*
	* @param c  the content pane for this internal frame
	*
	* @exception java.awt.IllegalComponentStateException (a runtime
	*           exception) if the content pane parameter is <code>null</code>
	* @see RootPaneContainer#getContentPane
	* @beaninfo
	*     bound: true
	*     hidden: true
	*     description: The client area of the internal frame where child
	*                  components are normally inserted.
	*/
	@:overload public function setContentPane(c : java.awt.Container) : Void;
	
	/**
	* Returns the layered pane for this internal frame.
	*
	* @return a <code>JLayeredPane</code> object
	* @see RootPaneContainer#setLayeredPane
	* @see RootPaneContainer#getLayeredPane
	*/
	@:overload public function getLayeredPane() : javax.swing.JLayeredPane;
	
	/**
	* Sets this <code>JInternalFrame</code>'s
	* <code>layeredPane</code> property.
	*
	* @param layered the <code>JLayeredPane</code> for this internal frame
	*
	* @exception java.awt.IllegalComponentStateException (a runtime
	*           exception) if the layered pane parameter is <code>null</code>
	* @see RootPaneContainer#setLayeredPane
	* @beaninfo
	*     hidden: true
	*     bound: true
	*     description: The pane which holds the various desktop layers.
	*/
	@:overload public function setLayeredPane(layered : javax.swing.JLayeredPane) : Void;
	
	/**
	* Returns the glass pane for this internal frame.
	*
	* @return the glass pane
	* @see RootPaneContainer#setGlassPane
	*/
	@:overload public function getGlassPane() : java.awt.Component;
	
	/**
	* Sets this <code>JInternalFrame</code>'s
	* <code>glassPane</code> property.
	*
	* @param glass the glass pane for this internal frame
	* @see RootPaneContainer#getGlassPane
	* @beaninfo
	*     bound: true
	*     hidden: true
	*     description: A transparent pane used for menu rendering.
	*/
	@:overload public function setGlassPane(glass : java.awt.Component) : Void;
	
	/**
	* Returns the <code>rootPane</code> object for this internal frame.
	*
	* @return the <code>rootPane</code> property
	* @see RootPaneContainer#getRootPane
	*/
	@:overload override public function getRootPane() : javax.swing.JRootPane;
	
	/**
	* Sets the <code>rootPane</code> property
	* for this <code>JInternalFrame</code>.
	* This method is called by the constructor.
	*
	* @param root  the new <code>JRootPane</code> object
	* @beaninfo
	*     bound: true
	*     hidden: true
	*     description: The root pane used by this internal frame.
	*/
	@:overload private function setRootPane(root : javax.swing.JRootPane) : Void;
	
	/**
	* Sets whether this <code>JInternalFrame</code> can be closed by
	* some user action.
	* @param b a boolean value, where <code>true</code> means this internal frame can be closed
	* @beaninfo
	*     preferred: true
	*           bound: true
	*     description: Indicates whether this internal frame can be closed.
	*/
	@:overload public function setClosable(b : Bool) : Void;
	
	/**
	* Returns whether this <code>JInternalFrame</code> can be closed by
	* some user action.
	* @return <code>true</code> if this internal frame can be closed
	*/
	@:overload public function isClosable() : Bool;
	
	/**
	* Returns whether this <code>JInternalFrame</code> is currently closed.
	* @return <code>true</code> if this internal frame is closed, <code>false</code> otherwise
	*/
	@:overload public function isClosed() : Bool;
	
	/**
	* Closes this internal frame if the argument is <code>true</code>.
	* Do not invoke this method with a <code>false</code> argument;
	* the result of invoking <code>setClosed(false)</code>
	* is unspecified.
	*
	* <p>
	*
	* If the internal frame is already closed,
	* this method does nothing and returns immediately.
	* Otherwise,
	* this method begins by firing
	* an <code>INTERNAL_FRAME_CLOSING</code> event.
	* Then this method sets the <code>closed</code> property to <code>true</code>
	* unless a listener vetoes the property change.
	* This method finishes by making the internal frame
	* invisible and unselected,
	* and then firing an <code>INTERNAL_FRAME_CLOSED</code> event.
	*
	* <p>
	*
	* <b>Note:</b>
	* To reuse an internal frame that has been closed,
	* you must add it to a container
	* (even if you never removed it from its previous container).
	* Typically, this container will be the <code>JDesktopPane</code>
	* that previously contained the internal frame.
	*
	* @param b must be <code>true</code>
	*
	* @exception PropertyVetoException when the attempt to set the
	*            property is vetoed by the <code>JInternalFrame</code>
	*
	* @see #isClosed()
	* @see #setDefaultCloseOperation
	* @see #dispose
	* @see javax.swing.event.InternalFrameEvent#INTERNAL_FRAME_CLOSING
	*
	* @beaninfo
	*           bound: true
	*     constrained: true
	*     description: Indicates whether this internal frame has been closed.
	*/
	@:overload public function setClosed(b : Bool) : Void;
	
	/**
	* Sets whether the <code>JInternalFrame</code> can be resized by some
	* user action.
	*
	* @param b  a boolean, where <code>true</code> means this internal frame can be resized
	* @beaninfo
	*     preferred: true
	*           bound: true
	*     description: Determines whether this internal frame can be resized
	*                  by the user.
	*/
	@:overload public function setResizable(b : Bool) : Void;
	
	/**
	* Returns whether the <code>JInternalFrame</code> can be resized
	* by some user action.
	*
	* @return <code>true</code> if this internal frame can be resized, <code>false</code> otherwise
	*/
	@:overload public function isResizable() : Bool;
	
	/**
	* Sets the <code>iconable</code> property,
	* which must be <code>true</code>
	* for the user to be able to
	* make the <code>JInternalFrame</code> an icon.
	* Some look and feels might not implement iconification;
	* they will ignore this property.
	*
	* @param b  a boolean, where <code>true</code> means this internal frame can be iconified
	* @beaninfo
	*     preferred: true
	bound: true
	*     description: Determines whether this internal frame can be iconified.
	*/
	@:overload public function setIconifiable(b : Bool) : Void;
	
	/**
	* Gets the <code>iconable</code> property,
	* which by default is <code>false</code>.
	*
	* @return the value of the <code>iconable</code> property.
	*
	* @see #setIconifiable
	*/
	@:overload public function isIconifiable() : Bool;
	
	/**
	* Returns whether the <code>JInternalFrame</code> is currently iconified.
	*
	* @return <code>true</code> if this internal frame is iconified
	*/
	@:overload public function isIcon() : Bool;
	
	/**
	* Iconifies or de-iconifies this internal frame,
	* if the look and feel supports iconification.
	* If the internal frame's state changes to iconified,
	* this method fires an <code>INTERNAL_FRAME_ICONIFIED</code> event.
	* If the state changes to de-iconified,
	* an <code>INTERNAL_FRAME_DEICONIFIED</code> event is fired.
	*
	* @param b a boolean, where <code>true</code> means to iconify this internal frame and
	*          <code>false</code> means to de-iconify it
	* @exception PropertyVetoException when the attempt to set the
	*            property is vetoed by the <code>JInternalFrame</code>
	*
	* @see InternalFrameEvent#INTERNAL_FRAME_ICONIFIED
	* @see InternalFrameEvent#INTERNAL_FRAME_DEICONIFIED
	*
	* @beaninfo
	*           bound: true
	*     constrained: true
	*     description: The image displayed when this internal frame is minimized.
	*/
	@:overload public function setIcon(b : Bool) : Void;
	
	/**
	* Sets the <code>maximizable</code> property,
	* which determines whether the <code>JInternalFrame</code>
	* can be maximized by
	* some user action.
	* Some look and feels might not support maximizing internal frames;
	* they will ignore this property.
	*
	* @param b <code>true</code> to specify that this internal frame should be maximizable; <code>false</code> to specify that it should not be
	* @beaninfo
	*         bound: true
	*     preferred: true
	*     description: Determines whether this internal frame can be maximized.
	*/
	@:overload public function setMaximizable(b : Bool) : Void;
	
	/**
	* Gets the value of the <code>maximizable</code> property.
	*
	* @return the value of the <code>maximizable</code> property
	* @see #setMaximizable
	*/
	@:overload public function isMaximizable() : Bool;
	
	/**
	* Returns whether the <code>JInternalFrame</code> is currently maximized.
	*
	* @return <code>true</code> if this internal frame is maximized, <code>false</code> otherwise
	*/
	@:overload public function isMaximum() : Bool;
	
	/**
	* Maximizes and restores this internal frame.  A maximized frame is resized to
	* fully fit the <code>JDesktopPane</code> area associated with the
	* <code>JInternalFrame</code>.
	* A restored frame's size is set to the <code>JInternalFrame</code>'s
	* actual size.
	*
	* @param b  a boolean, where <code>true</code> maximizes this internal frame and <code>false</code>
	*           restores it
	* @exception PropertyVetoException when the attempt to set the
	*            property is vetoed by the <code>JInternalFrame</code>
	* @beaninfo
	*     bound: true
	*     constrained: true
	*     description: Indicates whether this internal frame is maximized.
	*/
	@:overload public function setMaximum(b : Bool) : Void;
	
	/**
	* Returns the title of the <code>JInternalFrame</code>.
	*
	* @return a <code>String</code> containing this internal frame's title
	* @see #setTitle
	*/
	@:overload public function getTitle() : String;
	
	/**
	* Sets the <code>JInternalFrame</code> title. <code>title</code>
	* may have a <code>null</code> value.
	* @see #getTitle
	*
	* @param title  the <code>String</code> to display in the title bar
	* @beaninfo
	*     preferred: true
	*     bound: true
	*     description: The text displayed in the title bar.
	*/
	@:overload public function setTitle(title : String) : Void;
	
	/**
	* Selects or deselects the internal frame
	* if it's showing.
	* A <code>JInternalFrame</code> normally draws its title bar
	* differently if it is
	* the selected frame, which indicates to the user that this
	* internal frame has the focus.
	* When this method changes the state of the internal frame
	* from deselected to selected, it fires an
	* <code>InternalFrameEvent.INTERNAL_FRAME_ACTIVATED</code> event.
	* If the change is from selected to deselected,
	* an <code>InternalFrameEvent.INTERNAL_FRAME_DEACTIVATED</code> event
	* is fired.
	*
	* @param selected  a boolean, where <code>true</code> means this internal frame
	*                  should become selected (currently active)
	*                  and <code>false</code> means it should become deselected
	* @exception PropertyVetoException when the attempt to set the
	*            property is vetoed by the <code>JInternalFrame</code>
	*
	* @see #isShowing
	* @see InternalFrameEvent#INTERNAL_FRAME_ACTIVATED
	* @see InternalFrameEvent#INTERNAL_FRAME_DEACTIVATED
	*
	* @beaninfo
	*     constrained: true
	*           bound: true
	*     description: Indicates whether this internal frame is currently
	*                  the active frame.
	*/
	@:overload public function setSelected(selected : Bool) : Void;
	
	/**
	* Returns whether the <code>JInternalFrame</code> is the
	* currently "selected" or active frame.
	*
	* @return <code>true</code> if this internal frame is currently selected (active)
	* @see #setSelected
	*/
	@:overload public function isSelected() : Bool;
	
	/**
	* Sets an image to be displayed in the titlebar of this internal frame (usually
	* in the top-left corner).
	* This image is not the <code>desktopIcon</code> object, which
	* is the image displayed in the <code>JDesktop</code> when
	* this internal frame is iconified.
	*
	* Passing <code>null</code> to this function is valid,
	* but the look and feel
	* can choose the
	* appropriate behavior for that situation, such as displaying no icon
	* or a default icon for the look and feel.
	*
	* @param icon the <code>Icon</code> to display in the title bar
	* @see #getFrameIcon
	* @beaninfo
	*           bound: true
	*     description: The icon shown in the top-left corner of this internal frame.
	*/
	@:overload public function setFrameIcon(icon : javax.swing.Icon) : Void;
	
	/**
	* Returns the image displayed in the title bar of this internal frame (usually
	* in the top-left corner).
	*
	* @return the <code>Icon</code> displayed in the title bar
	* @see #setFrameIcon
	*/
	@:overload public function getFrameIcon() : javax.swing.Icon;
	
	/**
	* Convenience method that moves this component to position 0 if its
	* parent is a <code>JLayeredPane</code>.
	*/
	@:overload public function moveToFront() : Void;
	
	/**
	* Convenience method that moves this component to position -1 if its
	* parent is a <code>JLayeredPane</code>.
	*/
	@:overload public function moveToBack() : Void;
	
	/**
	* Returns the last <code>Cursor</code> that was set by the
	* <code>setCursor</code> method that is not a resizable
	* <code>Cursor</code>.
	*
	* @return the last non-resizable <code>Cursor</code>
	* @since 1.6
	*/
	@:require(java6) @:overload public function getLastCursor() : java.awt.Cursor;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setCursor(cursor : java.awt.Cursor) : Void;
	
	/**
	* Convenience method for setting the layer attribute of this component.
	*
	* @param layer  an <code>Integer</code> object specifying this
	*          frame's desktop layer
	* @see JLayeredPane
	* @beaninfo
	*     expert: true
	*     description: Specifies what desktop layer is used.
	*/
	@:overload public function setLayer(layer : Null<Int>) : Void;
	
	/**
	* Convenience method for setting the layer attribute of this component.
	* The method <code>setLayer(Integer)</code> should be used for
	* layer values predefined in <code>JLayeredPane</code>.
	* When using <code>setLayer(int)</code>, care must be taken not to
	* accidentally clash with those values.
	*
	* @param layer  an integer specifying this internal frame's desktop layer
	*
	* @since 1.3
	*
	* @see #setLayer(Integer)
	* @see JLayeredPane
	* @beaninfo
	*     expert: true
	*     description: Specifies what desktop layer is used.
	*/
	@:require(java3) @:overload public function setLayer(layer : Int) : Void;
	
	/**
	* Convenience method for getting the layer attribute of this component.
	*
	* @return  an <code>Integer</code> object specifying this
	*          frame's desktop layer
	* @see JLayeredPane
	*/
	@:overload public function getLayer() : Int;
	
	/**
	* Convenience method that searches the ancestor hierarchy for a
	* <code>JDesktop</code> instance. If <code>JInternalFrame</code>
	* finds none, the <code>desktopIcon</code> tree is searched.
	*
	* @return the <code>JDesktopPane</code> this internal frame belongs to,
	*         or <code>null</code> if none is found
	*/
	@:overload public function getDesktopPane() : javax.swing.JDesktopPane;
	
	/**
	* Sets the <code>JDesktopIcon</code> associated with this
	* <code>JInternalFrame</code>.
	*
	* @param d the <code>JDesktopIcon</code> to display on the desktop
	* @see #getDesktopIcon
	* @beaninfo
	*           bound: true
	*     description: The icon shown when this internal frame is minimized.
	*/
	@:overload public function setDesktopIcon(d : javax.swing.JInternalFrame.JInternalFrame_JDesktopIcon) : Void;
	
	/**
	* Returns the <code>JDesktopIcon</code> used when this
	* <code>JInternalFrame</code> is iconified.
	*
	* @return the <code>JDesktopIcon</code> displayed on the desktop
	* @see #setDesktopIcon
	*/
	@:overload public function getDesktopIcon() : javax.swing.JInternalFrame.JInternalFrame_JDesktopIcon;
	
	/**
	* If the <code>JInternalFrame</code> is not in maximized state, returns
	* <code>getBounds()</code>; otherwise, returns the bounds that the
	* <code>JInternalFrame</code> would be restored to.
	*
	* @return a <code>Rectangle</code> containing the bounds of this
	*          frame when in the normal state
	* @since 1.3
	*/
	@:require(java3) @:overload public function getNormalBounds() : java.awt.Rectangle;
	
	/**
	* Sets the normal bounds for this internal frame, the bounds that
	* this internal frame would be restored to from its maximized state.
	* This method is intended for use only by desktop managers.
	*
	* @param r the bounds that this internal frame should be restored to
	* @since 1.3
	*/
	@:require(java3) @:overload public function setNormalBounds(r : java.awt.Rectangle) : Void;
	
	/**
	* If this <code>JInternalFrame</code> is active,
	* returns the child that has focus.
	* Otherwise, returns <code>null</code>.
	*
	* @return the component with focus, or <code>null</code> if no children have focus
	* @since 1.3
	*/
	@:require(java3) @:overload public function getFocusOwner() : java.awt.Component;
	
	/**
	* Returns the child component of this <code>JInternalFrame</code>
	* that will receive the
	* focus when this <code>JInternalFrame</code> is selected.
	* If this <code>JInternalFrame</code> is
	* currently selected, this method returns the same component as
	* the <code>getFocusOwner</code> method.
	* If this <code>JInternalFrame</code> is not selected,
	* then the child component that most recently requested focus will be
	* returned. If no child component has ever requested focus, then this
	* <code>JInternalFrame</code>'s initial focusable component is returned.
	* If no such
	* child exists, then this <code>JInternalFrame</code>'s default component
	* to focus is returned.
	*
	* @return the child component that will receive focus when this
	*         <code>JInternalFrame</code> is selected
	* @see #getFocusOwner
	* @see #isSelected
	* @since 1.4
	*/
	@:require(java4) @:overload public function getMostRecentFocusOwner() : java.awt.Component;
	
	/**
	* Requests the internal frame to restore focus to the
	* last subcomponent that had focus. This is used by the UI when
	* the user selected this internal frame --
	* for example, by clicking on the title bar.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function restoreSubcomponentFocus() : Void;
	
	/**
	* Moves and resizes this component.  Unlike other components,
	* this implementation also forces re-layout, so that frame
	* decorations such as the title bar are always redisplayed.
	*
	* @param x  an integer giving the component's new horizontal position
	*           measured in pixels from the left of its container
	* @param y  an integer giving the component's new vertical position,
	*           measured in pixels from the bottom of its container
	* @param width  an integer giving the component's new width in pixels
	* @param height an integer giving the component's new height in pixels
	*/
	@:overload override public function reshape(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Adds the specified listener to receive internal
	* frame events from this internal frame.
	*
	* @param l the internal frame listener
	*/
	@:overload public function addInternalFrameListener(l : javax.swing.event.InternalFrameListener) : Void;
	
	/**
	* Removes the specified internal frame listener so that it no longer
	* receives internal frame events from this internal frame.
	*
	* @param l the internal frame listener
	*/
	@:overload public function removeInternalFrameListener(l : javax.swing.event.InternalFrameListener) : Void;
	
	/**
	* Returns an array of all the <code>InternalFrameListener</code>s added
	* to this <code>JInternalFrame</code> with
	* <code>addInternalFrameListener</code>.
	*
	* @return all of the <code>InternalFrameListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*
	* @see #addInternalFrameListener
	*/
	@:require(java4) @:overload public function getInternalFrameListeners() : java.NativeArray<javax.swing.event.InternalFrameListener>;
	
	/**
	* Fires an internal frame event.
	*
	* @param id  the type of the event being fired; one of the following:
	* <ul>
	* <li><code>InternalFrameEvent.INTERNAL_FRAME_OPENED</code>
	* <li><code>InternalFrameEvent.INTERNAL_FRAME_CLOSING</code>
	* <li><code>InternalFrameEvent.INTERNAL_FRAME_CLOSED</code>
	* <li><code>InternalFrameEvent.INTERNAL_FRAME_ICONIFIED</code>
	* <li><code>InternalFrameEvent.INTERNAL_FRAME_DEICONIFIED</code>
	* <li><code>InternalFrameEvent.INTERNAL_FRAME_ACTIVATED</code>
	* <li><code>InternalFrameEvent.INTERNAL_FRAME_DEACTIVATED</code>
	* </ul>
	* If the event type is not one of the above, nothing happens.
	*/
	@:overload private function fireInternalFrameEvent(id : Int) : Void;
	
	/**
	* Fires an
	* <code>INTERNAL_FRAME_CLOSING</code> event
	* and then performs the action specified by
	* the internal frame's default close operation.
	* This method is typically invoked by the
	* look-and-feel-implemented action handler
	* for the internal frame's close button.
	*
	* @since 1.3
	* @see #setDefaultCloseOperation
	* @see javax.swing.event.InternalFrameEvent#INTERNAL_FRAME_CLOSING
	*/
	@:require(java3) @:overload public function doDefaultCloseAction() : Void;
	
	/**
	* Sets the operation that will happen by default when
	* the user initiates a "close" on this internal frame.
	* The possible choices are:
	* <p>
	* <dl>
	* <dt><code>DO_NOTHING_ON_CLOSE</code>
	* <dd> Do nothing.
	*      This requires the program to handle the operation
	*      in the <code>windowClosing</code> method
	*      of a registered <code>InternalFrameListener</code> object.
	* <dt><code>HIDE_ON_CLOSE</code>
	* <dd> Automatically make the internal frame invisible.
	* <dt><code>DISPOSE_ON_CLOSE</code>
	* <dd> Automatically dispose of the internal frame.
	* </dl>
	* <p>
	* The default value is <code>DISPOSE_ON_CLOSE</code>.
	* Before performing the specified close operation,
	* the internal frame fires
	* an <code>INTERNAL_FRAME_CLOSING</code> event.
	*
	* @param operation one of the following constants defined in
	*                  <code>javax.swing.WindowConstants</code>
	*                  (an interface implemented by
	*                  <code>JInternalFrame</code>):
	*                  <code>DO_NOTHING_ON_CLOSE</code>,
	*                  <code>HIDE_ON_CLOSE</code>, or
	*                  <code>DISPOSE_ON_CLOSE</code>
	*
	* @see #addInternalFrameListener
	* @see #getDefaultCloseOperation
	* @see #setVisible
	* @see #dispose
	* @see InternalFrameEvent#INTERNAL_FRAME_CLOSING
	*/
	@:overload public function setDefaultCloseOperation(operation : Int) : Void;
	
	/**
	* Returns the default operation that occurs when the user
	* initiates a "close" on this internal frame.
	* @return the operation that will occur when the user closes the internal
	*         frame
	* @see #setDefaultCloseOperation
	*/
	@:overload public function getDefaultCloseOperation() : Int;
	
	/**
	* Causes subcomponents of this <code>JInternalFrame</code>
	* to be laid out at their preferred size.  Internal frames that are
	* iconized or maximized are first restored and then packed.  If the
	* internal frame is unable to be restored its state is not changed
	* and will not be packed.
	*
	* @see       java.awt.Window#pack
	*/
	@:overload public function pack() : Void;
	
	/**
	* If the internal frame is not visible,
	* brings the internal frame to the front,
	* makes it visible,
	* and attempts to select it.
	* The first time the internal frame is made visible,
	* this method also fires an <code>INTERNAL_FRAME_OPENED</code> event.
	* This method does nothing if the internal frame is already visible.
	* Invoking this method
	* has the same result as invoking
	* <code>setVisible(true)</code>.
	*
	* @see #moveToFront
	* @see #setSelected
	* @see InternalFrameEvent#INTERNAL_FRAME_OPENED
	* @see #setVisible
	*/
	@:overload override public function show() : Void;
	
	@:overload override public function hide() : Void;
	
	/**
	* Makes this internal frame
	* invisible, unselected, and closed.
	* If the frame is not already closed,
	* this method fires an
	* <code>INTERNAL_FRAME_CLOSED</code> event.
	* The results of invoking this method are similar to
	* <code>setClosed(true)</code>,
	* but <code>dispose</code> always succeeds in closing
	* the internal frame and does not fire
	* an <code>INTERNAL_FRAME_CLOSING</code> event.
	*
	* @see javax.swing.event.InternalFrameEvent#INTERNAL_FRAME_CLOSED
	* @see #setVisible
	* @see #setSelected
	* @see #setClosed
	*/
	@:overload public function dispose() : Void;
	
	/**
	* Brings this internal frame to the front.
	* Places this internal frame  at the top of the stacking order
	* and makes the corresponding adjustment to other visible internal
	* frames.
	*
	* @see       java.awt.Window#toFront
	* @see       #moveToFront
	*/
	@:overload public function toFront() : Void;
	
	/**
	* Sends this internal frame to the back.
	* Places this internal frame at the bottom of the stacking order
	* and makes the corresponding adjustment to other visible
	* internal frames.
	*
	* @see       java.awt.Window#toBack
	* @see       #moveToBack
	*/
	@:overload public function toBack() : Void;
	
	/**
	* Does nothing because <code>JInternalFrame</code>s must always be roots of a focus
	* traversal cycle.
	*
	* @param focusCycleRoot this value is ignored
	* @see #isFocusCycleRoot
	* @see java.awt.Container#setFocusTraversalPolicy
	* @see java.awt.Container#getFocusTraversalPolicy
	* @since 1.4
	*/
	@:require(java4) @:overload @:final override public function setFocusCycleRoot(focusCycleRoot : Bool) : Void;
	
	/**
	* Always returns <code>true</code> because all <code>JInternalFrame</code>s must be
	* roots of a focus traversal cycle.
	*
	* @return <code>true</code>
	* @see #setFocusCycleRoot
	* @see java.awt.Container#setFocusTraversalPolicy
	* @see java.awt.Container#getFocusTraversalPolicy
	* @since 1.4
	*/
	@:require(java4) @:overload @:final override public function isFocusCycleRoot() : Bool;
	
	/**
	* Always returns <code>null</code> because <code>JInternalFrame</code>s
	* must always be roots of a focus
	* traversal cycle.
	*
	* @return <code>null</code>
	* @see java.awt.Container#isFocusCycleRoot()
	* @since 1.4
	*/
	@:require(java4) @:overload @:final override public function getFocusCycleRootAncestor() : java.awt.Container;
	
	/**
	* Gets the warning string that is displayed with this internal frame.
	* Since an internal frame is always secure (since it's fully
	* contained within a window that might need a warning string)
	* this method always returns <code>null</code>.
	* @return    <code>null</code>
	* @see       java.awt.Window#getWarningString
	*/
	@:overload @:final public function getWarningString() : String;
	
	/**
	* Returns a string representation of this <code>JInternalFrame</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JInternalFrame</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Overridden to allow optimized painting when the
	* internal frame is being dragged.
	*/
	@:overload override private function paintComponent(g : java.awt.Graphics) : Void;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with this
	* <code>JInternalFrame</code>.
	* For internal frames, the <code>AccessibleContext</code>
	* takes the form of an
	* <code>AccessibleJInternalFrame</code> object.
	* A new <code>AccessibleJInternalFrame</code> instance is created if necessary.
	*
	* @return an <code>AccessibleJInternalFrame</code> that serves as the
	*         <code>AccessibleContext</code> of this
	*         <code>JInternalFrame</code>
	* @see AccessibleJInternalFrame
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
@:native('javax$swing$JInternalFrame$FocusPropertyChangeListener') @:internal extern class JInternalFrame_FocusPropertyChangeListener implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JInternalFrame</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to internal frame user-interface
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
@:native('javax$swing$JInternalFrame$AccessibleJInternalFrame') extern class JInternalFrame_AccessibleJInternalFrame extends javax.swing.JComponent.JComponent_AccessibleJComponent implements javax.accessibility.AccessibleValue
{
	/**
	* Get the accessible name of this object.
	*
	* @return the localized name of the object -- can be <code>null</code> if this
	* object does not have a name
	* @see #setAccessibleName
	*/
	@:overload override public function getAccessibleName() : String;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the AccessibleValue associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* returns this object, which is responsible for implementing the
	* <code>AccessibleValue</code> interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Get the value of this object as a Number.
	*
	* @return value of the object -- can be <code>null</code> if this object does not
	* have a value
	*/
	@:overload public function getCurrentAccessibleValue() : java.lang.Number;
	
	/**
	* Set the value of this object as a Number.
	*
	* @return <code>true</code> if the value was set
	*/
	@:overload public function setCurrentAccessibleValue(n : java.lang.Number) : Bool;
	
	/**
	* Get the minimum value of this object as a Number.
	*
	* @return Minimum value of the object; <code>null</code> if this object does not
	* have a minimum value
	*/
	@:overload public function getMinimumAccessibleValue() : java.lang.Number;
	
	/**
	* Get the maximum value of this object as a Number.
	*
	* @return Maximum value of the object; <code>null</code> if this object does not
	* have a maximum value
	*/
	@:overload public function getMaximumAccessibleValue() : java.lang.Number;
	
	
}
/**
* This component represents an iconified version of a
* <code>JInternalFrame</code>.
* This API should NOT BE USED by Swing applications, as it will go
* away in future versions of Swing as its functionality is moved into
* <code>JInternalFrame</code>.  This class is public only so that
* UI objects can display a desktop icon.  If an application
* wants to display a desktop icon, it should create a
* <code>JInternalFrame</code> instance and iconify it.
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
* @author David Kloba
*/
@:native('javax$swing$JInternalFrame$JDesktopIcon') extern class JInternalFrame_JDesktopIcon extends javax.swing.JComponent implements javax.accessibility.Accessible
{
	/**
	* Creates an icon for an internal frame.
	*
	* @param f  the <code>JInternalFrame</code>
	*              for which the icon is created
	*/
	@:overload public function new(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* Returns the look-and-feel object that renders this component.
	*
	* @return the <code>DesktopIconUI</code> object that renders
	*              this component
	*/
	@:overload public function getUI() : javax.swing.plaf.DesktopIconUI;
	
	/**
	* Sets the look-and-feel object that renders this component.
	*
	* @param ui  the <code>DesktopIconUI</code> look-and-feel object
	* @see UIDefaults#getUI
	*/
	@:overload public function setUI(ui : javax.swing.plaf.DesktopIconUI) : Void;
	
	/**
	* Returns the <code>JInternalFrame</code> that this
	* <code>DesktopIcon</code> is associated with.
	*
	* @return the <code>JInternalFrame</code> with which this icon
	*              is associated
	*/
	@:overload public function getInternalFrame() : javax.swing.JInternalFrame;
	
	/**
	* Sets the <code>JInternalFrame</code> with which this
	* <code>DesktopIcon</code> is associated.
	*
	* @param f  the <code>JInternalFrame</code> with which this icon
	*              is associated
	*/
	@:overload public function setInternalFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* Convenience method to ask the icon for the <code>Desktop</code>
	* object it belongs to.
	*
	* @return the <code>JDesktopPane</code> that contains this
	*           icon's internal frame, or <code>null</code> if none found
	*/
	@:overload public function getDesktopPane() : javax.swing.JDesktopPane;
	
	/**
	* Notification from the <code>UIManager</code> that the look and feel
	* has changed.
	* Replaces the current UI object with the latest version from the
	* <code>UIManager</code>.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the name of the look-and-feel
	* class that renders this component.
	*
	* @return the string "DesktopIconUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Gets the AccessibleContext associated with this JDesktopIcon.
	* For desktop icons, the AccessibleContext takes the form of an
	* AccessibleJDesktopIcon.
	* A new AccessibleJDesktopIcon instance is created if necessary.
	*
	* @return an AccessibleJDesktopIcon that serves as the
	*         AccessibleContext of this JDesktopIcon
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JInternalFrame.JDesktopIcon</code> class.  It provides an
* implementation of the Java Accessibility API appropriate to
* desktop icon user-interface elements.
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
@:native('javax$swing$JInternalFrame$JDesktopIcon$AccessibleJDesktopIcon') extern class JInternalFrame_JDesktopIcon_AccessibleJDesktopIcon extends javax.swing.JComponent.JComponent_AccessibleJComponent implements javax.accessibility.AccessibleValue
{
	/**
	* Gets the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the AccessibleValue associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* returns this object, which is responsible for implementing the
	* <code>AccessibleValue</code> interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Gets the value of this object as a <code>Number</code>.
	*
	* @return value of the object -- can be <code>null</code> if this object does not
	* have a value
	*/
	@:overload public function getCurrentAccessibleValue() : java.lang.Number;
	
	/**
	* Sets the value of this object as a <code>Number</code>.
	*
	* @return <code>true</code> if the value was set
	*/
	@:overload public function setCurrentAccessibleValue(n : java.lang.Number) : Bool;
	
	/**
	* Gets the minimum value of this object as a <code>Number</code>.
	*
	* @return minimum value of the object; <code>null</code> if this object does not
	* have a minimum value
	*/
	@:overload public function getMinimumAccessibleValue() : java.lang.Number;
	
	/**
	* Gets the maximum value of this object as a <code>Number</code>.
	*
	* @return maximum value of the object; <code>null</code> if this object does not
	* have a maximum value
	*/
	@:overload public function getMaximumAccessibleValue() : java.lang.Number;
	
	
}
