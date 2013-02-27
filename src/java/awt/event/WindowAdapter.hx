package java.awt.event;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
* An abstract adapter class for receiving window events.
* The methods in this class are empty. This class exists as
* convenience for creating listener objects.
* <P>
* Extend this class to create a <code>WindowEvent</code> listener
* and override the methods for the events of interest. (If you implement the
* <code>WindowListener</code> interface, you have to define all of
* the methods in it. This abstract class defines null methods for them
* all, so you can only have to define methods for events you care about.)
* <P>
* Create a listener object using the extended class and then register it with
* a Window using the window's <code>addWindowListener</code>
* method. When the window's status changes by virtue of being opened,
* closed, activated or deactivated, iconified or deiconified,
* the relevant method in the listener
* object is invoked, and the <code>WindowEvent</code> is passed to it.
*
* @see WindowEvent
* @see WindowListener
* @see <a href="http://java.sun.com/docs/books/tutorial/post1.0/ui/windowlistener.html">Tutorial: Writing a Window Listener</a>
*
* @author Carl Quinn
* @author Amy Fowler
* @author David Mendenhall
* @since 1.1
*/
@:require(java1) extern class WindowAdapter implements java.awt.event.WindowListener implements java.awt.event.WindowStateListener implements java.awt.event.WindowFocusListener
{
	/**
	* Invoked when a window has been opened.
	*/
	@:overload public function windowOpened(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Invoked when a window is in the process of being closed.
	* The close operation can be overridden at this point.
	*/
	@:overload public function windowClosing(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Invoked when a window has been closed.
	*/
	@:overload public function windowClosed(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Invoked when a window is iconified.
	*/
	@:overload public function windowIconified(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Invoked when a window is de-iconified.
	*/
	@:overload public function windowDeiconified(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Invoked when a window is activated.
	*/
	@:overload public function windowActivated(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Invoked when a window is de-activated.
	*/
	@:overload public function windowDeactivated(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Invoked when a window state is changed.
	* @since 1.4
	*/
	@:require(java4) @:overload public function windowStateChanged(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Invoked when the Window is set to be the focused Window, which means
	* that the Window, or one of its subcomponents, will receive keyboard
	* events.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function windowGainedFocus(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Invoked when the Window is no longer the focused Window, which means
	* that keyboard events will no longer be delivered to the Window or any of
	* its subcomponents.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function windowLostFocus(e : java.awt.event.WindowEvent) : Void;
	
	
}
