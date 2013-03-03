package sun.awt;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AWTAccessor
{
	/*
	* Set an accessor object for the java.awt.Component class.
	*/
	@:overload @:public @:static public static function setComponentAccessor(ca : sun.awt.AWTAccessor.AWTAccessor_ComponentAccessor) : Void;
	
	/*
	* Retrieve the accessor object for the java.awt.Component class.
	*/
	@:overload @:public @:static public static function getComponentAccessor() : sun.awt.AWTAccessor.AWTAccessor_ComponentAccessor;
	
	/*
	* Set an accessor object for the java.awt.Container class.
	*/
	@:overload @:public @:static public static function setContainerAccessor(ca : sun.awt.AWTAccessor.AWTAccessor_ContainerAccessor) : Void;
	
	/*
	* Retrieve the accessor object for the java.awt.Container class.
	*/
	@:overload @:public @:static public static function getContainerAccessor() : sun.awt.AWTAccessor.AWTAccessor_ContainerAccessor;
	
	/*
	* Set an accessor object for the java.awt.Window class.
	*/
	@:overload @:public @:static public static function setWindowAccessor(wa : sun.awt.AWTAccessor.AWTAccessor_WindowAccessor) : Void;
	
	/*
	* Retrieve the accessor object for the java.awt.Window class.
	*/
	@:overload @:public @:static public static function getWindowAccessor() : sun.awt.AWTAccessor.AWTAccessor_WindowAccessor;
	
	/*
	* Set an accessor object for the java.awt.AWTEvent class.
	*/
	@:overload @:public @:static public static function setAWTEventAccessor(aea : sun.awt.AWTAccessor.AWTAccessor_AWTEventAccessor) : Void;
	
	/*
	* Retrieve the accessor object for the java.awt.AWTEvent class.
	*/
	@:overload @:public @:static public static function getAWTEventAccessor() : sun.awt.AWTAccessor.AWTAccessor_AWTEventAccessor;
	
	/*
	* Set an accessor object for the java.awt.event.InputEvent class.
	*/
	@:overload @:public @:static public static function setInputEventAccessor(iea : sun.awt.AWTAccessor.AWTAccessor_InputEventAccessor) : Void;
	
	/*
	* Retrieve the accessor object for the java.awt.event.InputEvent class.
	*/
	@:overload @:public @:static public static function getInputEventAccessor() : sun.awt.AWTAccessor.AWTAccessor_InputEventAccessor;
	
	/*
	* Set an accessor object for the java.awt.Frame class.
	*/
	@:overload @:public @:static public static function setFrameAccessor(fa : sun.awt.AWTAccessor.AWTAccessor_FrameAccessor) : Void;
	
	/*
	* Retrieve the accessor object for the java.awt.Frame class.
	*/
	@:overload @:public @:static public static function getFrameAccessor() : sun.awt.AWTAccessor.AWTAccessor_FrameAccessor;
	
	/*
	* Set an accessor object for the java.awt.KeyboardFocusManager class.
	*/
	@:overload @:public @:static public static function setKeyboardFocusManagerAccessor(kfma : sun.awt.AWTAccessor.AWTAccessor_KeyboardFocusManagerAccessor) : Void;
	
	/*
	* Retrieve the accessor object for the java.awt.KeyboardFocusManager class.
	*/
	@:overload @:public @:static public static function getKeyboardFocusManagerAccessor() : sun.awt.AWTAccessor.AWTAccessor_KeyboardFocusManagerAccessor;
	
	/*
	* Set an accessor object for the java.awt.MenuComponent class.
	*/
	@:overload @:public @:static public static function setMenuComponentAccessor(mca : sun.awt.AWTAccessor.AWTAccessor_MenuComponentAccessor) : Void;
	
	/*
	* Retrieve the accessor object for the java.awt.MenuComponent class.
	*/
	@:overload @:public @:static public static function getMenuComponentAccessor() : sun.awt.AWTAccessor.AWTAccessor_MenuComponentAccessor;
	
	/*
	* Set an accessor object for the java.awt.EventQueue class.
	*/
	@:overload @:public @:static public static function setEventQueueAccessor(eqa : sun.awt.AWTAccessor.AWTAccessor_EventQueueAccessor) : Void;
	
	/*
	* Retrieve the accessor object for the java.awt.EventQueue class.
	*/
	@:overload @:public @:static public static function getEventQueueAccessor() : sun.awt.AWTAccessor.AWTAccessor_EventQueueAccessor;
	
	/*
	* Set an accessor object for the java.awt.PopupMenu class.
	*/
	@:overload @:public @:static public static function setPopupMenuAccessor(pma : sun.awt.AWTAccessor.AWTAccessor_PopupMenuAccessor) : Void;
	
	/*
	* Retrieve the accessor object for the java.awt.PopupMenu class.
	*/
	@:overload @:public @:static public static function getPopupMenuAccessor() : sun.awt.AWTAccessor.AWTAccessor_PopupMenuAccessor;
	
	/*
	* Set an accessor object for the java.awt.FileDialog class.
	*/
	@:overload @:public @:static public static function setFileDialogAccessor(fda : sun.awt.AWTAccessor.AWTAccessor_FileDialogAccessor) : Void;
	
	/*
	* Retrieve the accessor object for the java.awt.FileDialog class.
	*/
	@:overload @:public @:static public static function getFileDialogAccessor() : sun.awt.AWTAccessor.AWTAccessor_FileDialogAccessor;
	
	/**
	* Set an accessor object for the java.awt.ScrollPaneAdjustable class.
	*/
	@:overload @:public @:static public static function setScrollPaneAdjustableAccessor(adj : sun.awt.AWTAccessor.AWTAccessor_ScrollPaneAdjustableAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the java.awt.ScrollPaneAdjustable
	* class.
	*/
	@:overload @:public @:static public static function getScrollPaneAdjustableAccessor() : sun.awt.AWTAccessor.AWTAccessor_ScrollPaneAdjustableAccessor;
	
	/**
	* Set an accessor object for the java.awt.CheckboxMenuItem class.
	*/
	@:overload @:public @:static public static function setCheckboxMenuItemAccessor(cmia : sun.awt.AWTAccessor.AWTAccessor_CheckboxMenuItemAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the java.awt.CheckboxMenuItem class.
	*/
	@:overload @:public @:static public static function getCheckboxMenuItemAccessor() : sun.awt.AWTAccessor.AWTAccessor_CheckboxMenuItemAccessor;
	
	/**
	* Set an accessor object for the java.awt.Cursor class.
	*/
	@:overload @:public @:static public static function setCursorAccessor(ca : sun.awt.AWTAccessor.AWTAccessor_CursorAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the java.awt.Cursor class.
	*/
	@:overload @:public @:static public static function getCursorAccessor() : sun.awt.AWTAccessor.AWTAccessor_CursorAccessor;
	
	/**
	* Set an accessor object for the java.awt.MenuBar class.
	*/
	@:overload @:public @:static public static function setMenuBarAccessor(mba : sun.awt.AWTAccessor.AWTAccessor_MenuBarAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the java.awt.MenuBar class.
	*/
	@:overload @:public @:static public static function getMenuBarAccessor() : sun.awt.AWTAccessor.AWTAccessor_MenuBarAccessor;
	
	/**
	* Set an accessor object for the java.awt.MenuItem class.
	*/
	@:overload @:public @:static public static function setMenuItemAccessor(mia : sun.awt.AWTAccessor.AWTAccessor_MenuItemAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the java.awt.MenuItem class.
	*/
	@:overload @:public @:static public static function getMenuItemAccessor() : sun.awt.AWTAccessor.AWTAccessor_MenuItemAccessor;
	
	/**
	* Set an accessor object for the java.awt.Menu class.
	*/
	@:overload @:public @:static public static function setMenuAccessor(ma : sun.awt.AWTAccessor.AWTAccessor_MenuAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the java.awt.Menu class.
	*/
	@:overload @:public @:static public static function getMenuAccessor() : sun.awt.AWTAccessor.AWTAccessor_MenuAccessor;
	
	/**
	* Set an accessor object for the java.awt.event.KeyEvent class.
	*/
	@:overload @:public @:static public static function setKeyEventAccessor(kea : sun.awt.AWTAccessor.AWTAccessor_KeyEventAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the java.awt.event.KeyEvent class.
	*/
	@:overload @:public @:static public static function getKeyEventAccessor() : sun.awt.AWTAccessor.AWTAccessor_KeyEventAccessor;
	
	/**
	* Set an accessor object for the javax.swing.ClientPropertyKey class.
	*/
	@:overload @:public @:static public static function setClientPropertyKeyAccessor(cpka : sun.awt.AWTAccessor.AWTAccessor_ClientPropertyKeyAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the javax.swing.ClientPropertyKey class.
	*/
	@:overload @:public @:static public static function getClientPropertyKeyAccessor() : sun.awt.AWTAccessor.AWTAccessor_ClientPropertyKeyAccessor;
	
	/**
	* Set an accessor object for the java.awt.SystemTray class.
	*/
	@:overload @:public @:static public static function setSystemTrayAccessor(sta : sun.awt.AWTAccessor.AWTAccessor_SystemTrayAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the java.awt.SystemTray class.
	*/
	@:overload @:public @:static public static function getSystemTrayAccessor() : sun.awt.AWTAccessor.AWTAccessor_SystemTrayAccessor;
	
	/**
	* Set an accessor object for the java.awt.TrayIcon class.
	*/
	@:overload @:public @:static public static function setTrayIconAccessor(tia : sun.awt.AWTAccessor.AWTAccessor_TrayIconAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the java.awt.TrayIcon class.
	*/
	@:overload @:public @:static public static function getTrayIconAccessor() : sun.awt.AWTAccessor.AWTAccessor_TrayIconAccessor;
	
	/**
	* Set an accessor object for the java.awt.DefaultKeyboardFocusManager class.
	*/
	@:overload @:public @:static public static function setDefaultKeyboardFocusManagerAccessor(dkfma : sun.awt.AWTAccessor.AWTAccessor_DefaultKeyboardFocusManagerAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the java.awt.DefaultKeyboardFocusManager class.
	*/
	@:overload @:public @:static public static function getDefaultKeyboardFocusManagerAccessor() : sun.awt.AWTAccessor.AWTAccessor_DefaultKeyboardFocusManagerAccessor;
	
	/*
	* Set an accessor object for the java.awt.SequencedEvent class.
	*/
	@:overload @:public @:static public static function setSequencedEventAccessor(sea : sun.awt.AWTAccessor.AWTAccessor_SequencedEventAccessor) : Void;
	
	/*
	* Get the accessor object for the java.awt.SequencedEvent class.
	*/
	@:overload @:public @:static public static function getSequencedEventAccessor() : sun.awt.AWTAccessor.AWTAccessor_SequencedEventAccessor;
	
	
}
/*
* An interface of accessor for the java.awt.Component class.
*/
@:native('sun$awt$AWTAccessor$ComponentAccessor') extern interface AWTAccessor_ComponentAccessor
{
	/*
	* Sets whether the native background erase for a component
	* has been disabled via SunToolkit.disableBackgroundErase().
	*/
	@:overload public function setBackgroundEraseDisabled(comp : java.awt.Component, disabled : Bool) : Void;
	
	/*
	* Indicates whether the native background erase for a
	* component has been disabled via
	* SunToolkit.disableBackgroundErase().
	*/
	@:overload public function getBackgroundEraseDisabled(comp : java.awt.Component) : Bool;
	
	/*
	*
	* Gets the bounds of this component in the form of a
	* <code>Rectangle</code> object. The bounds specify this
	* component's width, height, and location relative to
	* its parent.
	*/
	@:overload public function getBounds(comp : java.awt.Component) : java.awt.Rectangle;
	
	/*
	* Sets the shape of a lw component to cut out from hw components.
	*
	* See 6797587, 6776743, 6768307, and 6768332 for details
	*/
	@:overload public function setMixingCutoutShape(comp : java.awt.Component, shape : java.awt.Shape) : Void;
	
	/**
	* Sets GraphicsConfiguration value for the component.
	*/
	@:overload public function setGraphicsConfiguration(comp : java.awt.Component, gc : java.awt.GraphicsConfiguration) : Void;
	
	/*
	* Requests focus to the component.
	*/
	@:overload public function requestFocus(comp : java.awt.Component, cause : sun.awt.CausedFocusEvent.CausedFocusEvent_Cause) : Bool;
	
	/*
	* Determines if the component can gain focus.
	*/
	@:overload public function canBeFocusOwner(comp : java.awt.Component) : Bool;
	
	/**
	* Returns whether the component is visible without invoking
	* any client code.
	*/
	@:overload public function isVisible(comp : java.awt.Component) : Bool;
	
	/**
	* Sets the RequestFocusController.
	*/
	@:overload public function setRequestFocusController(requestController : sun.awt.RequestFocusController) : Void;
	
	/**
	* Returns the appContext of the component.
	*/
	@:overload public function getAppContext(comp : java.awt.Component) : sun.awt.AppContext;
	
	/**
	* Sets the appContext of the component.
	*/
	@:overload public function setAppContext(comp : java.awt.Component, appContext : sun.awt.AppContext) : Void;
	
	/**
	* Returns the parent of the component.
	*/
	@:overload public function getParent(comp : java.awt.Component) : java.awt.Container;
	
	/**
	* Sets the parent of the component to the specified parent.
	*/
	@:overload public function setParent(comp : java.awt.Component, parent : java.awt.Container) : Void;
	
	/**
	* Resizes the component to the specified width and height.
	*/
	@:overload public function setSize(comp : java.awt.Component, width : Int, height : Int) : Void;
	
	/**
	* Returns the location of the component.
	*/
	@:overload public function getLocation(comp : java.awt.Component) : java.awt.Point;
	
	/**
	* Moves the component to the new location.
	*/
	@:overload public function setLocation(comp : java.awt.Component, x : Int, y : Int) : Void;
	
	/**
	* Determines whether this component is enabled.
	*/
	@:overload public function isEnabled(comp : java.awt.Component) : Bool;
	
	/**
	* Determines whether this component is displayable.
	*/
	@:overload public function isDisplayable(comp : java.awt.Component) : Bool;
	
	/**
	* Gets the cursor set in the component.
	*/
	@:overload public function getCursor(comp : java.awt.Component) : java.awt.Cursor;
	
	/**
	* Returns the peer of the component.
	*/
	@:overload public function getPeer(comp : java.awt.Component) : java.awt.peer.ComponentPeer;
	
	/**
	* Sets the peer of the component to the specified peer.
	*/
	@:overload public function setPeer(comp : java.awt.Component, peer : java.awt.peer.ComponentPeer) : Void;
	
	/**
	* Determines whether this component is lightweight.
	*/
	@:overload public function isLightweight(comp : java.awt.Component) : Bool;
	
	/**
	* Returns whether or not paint messages received from
	* the operating system should be ignored.
	*/
	@:overload public function getIgnoreRepaint(comp : java.awt.Component) : Bool;
	
	/**
	* Returns the width of the component.
	*/
	@:overload public function getWidth(comp : java.awt.Component) : Int;
	
	/**
	* Returns the height of the component.
	*/
	@:overload public function getHeight(comp : java.awt.Component) : Int;
	
	/**
	* Returns the x coordinate of the component.
	*/
	@:overload public function getX(comp : java.awt.Component) : Int;
	
	/**
	* Returns the y coordinate of the component.
	*/
	@:overload public function getY(comp : java.awt.Component) : Int;
	
	/**
	* Gets the foreground color of this component.
	*/
	@:overload public function getForeground(comp : java.awt.Component) : java.awt.Color;
	
	/**
	* Gets the background color of this component.
	*/
	@:overload public function getBackground(comp : java.awt.Component) : java.awt.Color;
	
	/**
	* Sets the background of this component to the specified color.
	*/
	@:overload public function setBackground(comp : java.awt.Component, background : java.awt.Color) : Void;
	
	/**
	* Gets the font of the component.
	*/
	@:overload public function getFont(comp : java.awt.Component) : java.awt.Font;
	
	/**
	* Processes events occurring on this component.
	*/
	@:overload public function processEvent(comp : java.awt.Component, e : java.awt.AWTEvent) : Void;
	
	/*
	* Returns the acc this component was constructed with.
	*/
	@:overload public function getAccessControlContext(comp : java.awt.Component) : java.security.AccessControlContext;
	
	
}
/*
* An interface of accessor for the java.awt.Container class.
*/
@:native('sun$awt$AWTAccessor$ContainerAccessor') extern interface AWTAccessor_ContainerAccessor
{
	/**
	* Validates the container unconditionally.
	*/
	@:overload public function validateUnconditionally(cont : java.awt.Container) : Void;
	
	
}
/*
* An interface of accessor for java.awt.Window class.
*/
@:native('sun$awt$AWTAccessor$WindowAccessor') extern interface AWTAccessor_WindowAccessor
{
	/*
	* Get opacity level of the given window.
	*/
	@:overload public function getOpacity(window : java.awt.Window) : Single;
	
	/*
	* Set opacity level to the given window.
	*/
	@:overload public function setOpacity(window : java.awt.Window, opacity : Single) : Void;
	
	/*
	* Get a shape assigned to the given window.
	*/
	@:overload public function getShape(window : java.awt.Window) : java.awt.Shape;
	
	/*
	* Set a shape to the given window.
	*/
	@:overload public function setShape(window : java.awt.Window, shape : java.awt.Shape) : Void;
	
	/*
	* Set the opaque preoperty to the given window.
	*/
	@:overload public function setOpaque(window : java.awt.Window, isOpaque : Bool) : Void;
	
	/*
	* Update the image of a non-opaque (translucent) window.
	*/
	@:overload public function updateWindow(window : java.awt.Window) : Void;
	
	/** Get the size of the security warning.
	*/
	@:overload public function getSecurityWarningSize(w : java.awt.Window) : java.awt.Dimension;
	
	/**
	* Set the size of the security warning.
	*/
	@:overload public function setSecurityWarningSize(w : java.awt.Window, width : Int, height : Int) : Void;
	
	/** Set the position of the security warning.
	*/
	@:overload public function setSecurityWarningPosition(w : java.awt.Window, point : java.awt.geom.Point2D, alignmentX : Single, alignmentY : Single) : Void;
	
	/** Request to recalculate the new position of the security warning for
	* the given window size/location as reported by the native system.
	*/
	@:overload public function calculateSecurityWarningPosition(window : java.awt.Window, x : Float, y : Float, w : Float, h : Float) : java.awt.geom.Point2D;
	
	/** Sets the synchronous status of focus requests on lightweight
	* components in the specified window to the specified value.
	*/
	@:overload public function setLWRequestStatus(changed : java.awt.Window, status : Bool) : Void;
	
	/**
	* Indicates whether this window should receive focus on subsequently
	* being shown, or being moved to the front.
	*/
	@:overload public function isAutoRequestFocus(w : java.awt.Window) : Bool;
	
	/**
	* Indicates whether the specified window is an utility window for TrayIcon.
	*/
	@:overload public function isTrayIconWindow(w : java.awt.Window) : Bool;
	
	/**
	* Marks the specified window as an utility window for TrayIcon.
	*/
	@:overload public function setTrayIconWindow(w : java.awt.Window, isTrayIconWindow : Bool) : Void;
	
	
}
/**
* An accessor for the AWTEvent class.
*/
@:native('sun$awt$AWTAccessor$AWTEventAccessor') extern interface AWTAccessor_AWTEventAccessor
{
	/**
	* Marks the event as posted.
	*/
	@:overload public function setPosted(ev : java.awt.AWTEvent) : Void;
	
	/**
	* Sets the flag on this AWTEvent indicating that it was
	* generated by the system.
	*/
	@:overload public function setSystemGenerated(ev : java.awt.AWTEvent) : Void;
	
	/**
	* Indicates whether this AWTEvent was generated by the system.
	*/
	@:overload public function isSystemGenerated(ev : java.awt.AWTEvent) : Bool;
	
	/**
	* Returns the acc this event was constructed with.
	*/
	@:overload public function getAccessControlContext(ev : java.awt.AWTEvent) : java.security.AccessControlContext;
	
	/**
	* Returns binary data associated with this event;
	*/
	@:overload public function getBData(ev : java.awt.AWTEvent) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Associates binary data with this event;
	*/
	@:overload public function setBData(ev : java.awt.AWTEvent, bdata : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
@:native('sun$awt$AWTAccessor$InputEventAccessor') extern interface AWTAccessor_InputEventAccessor
{
	/*
	* Accessor for InputEvent.getButtonDownMasks()
	*/
	@:overload public function getButtonDownMasks() : java.NativeArray<Int>;
	
	
}
/*
* An accessor for the java.awt.Frame class.
*/
@:native('sun$awt$AWTAccessor$FrameAccessor') extern interface AWTAccessor_FrameAccessor
{
	/*
	* Sets the state of this frame.
	*/
	@:overload public function setExtendedState(frame : java.awt.Frame, state : Int) : Void;
	
	/*
	* Gets the state of this frame.
	*/
	@:overload public function getExtendedState(frame : java.awt.Frame) : Int;
	
	/*
	* Gets the maximized bounds of this frame.
	*/
	@:overload public function getMaximizedBounds(frame : java.awt.Frame) : java.awt.Rectangle;
	
	
}
/**
* An interface of accessor for the java.awt.KeyboardFocusManager class.
*/
@:native('sun$awt$AWTAccessor$KeyboardFocusManagerAccessor') extern interface AWTAccessor_KeyboardFocusManagerAccessor
{
	/**
	* Indicates whether the native implementation should
	* proceed with a pending focus request for the heavyweight.
	*/
	@:overload public function shouldNativelyFocusHeavyweight(heavyweight : java.awt.Component, descendant : java.awt.Component, temporary : Bool, focusedWindowChangeAllowed : Bool, time : haxe.Int64, cause : sun.awt.CausedFocusEvent.CausedFocusEvent_Cause) : Int;
	
	/**
	* Delivers focus for the lightweight descendant of the heavyweight
	* synchronously.
	*/
	@:overload public function processSynchronousLightweightTransfer(heavyweight : java.awt.Component, descendant : java.awt.Component, temporary : Bool, focusedWindowChangeAllowed : Bool, time : haxe.Int64) : Bool;
	
	/**
	* Removes the last focus request for the heavyweight from the queue.
	*/
	@:overload public function removeLastFocusRequest(heavyweight : java.awt.Component) : Void;
	
	/**
	* Sets the most recent focus owner in the window.
	*/
	@:overload public function setMostRecentFocusOwner(window : java.awt.Window, component : java.awt.Component) : Void;
	
	/**
	* Returns current KFM of the specified AppContext.
	*/
	@:overload public function getCurrentKeyboardFocusManager(ctx : sun.awt.AppContext) : java.awt.KeyboardFocusManager;
	
	/**
	* Return the current focus cycle root
	*/
	@:overload public function getCurrentFocusCycleRoot() : java.awt.Container;
	
	
}
/**
* An accessor for the MenuComponent class.
*/
@:native('sun$awt$AWTAccessor$MenuComponentAccessor') extern interface AWTAccessor_MenuComponentAccessor
{
	/**
	* Returns the appContext of the menu component.
	*/
	@:overload public function getAppContext(menuComp : java.awt.MenuComponent) : sun.awt.AppContext;
	
	/**
	* Sets the appContext of the menu component.
	*/
	@:overload public function setAppContext(menuComp : java.awt.MenuComponent, appContext : sun.awt.AppContext) : Void;
	
	/**
	* Returns the menu container of the menu component
	*/
	@:overload public function getParent(menuComp : java.awt.MenuComponent) : java.awt.MenuContainer;
	
	/**
	* Gets the font used for this menu component.
	*/
	@:overload public function getFont_NoClientCode(menuComp : java.awt.MenuComponent) : java.awt.Font;
	
	
}
/**
* An accessor for the EventQueue class
*/
@:native('sun$awt$AWTAccessor$EventQueueAccessor') extern interface AWTAccessor_EventQueueAccessor
{
	/**
	* Gets the event dispatch thread.
	*/
	@:overload public function getDispatchThread(eventQueue : java.awt.EventQueue) : java.lang.Thread;
	
	/**
	* Checks if the current thread is EDT for the given EQ.
	*/
	@:overload @:public public function isDispatchThreadImpl(eventQueue : java.awt.EventQueue) : Bool;
	
	/**
	* Removes any pending events for the specified source object.
	*/
	@:overload public function removeSourceEvents(eventQueue : java.awt.EventQueue, source : Dynamic, removeAllEvents : Bool) : Void;
	
	/**
	* Returns whether an event is pending on any of the separate Queues.
	*/
	@:overload public function noEvents(eventQueue : java.awt.EventQueue) : Bool;
	
	/**
	* Called from PostEventQueue.postEvent to notify that a new event
	* appeared.
	*/
	@:overload public function wakeup(eventQueue : java.awt.EventQueue, isShutdown : Bool) : Void;
	
	/**
	* Static in EventQueue
	*/
	@:overload public function invokeAndWait(source : Dynamic, r : java.lang.Runnable) : Void;
	
	
}
/*
* An accessor for the PopupMenu class
*/
@:native('sun$awt$AWTAccessor$PopupMenuAccessor') extern interface AWTAccessor_PopupMenuAccessor
{
	/*
	* Returns whether the popup menu is attached to a tray
	*/
	@:overload public function isTrayIconPopup(popupMenu : java.awt.PopupMenu) : Bool;
	
	
}
/*
* An accessor for the FileDialog class
*/
@:native('sun$awt$AWTAccessor$FileDialogAccessor') extern interface AWTAccessor_FileDialogAccessor
{
	/*
	* Sets the files the user selects
	*/
	@:overload public function setFiles(fileDialog : java.awt.FileDialog, files : java.NativeArray<java.io.File>) : Void;
	
	/*
	* Sets the file the user selects
	*/
	@:overload public function setFile(fileDialog : java.awt.FileDialog, file : String) : Void;
	
	/*
	* Sets the directory the user selects
	*/
	@:overload public function setDirectory(fileDialog : java.awt.FileDialog, directory : String) : Void;
	
	/*
	* Returns whether the file dialog allows the multiple file selection.
	*/
	@:overload public function isMultipleMode(fileDialog : java.awt.FileDialog) : Bool;
	
	
}
/**
* An accessor for the ScrollPaneAdjustable class.
*/
@:native('sun$awt$AWTAccessor$ScrollPaneAdjustableAccessor') extern interface AWTAccessor_ScrollPaneAdjustableAccessor
{
	/**
	* Sets the value of this scrollbar to the specified value.
	*/
	@:overload public function setTypedValue(adj : java.awt.ScrollPaneAdjustable, v : Int, type : Int) : Void;
	
	
}
/**
* An accessor for the CheckboxMenuItem class
*/
@:native('sun$awt$AWTAccessor$CheckboxMenuItemAccessor') extern interface AWTAccessor_CheckboxMenuItemAccessor
{
	/**
	* Returns whether menu item is checked
	*/
	@:overload public function getState(cmi : java.awt.CheckboxMenuItem) : Bool;
	
	
}
/**
* An accessor for the Cursor class
*/
@:native('sun$awt$AWTAccessor$CursorAccessor') extern interface AWTAccessor_CursorAccessor
{
	/**
	* Returns pData of the Cursor class
	*/
	@:overload public function getPData(cursor : java.awt.Cursor) : haxe.Int64;
	
	/**
	* Sets pData to the Cursor class
	*/
	@:overload public function setPData(cursor : java.awt.Cursor, pData : haxe.Int64) : Void;
	
	/**
	* Return type of the Cursor class
	*/
	@:overload public function getType(cursor : java.awt.Cursor) : Int;
	
	
}
/**
* An accessor for the MenuBar class
*/
@:native('sun$awt$AWTAccessor$MenuBarAccessor') extern interface AWTAccessor_MenuBarAccessor
{
	/**
	* Returns help menu
	*/
	@:overload public function getHelpMenu(menuBar : java.awt.MenuBar) : java.awt.Menu;
	
	/**
	* Returns menus
	*/
	@:overload public function getMenus(menuBar : java.awt.MenuBar) : java.util.Vector<Dynamic>;
	
	
}
/**
* An accessor for the MenuItem class
*/
@:native('sun$awt$AWTAccessor$MenuItemAccessor') extern interface AWTAccessor_MenuItemAccessor
{
	/**
	* Returns whether menu item is enabled
	*/
	@:overload public function isEnabled(item : java.awt.MenuItem) : Bool;
	
	/**
	* Gets the command name of the action event that is fired
	* by this menu item.
	*/
	@:overload public function getActionCommandImpl(item : java.awt.MenuItem) : String;
	
	/**
	* Returns true if the item and all its ancestors are
	* enabled, false otherwise
	*/
	@:overload public function isItemEnabled(item : java.awt.MenuItem) : Bool;
	
	/**
	* Returns label
	*/
	@:overload public function getLabel(item : java.awt.MenuItem) : String;
	
	/**
	* Returns shortcut
	*/
	@:overload public function getShortcut(item : java.awt.MenuItem) : java.awt.MenuShortcut;
	
	
}
/**
* An accessor for the Menu class
*/
@:native('sun$awt$AWTAccessor$MenuAccessor') extern interface AWTAccessor_MenuAccessor
{
	/**
	* Returns vector of the items that are part of the Menu
	*/
	@:overload public function getItems(menu : java.awt.Menu) : java.util.Vector<Dynamic>;
	
	
}
/**
* An accessor for the KeyEvent class
*/
@:native('sun$awt$AWTAccessor$KeyEventAccessor') extern interface AWTAccessor_KeyEventAccessor
{
	/**
	* Sets rawCode field for KeyEvent
	*/
	@:overload public function setRawCode(ev : java.awt.event.KeyEvent, rawCode : haxe.Int64) : Void;
	
	/**
	* Sets primaryLevelUnicode field for KeyEvent
	*/
	@:overload public function setPrimaryLevelUnicode(ev : java.awt.event.KeyEvent, primaryLevelUnicode : haxe.Int64) : Void;
	
	/**
	* Sets extendedKeyCode field for KeyEvent
	*/
	@:overload public function setExtendedKeyCode(ev : java.awt.event.KeyEvent, extendedKeyCode : haxe.Int64) : Void;
	
	
}
/**
* An accessor for the ClientPropertyKey class
*/
@:native('sun$awt$AWTAccessor$ClientPropertyKeyAccessor') extern interface AWTAccessor_ClientPropertyKeyAccessor
{
	/**
	* Retrieves JComponent_TRANSFER_HANDLER enum object
	*/
	@:overload public function getJComponent_TRANSFER_HANDLER() : Dynamic;
	
	
}
/**
* An accessor for the SystemTray class
*/
@:native('sun$awt$AWTAccessor$SystemTrayAccessor') extern interface AWTAccessor_SystemTrayAccessor
{
	/**
	* Support for reporting bound property changes for Object properties.
	*/
	@:overload public function firePropertyChange(tray : java.awt.SystemTray, propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	
}
/**
* An accessor for the TrayIcon class
*/
@:native('sun$awt$AWTAccessor$TrayIconAccessor') extern interface AWTAccessor_TrayIconAccessor
{
	@:overload public function addNotify(trayIcon : java.awt.TrayIcon) : Void;
	
	@:overload public function removeNotify(trayIcon : java.awt.TrayIcon) : Void;
	
	
}
/**
* An accessor for the DefaultKeyboardFocusManager class
*/
@:native('sun$awt$AWTAccessor$DefaultKeyboardFocusManagerAccessor') extern interface AWTAccessor_DefaultKeyboardFocusManagerAccessor
{
	@:overload @:public public function consumeNextKeyTyped(dkfm : java.awt.DefaultKeyboardFocusManager, e : java.awt.event.KeyEvent) : Void;
	
	
}
/*
* An accessor for the SequencedEventAccessor class
*/
@:native('sun$awt$AWTAccessor$SequencedEventAccessor') extern interface AWTAccessor_SequencedEventAccessor
{
	/*
	* Returns the nested event.
	*/
	@:overload public function getNested(sequencedEvent : java.awt.AWTEvent) : java.awt.AWTEvent;
	
	/*
	* Returns true if the event is an instances of SequencedEvent.
	*/
	@:overload public function isSequencedEvent(event : java.awt.AWTEvent) : Bool;
	
	
}
