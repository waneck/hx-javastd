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
extern interface InternalFrameListener extends java.util.EventListener
{
	/**
	* Invoked when a internal frame has been opened.
	* @see javax.swing.JInternalFrame#show
	*/
	@:overload public function internalFrameOpened(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame is in the process of being closed.
	* The close operation can be overridden at this point.
	* @see javax.swing.JInternalFrame#setDefaultCloseOperation
	*/
	@:overload public function internalFrameClosing(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame has been closed.
	* @see javax.swing.JInternalFrame#setClosed
	*/
	@:overload public function internalFrameClosed(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame is iconified.
	* @see javax.swing.JInternalFrame#setIcon
	*/
	@:overload public function internalFrameIconified(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame is de-iconified.
	* @see javax.swing.JInternalFrame#setIcon
	*/
	@:overload public function internalFrameDeiconified(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame is activated.
	* @see javax.swing.JInternalFrame#setSelected
	*/
	@:overload public function internalFrameActivated(e : javax.swing.event.InternalFrameEvent) : Void;
	
	/**
	* Invoked when an internal frame is de-activated.
	* @see javax.swing.JInternalFrame#setSelected
	*/
	@:overload public function internalFrameDeactivated(e : javax.swing.event.InternalFrameEvent) : Void;
	
	
}
