package java.awt;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class MouseInfo
{
	/**
	* Returns a <code>PointerInfo</code> instance that represents the current
	* location of the mouse pointer.
	* The <code>GraphicsDevice</code> stored in this <code>PointerInfo</code>
	* contains the mouse pointer. The coordinate system used for the mouse position
	* depends on whether or not the <code>GraphicsDevice</code> is part of a virtual
	* screen device.
	* For virtual screen devices, the coordinates are given in the virtual
	* coordinate system, otherwise they are returned in the coordinate system
	* of the <code>GraphicsDevice</code>. See {@link GraphicsConfiguration}
	* for more information about the virtual screen devices.
	* On systems without a mouse, returns <code>null</code>.
	* <p>
	* If there is a security manager, its <code>checkPermission</code> method
	* is called with an <code>AWTPermission("watchMousePointer")</code>
	* permission before creating and returning a <code>PointerInfo</code>
	* object. This may result in a <code>SecurityException</code>.
	*
	* @exception HeadlessException if GraphicsEnvironment.isHeadless() returns true
	* @exception SecurityException if a security manager exists and its
	*            <code>checkPermission</code> method doesn't allow the operation
	* @see       GraphicsConfiguration
	* @see       SecurityManager#checkPermission
	* @see       java.awt.AWTPermission
	* @return    location of the mouse pointer
	* @since     1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getPointerInfo() : java.awt.PointerInfo;
	
	/**
	* Returns the number of buttons on the mouse.
	* On systems without a mouse, returns <code>-1</code>.
	*
	* @exception HeadlessException if GraphicsEnvironment.isHeadless() returns true
	* @return number of buttons on the mouse
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getNumberOfButtons() : Int;
	
	
}
