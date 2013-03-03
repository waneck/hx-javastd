package java.awt;
/*
* Copyright (c) 1999, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class Robot
{
	/**
	* Constructs a Robot object in the coordinate system of the primary screen.
	* <p>
	*
	* @throws  AWTException if the platform configuration does not allow
	* low-level input control.  This exception is always thrown when
	* GraphicsEnvironment.isHeadless() returns true
	* @throws  SecurityException if <code>createRobot</code> permission is not granted
	* @see     java.awt.GraphicsEnvironment#isHeadless
	* @see     SecurityManager#checkPermission
	* @see     AWTPermission
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a Robot for the given screen device. Coordinates passed
	* to Robot method calls like mouseMove and createScreenCapture will
	* be interpreted as being in the same coordinate system as the
	* specified screen. Note that depending on the platform configuration,
	* multiple screens may either:
	* <ul>
	* <li>share the same coordinate system to form a combined virtual screen</li>
	* <li>use different coordinate systems to act as independent screens</li>
	* </ul>
	* This constructor is meant for the latter case.
	* <p>
	* If screen devices are reconfigured such that the coordinate system is
	* affected, the behavior of existing Robot objects is undefined.
	*
	* @param screen    A screen GraphicsDevice indicating the coordinate
	*                  system the Robot will operate in.
	* @throws  AWTException if the platform configuration does not allow
	* low-level input control.  This exception is always thrown when
	* GraphicsEnvironment.isHeadless() returns true.
	* @throws  IllegalArgumentException if <code>screen</code> is not a screen
	*          GraphicsDevice.
	* @throws  SecurityException if <code>createRobot</code> permission is not granted
	* @see     java.awt.GraphicsEnvironment#isHeadless
	* @see     GraphicsDevice
	* @see     SecurityManager#checkPermission
	* @see     AWTPermission
	*/
	@:overload @:public public function new(screen : java.awt.GraphicsDevice) : Void;
	
	/**
	* Moves mouse pointer to given screen coordinates.
	* @param x         X position
	* @param y         Y position
	*/
	@:overload @:public @:synchronized public function mouseMove(x : Int, y : Int) : Void;
	
	/**
	* Presses one or more mouse buttons.  The mouse buttons should
	* be released using the {@link #mouseRelease(int)} method.
	*
	* @param buttons the Button mask; a combination of one or more
	* mouse button masks.
	* <p>
	* It is allowed to use only a combination of valid values as a {@code buttons} parameter.
	* A valid combination consists of {@code InputEvent.BUTTON1_DOWN_MASK},
	* {@code InputEvent.BUTTON2_DOWN_MASK}, {@code InputEvent.BUTTON3_DOWN_MASK}
	* and values returned by the
	* {@link InputEvent#getMaskForButton(int) InputEvent.getMaskForButton(button)} method.
	*
	* The valid combination also depends on a
	* {@link Toolkit#areExtraMouseButtonsEnabled() Toolkit.areExtraMouseButtonsEnabled()} value as follows:
	* <ul>
	* <li> If support for extended mouse buttons is
	* {@link Toolkit#areExtraMouseButtonsEnabled() disabled} by Java
	* then it is allowed to use only the following standard button masks:
	* {@code InputEvent.BUTTON1_DOWN_MASK}, {@code InputEvent.BUTTON2_DOWN_MASK},
	* {@code InputEvent.BUTTON3_DOWN_MASK}.
	* <li> If support for extended mouse buttons is
	* {@link Toolkit#areExtraMouseButtonsEnabled() enabled} by Java
	* then it is allowed to use the standard button masks
	* and masks for existing extended mouse buttons, if the mouse has more then three buttons.
	* In that way, it is allowed to use the button masks corresponding to the buttons
	* in the range from 1 to {@link java.awt.MouseInfo#getNumberOfButtons() MouseInfo.getNumberOfButtons()}.
	* <br>
	* It is recommended to use the {@link InputEvent#getMaskForButton(int) InputEvent.getMaskForButton(button)}
	* method to obtain the mask for any mouse button by its number.
	* </ul>
	* <p>
	* The following standard button masks are also accepted:
	* <ul>
	* <li>{@code InputEvent.BUTTON1_MASK}
	* <li>{@code InputEvent.BUTTON2_MASK}
	* <li>{@code InputEvent.BUTTON3_MASK}
	* </ul>
	* However, it is recommended to use {@code InputEvent.BUTTON1_DOWN_MASK},
	* {@code InputEvent.BUTTON2_DOWN_MASK},  {@code InputEvent.BUTTON3_DOWN_MASK} instead.
	* Either extended {@code _DOWN_MASK} or old {@code _MASK} values
	* should be used, but both those models should not be mixed.
	* @throws IllegalArgumentException if the {@code buttons} mask contains the mask for extra mouse button
	*         and support for extended mouse buttons is {@link Toolkit#areExtraMouseButtonsEnabled() disabled} by Java
	* @throws IllegalArgumentException if the {@code buttons} mask contains the mask for extra mouse button
	*         that does not exist on the mouse and support for extended mouse buttons is {@link Toolkit#areExtraMouseButtonsEnabled() enabled} by Java
	* @see #mouseRelease(int)
	* @see InputEvent#getMaskForButton(int)
	* @see Toolkit#areExtraMouseButtonsEnabled()
	* @see java.awt.MouseInfo#getNumberOfButtons()
	* @see java.awt.event.MouseEvent
	*/
	@:overload @:public @:synchronized public function mousePress(buttons : Int) : Void;
	
	/**
	* Releases one or more mouse buttons.
	*
	* @param buttons the Button mask; a combination of one or more
	* mouse button masks.
	* <p>
	* It is allowed to use only a combination of valid values as a {@code buttons} parameter.
	* A valid combination consists of {@code InputEvent.BUTTON1_DOWN_MASK},
	* {@code InputEvent.BUTTON2_DOWN_MASK}, {@code InputEvent.BUTTON3_DOWN_MASK}
	* and values returned by the
	* {@link InputEvent#getMaskForButton(int) InputEvent.getMaskForButton(button)} method.
	*
	* The valid combination also depends on a
	* {@link Toolkit#areExtraMouseButtonsEnabled() Toolkit.areExtraMouseButtonsEnabled()} value as follows:
	* <ul>
	* <li> If the support for extended mouse buttons is
	* {@link Toolkit#areExtraMouseButtonsEnabled() disabled} by Java
	* then it is allowed to use only the following standard button masks:
	* {@code InputEvent.BUTTON1_DOWN_MASK}, {@code InputEvent.BUTTON2_DOWN_MASK},
	* {@code InputEvent.BUTTON3_DOWN_MASK}.
	* <li> If the support for extended mouse buttons is
	* {@link Toolkit#areExtraMouseButtonsEnabled() enabled} by Java
	* then it is allowed to use the standard button masks
	* and masks for existing extended mouse buttons, if the mouse has more then three buttons.
	* In that way, it is allowed to use the button masks corresponding to the buttons
	* in the range from 1 to {@link java.awt.MouseInfo#getNumberOfButtons() MouseInfo.getNumberOfButtons()}.
	* <br>
	* It is recommended to use the {@link InputEvent#getMaskForButton(int) InputEvent.getMaskForButton(button)}
	* method to obtain the mask for any mouse button by its number.
	* </ul>
	* <p>
	* The following standard button masks are also accepted:
	* <ul>
	* <li>{@code InputEvent.BUTTON1_MASK}
	* <li>{@code InputEvent.BUTTON2_MASK}
	* <li>{@code InputEvent.BUTTON3_MASK}
	* </ul>
	* However, it is recommended to use {@code InputEvent.BUTTON1_DOWN_MASK},
	* {@code InputEvent.BUTTON2_DOWN_MASK},  {@code InputEvent.BUTTON3_DOWN_MASK} instead.
	* Either extended {@code _DOWN_MASK} or old {@code _MASK} values
	* should be used, but both those models should not be mixed.
	* @throws IllegalArgumentException if the {@code buttons} mask contains the mask for extra mouse button
	*         and support for extended mouse buttons is {@link Toolkit#areExtraMouseButtonsEnabled() disabled} by Java
	* @throws IllegalArgumentException if the {@code buttons} mask contains the mask for extra mouse button
	*         that does not exist on the mouse and support for extended mouse buttons is {@link Toolkit#areExtraMouseButtonsEnabled() enabled} by Java
	* @see #mousePress(int)
	* @see InputEvent#getMaskForButton(int)
	* @see Toolkit#areExtraMouseButtonsEnabled()
	* @see java.awt.MouseInfo#getNumberOfButtons()
	* @see java.awt.event.MouseEvent
	*/
	@:overload @:public @:synchronized public function mouseRelease(buttons : Int) : Void;
	
	/**
	* Rotates the scroll wheel on wheel-equipped mice.
	*
	* @param wheelAmt  number of "notches" to move the mouse wheel
	*                  Negative values indicate movement up/away from the user,
	*                  positive values indicate movement down/towards the user.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:synchronized public function mouseWheel(wheelAmt : Int) : Void;
	
	/**
	* Presses a given key.  The key should be released using the
	* <code>keyRelease</code> method.
	* <p>
	* Key codes that have more than one physical key associated with them
	* (e.g. <code>KeyEvent.VK_SHIFT</code> could mean either the
	* left or right shift key) will map to the left key.
	*
	* @param   keycode Key to press (e.g. <code>KeyEvent.VK_A</code>)
	* @throws  IllegalArgumentException if <code>keycode</code> is not
	*          a valid key
	* @see     #keyRelease(int)
	* @see     java.awt.event.KeyEvent
	*/
	@:overload @:public @:synchronized public function keyPress(keycode : Int) : Void;
	
	/**
	* Releases a given key.
	* <p>
	* Key codes that have more than one physical key associated with them
	* (e.g. <code>KeyEvent.VK_SHIFT</code> could mean either the
	* left or right shift key) will map to the left key.
	*
	* @param   keycode Key to release (e.g. <code>KeyEvent.VK_A</code>)
	* @throws  IllegalArgumentException if <code>keycode</code> is not a
	*          valid key
	* @see  #keyPress(int)
	* @see     java.awt.event.KeyEvent
	*/
	@:overload @:public @:synchronized public function keyRelease(keycode : Int) : Void;
	
	/**
	* Returns the color of a pixel at the given screen coordinates.
	* @param   x       X position of pixel
	* @param   y       Y position of pixel
	* @return  Color of the pixel
	*/
	@:overload @:public @:synchronized public function getPixelColor(x : Int, y : Int) : java.awt.Color;
	
	/**
	* Creates an image containing pixels read from the screen.  This image does
	* not include the mouse cursor.
	* @param   screenRect      Rect to capture in screen coordinates
	* @return  The captured image
	* @throws  IllegalArgumentException if <code>screenRect</code> width and height are not greater than zero
	* @throws  SecurityException if <code>readDisplayPixels</code> permission is not granted
	* @see     SecurityManager#checkPermission
	* @see     AWTPermission
	*/
	@:overload @:public @:synchronized public function createScreenCapture(screenRect : java.awt.Rectangle) : java.awt.image.BufferedImage;
	
	/**
	* Returns whether this Robot automatically invokes <code>waitForIdle</code>
	* after generating an event.
	* @return Whether <code>waitForIdle</code> is automatically called
	*/
	@:overload @:public @:synchronized public function isAutoWaitForIdle() : Bool;
	
	/**
	* Sets whether this Robot automatically invokes <code>waitForIdle</code>
	* after generating an event.
	* @param   isOn    Whether <code>waitForIdle</code> is automatically invoked
	*/
	@:overload @:public @:synchronized public function setAutoWaitForIdle(isOn : Bool) : Void;
	
	/**
	* Returns the number of milliseconds this Robot sleeps after generating an event.
	*/
	@:overload @:public @:synchronized public function getAutoDelay() : Int;
	
	/**
	* Sets the number of milliseconds this Robot sleeps after generating an event.
	* @throws  IllegalArgumentException If <code>ms</code> is not between 0 and 60,000 milliseconds inclusive
	*/
	@:overload @:public @:synchronized public function setAutoDelay(ms : Int) : Void;
	
	/**
	* Sleeps for the specified time.
	* To catch any <code>InterruptedException</code>s that occur,
	* <code>Thread.sleep()</code> may be used instead.
	* @param   ms      time to sleep in milliseconds
	* @throws  IllegalArgumentException if <code>ms</code> is not between 0 and 60,000 milliseconds inclusive
	* @see     java.lang.Thread#sleep
	*/
	@:overload @:public @:synchronized public function delay(ms : Int) : Void;
	
	/**
	* Waits until all events currently on the event queue have been processed.
	* @throws  IllegalThreadStateException if called on the AWT event dispatching thread
	*/
	@:overload @:public @:synchronized public function waitForIdle() : Void;
	
	/**
	* Returns a string representation of this Robot.
	*
	* @return  the string representation.
	*/
	@:overload @:public @:synchronized public function toString() : String;
	
	
}
@:native('java$awt$Robot$RobotDisposer') @:internal extern class Robot_RobotDisposer implements sun.java2d.DisposerRecord
{
	@:overload @:public public function new(peer : java.awt.peer.RobotPeer) : Void;
	
	@:overload @:public public function dispose() : Void;
	
	
}
