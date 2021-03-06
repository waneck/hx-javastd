package javax.swing.event;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
* An abstract adapter class for receiving internal frame events.
* The methods in this class are empty. This class exists as
* convenience for creating listener objects, and is functionally
* equivalent to the WindowAdapter class in the AWT.
* <p>
* See <a href="http://java.sun.com/docs/books/tutorial/uiswing/events/internalframelistener.html">How to Write an Internal Frame Listener</a>
* in <em>The Java Tutorial</em>
*
* @see InternalFrameEvent
* @see InternalFrameListener
* @see java.awt.event.WindowListener
*
* @author Thomas Ball
*/
extern class InternalFrameAdapter implements javax.swing.event.InternalFrameListener
{
	/**
	* Invoked when an internal frame has been opened.
	*/
	@:overload @:public public function internalFrameOpened(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame is in the process of being closed.
	* The close operation can be overridden at this point.
	*/
	@:overload @:public public function internalFrameClosing(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame has been closed.
	*/
	@:overload @:public public function internalFrameClosed(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame is iconified.
	*/
	@:overload @:public public function internalFrameIconified(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame is de-iconified.
	*/
	@:overload @:public public function internalFrameDeiconified(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame is activated.
	*/
	@:overload @:public public function internalFrameActivated(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame is de-activated.
	*/
	@:overload @:public public function internalFrameDeactivated(e : javax.swing.event.InternalFrameEvent) : Void;
	
	
}
