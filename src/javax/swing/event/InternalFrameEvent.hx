package javax.swing.event;
/*
* Copyright (c) 1998, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class InternalFrameEvent extends java.awt.AWTEvent
{
	/**
	* The first number in the range of IDs used for internal frame events.
	*/
	public static var INTERNAL_FRAME_FIRST(default, null) : Int;
	
	/**
	* The last number in the range of IDs used for internal frame events.
	*/
	public static var INTERNAL_FRAME_LAST(default, null) : Int;
	
	/**
	* The "window opened" event.  This event is delivered only
	* the first time the internal frame is made visible.
	*
	* @see JInternalFrame#show
	*/
	public static var INTERNAL_FRAME_OPENED(default, null) : Int;
	
	/**
	* The "window is closing" event. This event is delivered when
	* the user attempts to close the internal frame, such as by
	* clicking the internal frame's close button,
	* or when a program attempts to close the internal frame
	* by invoking the <code>setClosed</code> method.
	*
	* @see JInternalFrame#setDefaultCloseOperation
	* @see JInternalFrame#doDefaultCloseAction
	* @see JInternalFrame#setClosed
	*/
	public static var INTERNAL_FRAME_CLOSING(default, null) : Int;
	
	/**
	* The "window closed" event. This event is delivered after
	* the internal frame has been closed as the result of a call to
	* the <code>setClosed</code> or
	* <code>dispose</code> method.
	*
	* @see JInternalFrame#setClosed
	* @see JInternalFrame#dispose
	*/
	public static var INTERNAL_FRAME_CLOSED(default, null) : Int;
	
	/**
	* The "window iconified" event.
	* This event indicates that the internal frame
	* was shrunk down to a small icon.
	*
	* @see JInternalFrame#setIcon
	*/
	public static var INTERNAL_FRAME_ICONIFIED(default, null) : Int;
	
	/**
	* The "window deiconified" event type. This event indicates that the
	* internal frame has been restored to its normal size.
	*
	* @see JInternalFrame#setIcon
	*/
	public static var INTERNAL_FRAME_DEICONIFIED(default, null) : Int;
	
	/**
	* The "window activated" event type. This event indicates that keystrokes
	* and mouse clicks are directed towards this internal frame.
	*
	* @see JInternalFrame#show
	* @see JInternalFrame#setSelected
	*/
	public static var INTERNAL_FRAME_ACTIVATED(default, null) : Int;
	
	/**
	* The "window deactivated" event type. This event indicates that keystrokes
	* and mouse clicks are no longer directed to the internal frame.
	*
	* @see JInternalFrame#setSelected
	*/
	public static var INTERNAL_FRAME_DEACTIVATED(default, null) : Int;
	
	/**
	* Constructs an <code>InternalFrameEvent</code> object.
	* @param source the <code>JInternalFrame</code> object that originated the event
	* @param id     an integer indicating the type of event
	*/
	@:overload public function new(source : javax.swing.JInternalFrame, id : Int) : Void;
	
	/**
	* Returns a parameter string identifying this event.
	* This method is useful for event logging and for debugging.
	*
	* @return a string identifying the event and its attributes
	*/
	@:overload override public function paramString() : String;
	
	/**
	* Returns the originator of the event.
	*
	* @return the <code>JInternalFrame</code> object that originated the event
	* @since 1.3
	*/
	@:require(java3) @:overload public function getInternalFrame() : javax.swing.JInternalFrame;
	
	
}
