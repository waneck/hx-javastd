package java.awt;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class TrayIcon
{
	/**
	* Creates a <code>TrayIcon</code> with the specified image.
	*
	* @param image the <code>Image</code> to be used
	* @throws IllegalArgumentException if <code>image</code> is
	* <code>null</code>
	* @throws UnsupportedOperationException if the system tray isn't
	* supported by the current platform
	* @throws HeadlessException if
	* {@code GraphicsEnvironment.isHeadless()} returns {@code true}
	* @throws SecurityException if {@code accessSystemTray} permission
	* is not granted
	* @see SystemTray#add(TrayIcon)
	* @see TrayIcon#TrayIcon(Image, String, PopupMenu)
	* @see TrayIcon#TrayIcon(Image, String)
	* @see SecurityManager#checkPermission
	* @see AWTPermission
	*/
	@:overload public function new(image : java.awt.Image) : Void;
	
	/**
	* Creates a <code>TrayIcon</code> with the specified image and
	* tooltip text.
	*
	* @param image the <code>Image</code> to be used
	* @param tooltip the string to be used as tooltip text; if the
	* value is <code>null</code> no tooltip is shown
	* @throws IllegalArgumentException if <code>image</code> is
	* <code>null</code>
	* @throws UnsupportedOperationException if the system tray isn't
	* supported by the current platform
	* @throws HeadlessException if
	* {@code GraphicsEnvironment.isHeadless()} returns {@code true}
	* @throws SecurityException if {@code accessSystemTray} permission
	* is not granted
	* @see SystemTray#add(TrayIcon)
	* @see TrayIcon#TrayIcon(Image)
	* @see TrayIcon#TrayIcon(Image, String, PopupMenu)
	* @see SecurityManager#checkPermission
	* @see AWTPermission
	*/
	@:overload public function new(image : java.awt.Image, tooltip : String) : Void;
	
	/**
	* Creates a <code>TrayIcon</code> with the specified image,
	* tooltip and popup menu.
	*
	* @param image the <code>Image</code> to be used
	* @param tooltip the string to be used as tooltip text; if the
	* value is <code>null</code> no tooltip is shown
	* @param popup the menu to be used for the tray icon's popup
	* menu; if the value is <code>null</code> no popup menu is shown
	* @throws IllegalArgumentException if <code>image</code> is <code>null</code>
	* @throws UnsupportedOperationException if the system tray isn't
	* supported by the current platform
	* @throws HeadlessException if
	* {@code GraphicsEnvironment.isHeadless()} returns {@code true}
	* @throws SecurityException if {@code accessSystemTray} permission
	* is not granted
	* @see SystemTray#add(TrayIcon)
	* @see TrayIcon#TrayIcon(Image, String)
	* @see TrayIcon#TrayIcon(Image)
	* @see PopupMenu
	* @see MouseListener
	* @see #addMouseListener(MouseListener)
	* @see SecurityManager#checkPermission
	* @see AWTPermission
	*/
	@:overload public function new(image : java.awt.Image, tooltip : String, popup : java.awt.PopupMenu) : Void;
	
	/**
	* Sets the image for this <code>TrayIcon</code>.  The previous
	* tray icon image is discarded without calling the {@link
	* java.awt.Image#flush} method &#151; you will need to call it
	* manually.
	*
	* <p> If the image represents an animated image, it will be
	* animated automatically.
	*
	* <p> See the {@link #setImageAutoSize(boolean)} property for
	* details on the size of the displayed image.
	*
	* <p> Calling this method with the same image that is currently
	* being used has no effect.
	*
	* @throws NullPointerException if <code>image</code> is <code>null</code>
	* @param image the non-null <code>Image</code> to be used
	* @see #getImage
	* @see Image
	* @see SystemTray#add(TrayIcon)
	* @see TrayIcon#TrayIcon(Image, String)
	*/
	@:overload public function setImage(image : java.awt.Image) : Void;
	
	/**
	* Returns the current image used for this <code>TrayIcon</code>.
	*
	* @return the image
	* @see #setImage(Image)
	* @see Image
	*/
	@:overload public function getImage() : java.awt.Image;
	
	/**
	* Sets the popup menu for this <code>TrayIcon</code>.  If
	* <code>popup</code> is <code>null</code>, no popup menu will be
	* associated with this <code>TrayIcon</code>.
	*
	* <p>Note that this <code>popup</code> must not be added to any
	* parent before or after it is set on the tray icon.  If you add
	* it to some parent, the <code>popup</code> may be removed from
	* that parent.
	*
	* <p>The {@code popup} can be set on one {@code TrayIcon} only.
	* Setting the same popup on multiple {@code TrayIcon}s will cause
	* an {@code IllegalArgumentException}.
	*
	* <p><strong>Note:</strong> Some platforms may not support
	* showing the user-specified popup menu component when the user
	* right-clicks the tray icon.  In this situation, either no menu
	* will be displayed or, on some systems, a native version of the
	* menu may be displayed.
	*
	* @throws IllegalArgumentException if the {@code popup} is already
	* set for another {@code TrayIcon}
	* @param popup a <code>PopupMenu</code> or <code>null</code> to
	* remove any popup menu
	* @see #getPopupMenu
	*/
	@:overload public function setPopupMenu(popup : java.awt.PopupMenu) : Void;
	
	/**
	* Returns the popup menu associated with this <code>TrayIcon</code>.
	*
	* @return the popup menu or <code>null</code> if none exists
	* @see #setPopupMenu(PopupMenu)
	*/
	@:overload public function getPopupMenu() : java.awt.PopupMenu;
	
	/**
	* Sets the tooltip string for this <code>TrayIcon</code>. The
	* tooltip is displayed automatically when the mouse hovers over
	* the icon.  Setting the tooltip to <code>null</code> removes any
	* tooltip text.
	*
	* When displayed, the tooltip string may be truncated on some platforms;
	* the number of characters that may be displayed is platform-dependent.
	*
	* @param tooltip the string for the tooltip; if the value is
	* <code>null</code> no tooltip is shown
	* @see #getToolTip
	*/
	@:overload public function setToolTip(tooltip : String) : Void;
	
	/**
	* Returns the tooltip string associated with this
	* <code>TrayIcon</code>.
	*
	* @return the tooltip string or <code>null</code> if none exists
	* @see #setToolTip(String)
	*/
	@:overload public function getToolTip() : String;
	
	/**
	* Sets the auto-size property.  Auto-size determines whether the
	* tray image is automatically sized to fit the space allocated
	* for the image on the tray.  By default, the auto-size property
	* is set to <code>false</code>.
	*
	* <p> If auto-size is <code>false</code>, and the image size
	* doesn't match the tray icon space, the image is painted as-is
	* inside that space &#151; if larger than the allocated space, it will
	* be cropped.
	*
	* <p> If auto-size is <code>true</code>, the image is stretched or shrunk to
	* fit the tray icon space.
	*
	* @param autosize <code>true</code> to auto-size the image,
	* <code>false</code> otherwise
	* @see #isImageAutoSize
	*/
	@:overload public function setImageAutoSize(autosize : Bool) : Void;
	
	/**
	* Returns the value of the auto-size property.
	*
	* @return <code>true</code> if the image will be auto-sized,
	* <code>false</code> otherwise
	* @see #setImageAutoSize(boolean)
	*/
	@:overload public function isImageAutoSize() : Bool;
	
	/**
	* Adds the specified mouse listener to receive mouse events from
	* this <code>TrayIcon</code>.  Calling this method with a
	* <code>null</code> value has no effect.
	*
	* <p><b>Note</b>: The {@code MouseEvent}'s coordinates (received
	* from the {@code TrayIcon}) are relative to the screen, not the
	* {@code TrayIcon}.
	*
	* <p> <b>Note: </b>The <code>MOUSE_ENTERED</code> and
	* <code>MOUSE_EXITED</code> mouse events are not supported.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param    listener the mouse listener
	* @see      java.awt.event.MouseEvent
	* @see      java.awt.event.MouseListener
	* @see      #removeMouseListener(MouseListener)
	* @see      #getMouseListeners
	*/
	@:overload @:synchronized public function addMouseListener(listener : java.awt.event.MouseListener) : Void;
	
	/**
	* Removes the specified mouse listener.  Calling this method with
	* <code>null</code> or an invalid value has no effect.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param    listener   the mouse listener
	* @see      java.awt.event.MouseEvent
	* @see      java.awt.event.MouseListener
	* @see      #addMouseListener(MouseListener)
	* @see      #getMouseListeners
	*/
	@:overload @:synchronized public function removeMouseListener(listener : java.awt.event.MouseListener) : Void;
	
	/**
	* Returns an array of all the mouse listeners
	* registered on this <code>TrayIcon</code>.
	*
	* @return all of the <code>MouseListeners</code> registered on
	* this <code>TrayIcon</code> or an empty array if no mouse
	* listeners are currently registered
	*
	* @see      #addMouseListener(MouseListener)
	* @see      #removeMouseListener(MouseListener)
	* @see      java.awt.event.MouseListener
	*/
	@:overload @:synchronized public function getMouseListeners() : java.NativeArray<java.awt.event.MouseListener>;
	
	/**
	* Adds the specified mouse listener to receive mouse-motion
	* events from this <code>TrayIcon</code>.  Calling this method
	* with a <code>null</code> value has no effect.
	*
	* <p><b>Note</b>: The {@code MouseEvent}'s coordinates (received
	* from the {@code TrayIcon}) are relative to the screen, not the
	* {@code TrayIcon}.
	*
	* <p> <b>Note: </b>The <code>MOUSE_DRAGGED</code> mouse event is not supported.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param    listener   the mouse listener
	* @see      java.awt.event.MouseEvent
	* @see      java.awt.event.MouseMotionListener
	* @see      #removeMouseMotionListener(MouseMotionListener)
	* @see      #getMouseMotionListeners
	*/
	@:overload @:synchronized public function addMouseMotionListener(listener : java.awt.event.MouseMotionListener) : Void;
	
	/**
	* Removes the specified mouse-motion listener.  Calling this method with
	* <code>null</code> or an invalid value has no effect.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param    listener   the mouse listener
	* @see      java.awt.event.MouseEvent
	* @see      java.awt.event.MouseMotionListener
	* @see      #addMouseMotionListener(MouseMotionListener)
	* @see      #getMouseMotionListeners
	*/
	@:overload @:synchronized public function removeMouseMotionListener(listener : java.awt.event.MouseMotionListener) : Void;
	
	/**
	* Returns an array of all the mouse-motion listeners
	* registered on this <code>TrayIcon</code>.
	*
	* @return all of the <code>MouseInputListeners</code> registered on
	* this <code>TrayIcon</code> or an empty array if no mouse
	* listeners are currently registered
	*
	* @see      #addMouseMotionListener(MouseMotionListener)
	* @see      #removeMouseMotionListener(MouseMotionListener)
	* @see      java.awt.event.MouseMotionListener
	*/
	@:overload @:synchronized public function getMouseMotionListeners() : java.NativeArray<java.awt.event.MouseMotionListener>;
	
	/**
	* Returns the command name of the action event fired by this tray icon.
	*
	* @return the action command name, or <code>null</code> if none exists
	* @see #addActionListener(ActionListener)
	* @see #setActionCommand(String)
	*/
	@:overload public function getActionCommand() : String;
	
	/**
	* Sets the command name for the action event fired by this tray
	* icon.  By default, this action command is set to
	* <code>null</code>.
	*
	* @param command  a string used to set the tray icon's
	*                 action command.
	* @see java.awt.event.ActionEvent
	* @see #addActionListener(ActionListener)
	* @see #getActionCommand
	*/
	@:overload public function setActionCommand(command : String) : Void;
	
	/**
	* Adds the specified action listener to receive
	* <code>ActionEvent</code>s from this <code>TrayIcon</code>.
	* Action events usually occur when a user selects the tray icon,
	* using either the mouse or keyboard.  The conditions in which
	* action events are generated are platform-dependent.
	*
	* <p>Calling this method with a <code>null</code> value has no
	* effect.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param         listener the action listener
	* @see           #removeActionListener
	* @see           #getActionListeners
	* @see           java.awt.event.ActionListener
	* @see #setActionCommand(String)
	*/
	@:overload @:synchronized public function addActionListener(listener : java.awt.event.ActionListener) : Void;
	
	/**
	* Removes the specified action listener.  Calling this method with
	* <code>null</code> or an invalid value has no effect.
	* <p>Refer to <a href="doc-files/AWTThreadIssues.html#ListenersThreads"
	* >AWT Threading Issues</a> for details on AWT's threading model.
	*
	* @param    listener   the action listener
	* @see      java.awt.event.ActionEvent
	* @see      java.awt.event.ActionListener
	* @see      #addActionListener(ActionListener)
	* @see      #getActionListeners
	* @see #setActionCommand(String)
	*/
	@:overload @:synchronized public function removeActionListener(listener : java.awt.event.ActionListener) : Void;
	
	/**
	* Returns an array of all the action listeners
	* registered on this <code>TrayIcon</code>.
	*
	* @return all of the <code>ActionListeners</code> registered on
	* this <code>TrayIcon</code> or an empty array if no action
	* listeners are currently registered
	*
	* @see      #addActionListener(ActionListener)
	* @see      #removeActionListener(ActionListener)
	* @see      java.awt.event.ActionListener
	*/
	@:overload @:synchronized public function getActionListeners() : java.NativeArray<java.awt.event.ActionListener>;
	
	/**
	* Displays a popup message near the tray icon.  The message will
	* disappear after a time or if the user clicks on it.  Clicking
	* on the message may trigger an {@code ActionEvent}.
	*
	* <p>Either the caption or the text may be <code>null</code>, but an
	* <code>NullPointerException</code> is thrown if both are
	* <code>null</code>.
	*
	* When displayed, the caption or text strings may be truncated on
	* some platforms; the number of characters that may be displayed is
	* platform-dependent.
	*
	* <p><strong>Note:</strong> Some platforms may not support
	* showing a message.
	*
	* @param caption the caption displayed above the text, usually in
	* bold; may be <code>null</code>
	* @param text the text displayed for the particular message; may be
	* <code>null</code>
	* @param messageType an enum indicating the message type
	* @throws NullPointerException if both <code>caption</code>
	* and <code>text</code> are <code>null</code>
	*/
	@:overload public function displayMessage(caption : String, text : String, messageType : TrayIcon_MessageType) : Void;
	
	/**
	* Returns the size, in pixels, of the space that the tray icon
	* occupies in the system tray.  For the tray icon that is not yet
	* added to the system tray, the returned size is equal to the
	* result of the {@link SystemTray#getTrayIconSize}.
	*
	* @return the size of the tray icon, in pixels
	* @see TrayIcon#setImageAutoSize(boolean)
	* @see java.awt.Image
	* @see TrayIcon#getSize()
	*/
	@:overload public function getSize() : java.awt.Dimension;
	
	
}
/**
* The message type determines which icon will be displayed in the
* caption of the message, and a possible system sound a message
* may generate upon showing.
*
* @see TrayIcon
* @see TrayIcon#displayMessage(String, String, MessageType)
* @since 1.6
*/
@:require(java6) @:native('java$awt$TrayIcon$MessageType') extern enum TrayIcon_MessageType
{
	/** An error message */
	ERROR;
	/** A warning message */
	WARNING;
	/** An information message */
	INFO;
	/** Simple message */
	NONE;
	
}

