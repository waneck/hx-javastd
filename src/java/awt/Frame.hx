package java.awt;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
* A <code>Frame</code> is a top-level window with a title and a border.
* <p>
* The size of the frame includes any area designated for the
* border.  The dimensions of the border area may be obtained
* using the <code>getInsets</code> method, however, since
* these dimensions are platform-dependent, a valid insets
* value cannot be obtained until the frame is made displayable
* by either calling <code>pack</code> or <code>show</code>.
* Since the border area is included in the overall size of the
* frame, the border effectively obscures a portion of the frame,
* constraining the area available for rendering and/or displaying
* subcomponents to the rectangle which has an upper-left corner
* location of <code>(insets.left, insets.top)</code>, and has a size of
* <code>width - (insets.left + insets.right)</code> by
* <code>height - (insets.top + insets.bottom)</code>.
* <p>
* The default layout for a frame is <code>BorderLayout</code>.
* <p>
* A frame may have its native decorations (i.e. <code>Frame</code>
* and <code>Titlebar</code>) turned off
* with <code>setUndecorated</code>. This can only be done while the frame
* is not {@link Component#isDisplayable() displayable}.
* <p>
* In a multi-screen environment, you can create a <code>Frame</code>
* on a different screen device by constructing the <code>Frame</code>
* with {@link #Frame(GraphicsConfiguration)} or
* {@link #Frame(String title, GraphicsConfiguration)}.  The
* <code>GraphicsConfiguration</code> object is one of the
* <code>GraphicsConfiguration</code> objects of the target screen
* device.
* <p>
* In a virtual device multi-screen environment in which the desktop
* area could span multiple physical screen devices, the bounds of all
* configurations are relative to the virtual-coordinate system.  The
* origin of the virtual-coordinate system is at the upper left-hand
* corner of the primary physical screen.  Depending on the location
* of the primary screen in the virtual device, negative coordinates
* are possible, as shown in the following figure.
* <p>
* <img src="doc-files/MultiScreen.gif"
* alt="Diagram of virtual device encompassing three physical screens and one primary physical screen. The primary physical screen
* shows (0,0) coords while a different physical screen shows (-80,-100) coords."
* ALIGN=center HSPACE=10 VSPACE=7>
* <p>
* In such an environment, when calling <code>setLocation</code>,
* you must pass a virtual coordinate to this method.  Similarly,
* calling <code>getLocationOnScreen</code> on a <code>Frame</code>
* returns virtual device coordinates.  Call the <code>getBounds</code>
* method of a <code>GraphicsConfiguration</code> to find its origin in
* the virtual coordinate system.
* <p>
* The following code sets the
* location of the <code>Frame</code> at (10, 10) relative
* to the origin of the physical screen of the corresponding
* <code>GraphicsConfiguration</code>.  If the bounds of the
* <code>GraphicsConfiguration</code> is not taken into account, the
* <code>Frame</code> location would be set at (10, 10) relative to the
* virtual-coordinate system and would appear on the primary physical
* screen, which might be different from the physical screen of the
* specified <code>GraphicsConfiguration</code>.
*
* <pre>
*      Frame f = new Frame(GraphicsConfiguration gc);
*      Rectangle bounds = gc.getBounds();
*      f.setLocation(10 + bounds.x, 10 + bounds.y);
* </pre>
*
* <p>
* Frames are capable of generating the following types of
* <code>WindowEvent</code>s:
* <ul>
* <li><code>WINDOW_OPENED</code>
* <li><code>WINDOW_CLOSING</code>:
*     <br>If the program doesn't
*     explicitly hide or dispose the window while processing
*     this event, the window close operation is canceled.
* <li><code>WINDOW_CLOSED</code>
* <li><code>WINDOW_ICONIFIED</code>
* <li><code>WINDOW_DEICONIFIED</code>
* <li><code>WINDOW_ACTIVATED</code>
* <li><code>WINDOW_DEACTIVATED</code>
* <li><code>WINDOW_GAINED_FOCUS</code>
* <li><code>WINDOW_LOST_FOCUS</code>
* <li><code>WINDOW_STATE_CHANGED</code>
* </ul>
*
* @author      Sami Shaio
* @see WindowEvent
* @see Window#addWindowListener
* @since       JDK1.0
*/
@:require(java0) extern class Frame extends java.awt.Window implements java.awt.MenuContainer
{
	/**
	* @deprecated   replaced by <code>Cursor.DEFAULT_CURSOR</code>.
	*/
	@:public @:static @:final public static var DEFAULT_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.CROSSHAIR_CURSOR</code>.
	*/
	@:public @:static @:final public static var CROSSHAIR_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.TEXT_CURSOR</code>.
	*/
	@:public @:static @:final public static var TEXT_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.WAIT_CURSOR</code>.
	*/
	@:public @:static @:final public static var WAIT_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.SW_RESIZE_CURSOR</code>.
	*/
	@:public @:static @:final public static var SW_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.SE_RESIZE_CURSOR</code>.
	*/
	@:public @:static @:final public static var SE_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.NW_RESIZE_CURSOR</code>.
	*/
	@:public @:static @:final public static var NW_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.NE_RESIZE_CURSOR</code>.
	*/
	@:public @:static @:final public static var NE_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.N_RESIZE_CURSOR</code>.
	*/
	@:public @:static @:final public static var N_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.S_RESIZE_CURSOR</code>.
	*/
	@:public @:static @:final public static var S_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.W_RESIZE_CURSOR</code>.
	*/
	@:public @:static @:final public static var W_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.E_RESIZE_CURSOR</code>.
	*/
	@:public @:static @:final public static var E_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.HAND_CURSOR</code>.
	*/
	@:public @:static @:final public static var HAND_CURSOR(default, null) : Int;
	
	/**
	* @deprecated   replaced by <code>Cursor.MOVE_CURSOR</code>.
	*/
	@:public @:static @:final public static var MOVE_CURSOR(default, null) : Int;
	
	/**
	* Frame is in the "normal" state.  This symbolic constant names a
	* frame state with all state bits cleared.
	* @see #setExtendedState(int)
	* @see #getExtendedState
	*/
	@:public @:static @:final public static var NORMAL(default, null) : Int;
	
	/**
	* This state bit indicates that frame is iconified.
	* @see #setExtendedState(int)
	* @see #getExtendedState
	*/
	@:public @:static @:final public static var ICONIFIED(default, null) : Int;
	
	/**
	* This state bit indicates that frame is maximized in the
	* horizontal direction.
	* @see #setExtendedState(int)
	* @see #getExtendedState
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var MAXIMIZED_HORIZ(default, null) : Int;
	
	/**
	* This state bit indicates that frame is maximized in the
	* vertical direction.
	* @see #setExtendedState(int)
	* @see #getExtendedState
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var MAXIMIZED_VERT(default, null) : Int;
	
	/**
	* This state bit mask indicates that frame is fully maximized
	* (that is both horizontally and vertically).  It is just a
	* convenience alias for
	* <code>MAXIMIZED_VERT&nbsp;|&nbsp;MAXIMIZED_HORIZ</code>.
	*
	* <p>Note that the correct test for frame being fully maximized is
	* <pre>
	*     (state & Frame.MAXIMIZED_BOTH) == Frame.MAXIMIZED_BOTH
	* </pre>
	*
	* <p>To test is frame is maximized in <em>some</em> direction use
	* <pre>
	*     (state & Frame.MAXIMIZED_BOTH) != 0
	* </pre>
	*
	* @see #setExtendedState(int)
	* @see #getExtendedState
	* @since 1.4
	*/
	@:require(java4) @:public @:static @:final public static var MAXIMIZED_BOTH(default, null) : Int;
	
	/**
	* Constructs a new instance of <code>Frame</code> that is
	* initially invisible.  The title of the <code>Frame</code>
	* is empty.
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless()
	* @see Component#setSize
	* @see Component#setVisible(boolean)
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new, initially invisible {@code Frame} with the
	* specified {@code GraphicsConfiguration}.
	*
	* @param gc the <code>GraphicsConfiguration</code>
	* of the target screen device. If <code>gc</code>
	* is <code>null</code>, the system default
	* <code>GraphicsConfiguration</code> is assumed.
	* @exception IllegalArgumentException if
	* <code>gc</code> is not from a screen device.
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless()
	* @since     1.3
	*/
	@:require(java3) @:overload @:public public function new(gc : java.awt.GraphicsConfiguration) : Void;
	
	/**
	* Constructs a new, initially invisible <code>Frame</code> object
	* with the specified title.
	* @param title the title to be displayed in the frame's border.
	*              A <code>null</code> value
	*              is treated as an empty string, "".
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless()
	* @see java.awt.Component#setSize
	* @see java.awt.Component#setVisible(boolean)
	* @see java.awt.GraphicsConfiguration#getBounds
	*/
	@:overload @:public public function new(title : String) : Void;
	
	/**
	* Constructs a new, initially invisible <code>Frame</code> object
	* with the specified title and a
	* <code>GraphicsConfiguration</code>.
	* @param title the title to be displayed in the frame's border.
	*              A <code>null</code> value
	*              is treated as an empty string, "".
	* @param gc the <code>GraphicsConfiguration</code>
	* of the target screen device.  If <code>gc</code> is
	* <code>null</code>, the system default
	* <code>GraphicsConfiguration</code> is assumed.
	* @exception IllegalArgumentException if <code>gc</code>
	* is not from a screen device.
	* @exception HeadlessException when
	*     <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless()
	* @see java.awt.Component#setSize
	* @see java.awt.Component#setVisible(boolean)
	* @see java.awt.GraphicsConfiguration#getBounds
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function new(title : String, gc : java.awt.GraphicsConfiguration) : Void;
	
	/**
	* Makes this Frame displayable by connecting it to
	* a native screen resource.  Making a frame displayable will
	* cause any of its children to be made displayable.
	* This method is called internally by the toolkit and should
	* not be called directly by programs.
	* @see Component#isDisplayable
	* @see #removeNotify
	*/
	@:overload @:public override public function addNotify() : Void;
	
	/**
	* Gets the title of the frame.  The title is displayed in the
	* frame's border.
	* @return    the title of this frame, or an empty string ("")
	*                if this frame doesn't have a title.
	* @see       #setTitle(String)
	*/
	@:overload @:public public function getTitle() : String;
	
	/**
	* Sets the title for this frame to the specified string.
	* @param title the title to be displayed in the frame's border.
	*              A <code>null</code> value
	*              is treated as an empty string, "".
	* @see      #getTitle
	*/
	@:overload @:public public function setTitle(title : String) : Void;
	
	/**
	* Returns the image to be displayed as the icon for this frame.
	* <p>
	* This method is obsolete and kept for backward compatibility
	* only. Use {@link Window#getIconImages Window.getIconImages()} instead.
	* <p>
	* If a list of several images was specified as a Window's icon,
	* this method will return the first item of the list.
	*
	* @return    the icon image for this frame, or <code>null</code>
	*                    if this frame doesn't have an icon image.
	* @see       #setIconImage(Image)
	* @see       Window#getIconImages()
	* @see       Window#setIconImages
	*/
	@:overload @:public public function getIconImage() : java.awt.Image;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function setIconImage(image : java.awt.Image) : Void;
	
	/**
	* Gets the menu bar for this frame.
	* @return    the menu bar for this frame, or <code>null</code>
	*                   if this frame doesn't have a menu bar.
	* @see       #setMenuBar(MenuBar)
	*/
	@:overload @:public public function getMenuBar() : java.awt.MenuBar;
	
	/**
	* Sets the menu bar for this frame to the specified menu bar.
	* @param     mb the menu bar being set.
	*            If this parameter is <code>null</code> then any
	*            existing menu bar on this frame is removed.
	* @see       #getMenuBar
	*/
	@:overload @:public public function setMenuBar(mb : java.awt.MenuBar) : Void;
	
	/**
	* Indicates whether this frame is resizable by the user.
	* By default, all frames are initially resizable.
	* @return    <code>true</code> if the user can resize this frame;
	*                        <code>false</code> otherwise.
	* @see       java.awt.Frame#setResizable(boolean)
	*/
	@:overload @:public public function isResizable() : Bool;
	
	/**
	* Sets whether this frame is resizable by the user.
	* @param    resizable   <code>true</code> if this frame is resizable;
	*                       <code>false</code> otherwise.
	* @see      java.awt.Frame#isResizable
	*/
	@:overload @:public public function setResizable(resizable : Bool) : Void;
	
	/**
	* Sets the state of this frame (obsolete).
	* <p>
	* In older versions of JDK a frame state could only be NORMAL or
	* ICONIFIED.  Since JDK 1.4 set of supported frame states is
	* expanded and frame state is represented as a bitwise mask.
	* <p>
	* For compatibility with applications developed
	* earlier this method still accepts
	* {@code Frame.NORMAL} and
	* {@code Frame.ICONIFIED} only.  The iconic
	* state of the frame is only changed, other aspects
	* of frame state are not affected by this method. If
	* the state passed to this method is neither {@code
	* Frame.NORMAL} nor {@code Frame.ICONIFIED} the
	* method performs no actions at all.
	* <p>Note that if the state is not supported on a
	* given platform, neither the state nor the return
	* value of the {@link #getState} method will be
	* changed. The application may determine whether a
	* specific state is supported via the {@link
	* java.awt.Toolkit#isFrameStateSupported} method.
	* <p><b>If the frame is currently visible on the
	* screen</b> (the {@link #isShowing} method returns
	* {@code true}), the developer should examine the
	* return value of the  {@link
	* java.awt.event.WindowEvent#getNewState} method of
	* the {@code WindowEvent} received through the
	* {@link java.awt.event.WindowStateListener} to
	* determine that the state has actually been
	* changed.
	* <p><b>If the frame is not visible on the
	* screen</b>, the events may or may not be
	* generated.  In this case the developer may assume
	* that the state changes immediately after this
	* method returns.  Later, when the {@code
	* setVisible(true)} method is invoked, the frame
	* will attempt to apply this state. Receiving any
	* {@link
	* java.awt.event.WindowEvent#WINDOW_STATE_CHANGED}
	* events is not guaranteed in this case also.
	*
	* @param state either <code>Frame.NORMAL</code> or
	*     <code>Frame.ICONIFIED</code>.
	* @see #setExtendedState(int)
	* @see java.awt.Window#addWindowStateListener
	*/
	@:overload @:public @:synchronized public function setState(state : Int) : Void;
	
	/**
	* Sets the state of this frame. The state is
	* represented as a bitwise mask.
	* <ul>
	* <li><code>NORMAL</code>
	* <br>Indicates that no state bits are set.
	* <li><code>ICONIFIED</code>
	* <li><code>MAXIMIZED_HORIZ</code>
	* <li><code>MAXIMIZED_VERT</code>
	* <li><code>MAXIMIZED_BOTH</code>
	* <br>Concatenates <code>MAXIMIZED_HORIZ</code>
	* and <code>MAXIMIZED_VERT</code>.
	* </ul>
	* <p>Note that if the state is not supported on a
	* given platform, neither the state nor the return
	* value of the {@link #getExtendedState} method will
	* be changed. The application may determine whether
	* a specific state is supported via the {@link
	* java.awt.Toolkit#isFrameStateSupported} method.
	* <p><b>If the frame is currently visible on the
	* screen</b> (the {@link #isShowing} method returns
	* {@code true}), the developer should examine the
	* return value of the {@link
	* java.awt.event.WindowEvent#getNewState} method of
	* the {@code WindowEvent} received through the
	* {@link java.awt.event.WindowStateListener} to
	* determine that the state has actually been
	* changed.
	* <p><b>If the frame is not visible on the
	* screen</b>, the events may or may not be
	* generated.  In this case the developer may assume
	* that the state changes immediately after this
	* method returns.  Later, when the {@code
	* setVisible(true)} method is invoked, the frame
	* will attempt to apply this state. Receiving any
	* {@link
	* java.awt.event.WindowEvent#WINDOW_STATE_CHANGED}
	* events is not guaranteed in this case also.
	*
	* @param state a bitwise mask of frame state constants
	* @since   1.4
	* @see java.awt.Window#addWindowStateListener
	*/
	@:require(java4) @:overload @:public public function setExtendedState(state : Int) : Void;
	
	/**
	* Gets the state of this frame (obsolete).
	* <p>
	* In older versions of JDK a frame state could only be NORMAL or
	* ICONIFIED.  Since JDK 1.4 set of supported frame states is
	* expanded and frame state is represented as a bitwise mask.
	* <p>
	* For compatibility with old programs this method still returns
	* <code>Frame.NORMAL</code> and <code>Frame.ICONIFIED</code> but
	* it only reports the iconic state of the frame, other aspects of
	* frame state are not reported by this method.
	*
	* @return  <code>Frame.NORMAL</code> or <code>Frame.ICONIFIED</code>.
	* @see     #setState(int)
	* @see     #getExtendedState
	*/
	@:overload @:public @:synchronized public function getState() : Int;
	
	/**
	* Gets the state of this frame. The state is
	* represented as a bitwise mask.
	* <ul>
	* <li><code>NORMAL</code>
	* <br>Indicates that no state bits are set.
	* <li><code>ICONIFIED</code>
	* <li><code>MAXIMIZED_HORIZ</code>
	* <li><code>MAXIMIZED_VERT</code>
	* <li><code>MAXIMIZED_BOTH</code>
	* <br>Concatenates <code>MAXIMIZED_HORIZ</code>
	* and <code>MAXIMIZED_VERT</code>.
	* </ul>
	*
	* @return  a bitwise mask of frame state constants
	* @see     #setExtendedState(int)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getExtendedState() : Int;
	
	/**
	* Sets the maximized bounds for this frame.
	* <p>
	* When a frame is in maximized state the system supplies some
	* defaults bounds.  This method allows some or all of those
	* system supplied values to be overridden.
	* <p>
	* If <code>bounds</code> is <code>null</code>, accept bounds
	* supplied by the system.  If non-<code>null</code> you can
	* override some of the system supplied values while accepting
	* others by setting those fields you want to accept from system
	* to <code>Integer.MAX_VALUE</code>.
	* <p>
	* Note, the given maximized bounds are used as a hint for the native
	* system, because the underlying platform may not support setting the
	* location and/or size of the maximized windows.  If that is the case, the
	* provided values do not affect the appearance of the frame in the
	* maximized state.
	*
	* @param bounds  bounds for the maximized state
	* @see #getMaximizedBounds()
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function setMaximizedBounds(bounds : java.awt.Rectangle) : Void;
	
	/**
	* Gets maximized bounds for this frame.
	* Some fields may contain <code>Integer.MAX_VALUE</code> to indicate
	* that system supplied values for this field must be used.
	*
	* @return  maximized bounds for this frame;  may be <code>null</code>
	* @see     #setMaximizedBounds(Rectangle)
	* @since   1.4
	*/
	@:require(java4) @:overload @:public public function getMaximizedBounds() : java.awt.Rectangle;
	
	/**
	* Disables or enables decorations for this frame.
	* <p>
	* This method can only be called while the frame is not displayable. To
	* make this frame decorated, it must be opaque and have the default shape,
	* otherwise the {@code IllegalComponentStateException} will be thrown.
	* Refer to {@link Window#setShape}, {@link Window#setOpacity} and {@link
	* Window#setBackground} for details
	*
	* @param  undecorated {@code true} if no frame decorations are to be
	*         enabled; {@code false} if frame decorations are to be enabled
	*
	* @throws IllegalComponentStateException if the frame is displayable
	* @throws IllegalComponentStateException if {@code undecorated} is
	*      {@code false}, and this frame does not have the default shape
	* @throws IllegalComponentStateException if {@code undecorated} is
	*      {@code false}, and this frame opacity is less than {@code 1.0f}
	* @throws IllegalComponentStateException if {@code undecorated} is
	*      {@code false}, and the alpha value of this frame background
	*      color is less than {@code 1.0f}
	*
	* @see    #isUndecorated
	* @see    Component#isDisplayable
	* @see    Window#getShape
	* @see    Window#getOpacity
	* @see    Window#getBackground
	* @see    javax.swing.JFrame#setDefaultLookAndFeelDecorated(boolean)
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function setUndecorated(undecorated : Bool) : Void;
	
	/**
	* Indicates whether this frame is undecorated.
	* By default, all frames are initially decorated.
	* @return    <code>true</code> if frame is undecorated;
	*                        <code>false</code> otherwise.
	* @see       java.awt.Frame#setUndecorated(boolean)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function isUndecorated() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function setOpacity(opacity : Single) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function setShape(shape : java.awt.Shape) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function setBackground(bgColor : java.awt.Color) : Void;
	
	/**
	* Removes the specified menu bar from this frame.
	* @param    m   the menu component to remove.
	*           If <code>m</code> is <code>null</code>, then
	*           no action is taken
	*/
	@:overload @:public override public function remove(m : java.awt.MenuComponent) : Void;
	
	/**
	* Makes this Frame undisplayable by removing its connection
	* to its native screen resource. Making a Frame undisplayable
	* will cause any of its children to be made undisplayable.
	* This method is called by the toolkit internally and should
	* not be called directly by programs.
	* @see Component#isDisplayable
	* @see #addNotify
	*/
	@:overload @:public override public function removeNotify() : Void;
	
	/**
	* Returns a string representing the state of this <code>Frame</code>.
	* This method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return the parameter string of this frame
	*/
	@:overload @:protected override private function paramString() : String;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>Component.setCursor(Cursor)</code>.
	*/
	@:overload @:public public function setCursor(cursorType : Int) : Void;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>Component.getCursor()</code>.
	*/
	@:overload @:public public function getCursorType() : Int;
	
	/**
	* Returns an array of all {@code Frame}s created by this application.
	* If called from an applet, the array includes only the {@code Frame}s
	* accessible by that applet.
	* <p>
	* <b>Warning:</b> this method may return system created frames, such
	* as a shared, hidden frame which is used by Swing. Applications
	* should not assume the existence of these frames, nor should an
	* application assume anything about these frames such as component
	* positions, <code>LayoutManager</code>s or serialization.
	* <p>
	* <b>Note</b>: To obtain a list of all ownerless windows, including
	* ownerless {@code Dialog}s (introduced in release 1.6), use {@link
	* Window#getOwnerlessWindows Window.getOwnerlessWindows}.
	*
	* @see Window#getWindows()
	* @see Window#getOwnerlessWindows
	*
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function getFrames() : java.NativeArray<java.awt.Frame>;
	
	/**
	* Gets the AccessibleContext associated with this Frame.
	* For frames, the AccessibleContext takes the form of an
	* AccessibleAWTFrame.
	* A new AccessibleAWTFrame instance is created if necessary.
	*
	* @return an AccessibleAWTFrame that serves as the
	*         AccessibleContext of this Frame
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>Frame</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to frame user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$Frame$AccessibleAWTFrame') extern class Frame_AccessibleAWTFrame extends java.awt.Window.Window_AccessibleAWTWindow
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Get the state of this object.
	*
	* @return an instance of AccessibleStateSet containing the current
	* state set of the object
	* @see AccessibleState
	*/
	@:overload @:public override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	
}
