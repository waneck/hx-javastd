package java.awt.peer;
/*
* Copyright (c) 1995, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern interface WindowPeer extends java.awt.peer.ContainerPeer
{
	/**
	* Makes this window the topmost window on the desktop.
	*
	* @see Window#toFront()
	*/
	@:overload public function toFront() : Void;
	
	/**
	* Makes this window the bottommost window on the desktop.
	*
	* @see Window#toBack()
	*/
	@:overload public function toBack() : Void;
	
	/**
	* Sets if the window should always stay on top of all other windows or
	* not.
	*
	* @param alwaysOnTop if the window should always stay on top of all other
	*        windows or not
	*
	* @see Window#setAlwaysOnTop(boolean)
	*/
	@:overload public function setAlwaysOnTop(alwaysOnTop : Bool) : Void;
	
	/**
	* Updates the window's focusable state.
	*
	* @see Window#setFocusableWindowState(boolean)
	*/
	@:overload public function updateFocusableWindowState() : Void;
	
	/**
	* Sets if this window is blocked by a modal dialog or not.
	*
	* @param blocker the blocking modal dialog
	* @param blocked {@code true} to block the window, {@code false}
	*        to unblock it
	*/
	@:overload public function setModalBlocked(blocker : java.awt.Dialog, blocked : Bool) : Void;
	
	/**
	* Updates the minimum size on the peer.
	*
	* @see Window#setMinimumSize(Dimension)
	*/
	@:overload public function updateMinimumSize() : Void;
	
	/**
	* Updates the icons for the window.
	*
	* @see Window#setIconImages(java.util.List)
	*/
	@:overload public function updateIconImages() : Void;
	
	/**
	* Sets the level of opacity for the window.
	*
	* @see Window#setOpacity(float)
	*/
	@:overload public function setOpacity(opacity : Single) : Void;
	
	/**
	* Enables the per-pixel alpha support for the window.
	*
	* @see Window#setBackground(Color)
	*/
	@:overload public function setOpaque(isOpaque : Bool) : Void;
	
	/**
	* Updates the native part of non-opaque window.
	*
	* @see Window#setBackground(Color)
	*/
	@:overload public function updateWindow() : Void;
	
	/**
	* Instructs the peer to update the position of the security warning.
	*/
	@:overload public function repositionSecurityWarning() : Void;
	
	
}
