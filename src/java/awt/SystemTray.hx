package java.awt;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class SystemTray
{
	/**
	* Gets the <code>SystemTray</code> instance that represents the
	* desktop's tray area.  This always returns the same instance per
	* application.  On some platforms the system tray may not be
	* supported.  You may use the {@link #isSupported} method to
	* check if the system tray is supported.
	*
	* <p>If a SecurityManager is installed, the AWTPermission
	* {@code accessSystemTray} must be granted in order to get the
	* {@code SystemTray} instance. Otherwise this method will throw a
	* SecurityException.
	*
	* @return the <code>SystemTray</code> instance that represents
	* the desktop's tray area
	* @throws UnsupportedOperationException if the system tray isn't
	* supported by the current platform
	* @throws HeadlessException if
	* <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	* @throws SecurityException if {@code accessSystemTray} permission
	* is not granted
	* @see #add(TrayIcon)
	* @see TrayIcon
	* @see #isSupported
	* @see SecurityManager#checkPermission
	* @see AWTPermission
	*/
	@:overload @:public @:static public static function getSystemTray() : java.awt.SystemTray;
	
	/**
	* Returns whether the system tray is supported on the current
	* platform.  In addition to displaying the tray icon, minimal
	* system tray support includes either a popup menu (see {@link
	* TrayIcon#setPopupMenu(PopupMenu)}) or an action event (see
	* {@link TrayIcon#addActionListener(ActionListener)}).
	*
	* <p>Developers should not assume that all of the system tray
	* functionality is supported.  To guarantee that the tray icon's
	* default action is always accessible, add the default action to
	* both the action listener and the popup menu.  See the {@link
	* SystemTray example} for an example of how to do this.
	*
	* <p><b>Note</b>: When implementing <code>SystemTray</code> and
	* <code>TrayIcon</code> it is <em>strongly recommended</em> that
	* you assign different gestures to the popup menu and an action
	* event.  Overloading a gesture for both purposes is confusing
	* and may prevent the user from accessing one or the other.
	*
	* @see #getSystemTray
	* @return <code>false</code> if no system tray access is supported; this
	* method returns <code>true</code> if the minimal system tray access is
	* supported but does not guarantee that all system tray
	* functionality is supported for the current platform
	*/
	@:overload @:public @:static public static function isSupported() : Bool;
	
	/**
	* Adds a <code>TrayIcon</code> to the <code>SystemTray</code>.
	* The tray icon becomes visible in the system tray once it is
	* added.  The order in which icons are displayed in a tray is not
	* specified - it is platform and implementation-dependent.
	*
	* <p> All icons added by the application are automatically
	* removed from the <code>SystemTray</code> upon application exit
	* and also when the desktop system tray becomes unavailable.
	*
	* @param trayIcon the <code>TrayIcon</code> to be added
	* @throws NullPointerException if <code>trayIcon</code> is
	* <code>null</code>
	* @throws IllegalArgumentException if the same instance of
	* a <code>TrayIcon</code> is added more than once
	* @throws AWTException if the desktop system tray is missing
	* @see #remove(TrayIcon)
	* @see #getSystemTray
	* @see TrayIcon
	* @see java.awt.Image
	*/
	@:overload @:public public function add(trayIcon : java.awt.TrayIcon) : Void;
	
	/**
	* Removes the specified <code>TrayIcon</code> from the
	* <code>SystemTray</code>.
	*
	* <p> All icons added by the application are automatically
	* removed from the <code>SystemTray</code> upon application exit
	* and also when the desktop system tray becomes unavailable.
	*
	* <p> If <code>trayIcon</code> is <code>null</code> or was not
	* added to the system tray, no exception is thrown and no action
	* is performed.
	*
	* @param trayIcon the <code>TrayIcon</code> to be removed
	* @see #add(TrayIcon)
	* @see TrayIcon
	*/
	@:overload @:public public function remove(trayIcon : java.awt.TrayIcon) : Void;
	
	/**
	* Returns an array of all icons added to the tray by this
	* application.  You can't access the icons added by another
	* application.  Some browsers partition applets in different
	* code bases into separate contexts, and establish walls between
	* these contexts.  In such a scenario, only the tray icons added
	* from this context will be returned.
	*
	* <p> The returned array is a copy of the actual array and may be
	* modified in any way without affecting the system tray.  To
	* remove a <code>TrayIcon</code> from the
	* <code>SystemTray</code>, use the {@link
	* #remove(TrayIcon)} method.
	*
	* @return an array of all tray icons added to this tray, or an
	* empty array if none has been added
	* @see #add(TrayIcon)
	* @see TrayIcon
	*/
	@:overload @:public public function getTrayIcons() : java.NativeArray<java.awt.TrayIcon>;
	
	/**
	* Returns the size, in pixels, of the space that a tray icon will
	* occupy in the system tray.  Developers may use this methods to
	* acquire the preferred size for the image property of a tray icon
	* before it is created.  For convenience, there is a similar
	* method {@link TrayIcon#getSize} in the <code>TrayIcon</code> class.
	*
	* @return the default size of a tray icon, in pixels
	* @see TrayIcon#setImageAutoSize(boolean)
	* @see java.awt.Image
	* @see TrayIcon#getSize()
	*/
	@:overload @:public public function getTrayIconSize() : java.awt.Dimension;
	
	/**
	* Adds a {@code PropertyChangeListener} to the list of listeners for the
	* specific property. The following properties are currently supported:
	* <p> </p>
	* <table border=1 summary="SystemTray properties">
	* <tr>
	*    <th>Property</th>
	*    <th>Description</th>
	* </tr>
	* <tr>
	*    <td>{@code trayIcons}</td>
	*    <td>The {@code SystemTray}'s array of {@code TrayIcon} objects.
	*        The array is accessed via the {@link #getTrayIcons} method.<br>
	*        This property is changed when a tray icon is added to (or removed
	*        from) the system tray.<br> For example, this property is changed
	*        when the system tray becomes unavailable on the desktop<br>
	*        and the tray icons are automatically removed.</td>
	* </tr>
	* <tr>
	*    <td>{@code systemTray}</td>
	*    <td>This property contains {@code SystemTray} instance when the system tray
	*        is available or <code>null</code> otherwise.<br> This property is changed
	*        when the system tray becomes available or unavailable on the desktop.<br>
	*        The property is accessed by the {@link #getSystemTray} method.</td>
	* </tr>
	* </table>
	* <p> </p>
	* The {@code listener} listens to property changes only in this context.
	* <p>
	* If {@code listener} is {@code null}, no exception is thrown
	* and no action is performed.
	*
	* @param propertyName the specified property
	* @param listener the property change listener to be added
	*
	* @see #removePropertyChangeListener
	* @see #getPropertyChangeListeners
	*/
	@:overload @:public @:synchronized public function addPropertyChangeListener(propertyName : String, listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a {@code PropertyChangeListener} from the listener list
	* for a specific property.
	* <p>
	* The {@code PropertyChangeListener} must be from this context.
	* <p>
	* If {@code propertyName} or {@code listener} is {@code null} or invalid,
	* no exception is thrown and no action is taken.
	*
	* @param propertyName the specified property
	* @param listener the PropertyChangeListener to be removed
	*
	* @see #addPropertyChangeListener
	* @see #getPropertyChangeListeners
	*/
	@:overload @:public @:synchronized public function removePropertyChangeListener(propertyName : String, listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Returns an array of all the listeners that have been associated
	* with the named property.
	* <p>
	* Only the listeners in this context are returned.
	*
	* @param propertyName the specified property
	* @return all of the {@code PropertyChangeListener}s associated with
	*         the named property; if no such listeners have been added or
	*         if {@code propertyName} is {@code null} or invalid, an empty
	*         array is returned
	*
	* @see #addPropertyChangeListener
	* @see #removePropertyChangeListener
	*/
	@:overload @:public @:synchronized public function getPropertyChangeListeners(propertyName : String) : java.NativeArray<java.beans.PropertyChangeListener>;
	
	
}
