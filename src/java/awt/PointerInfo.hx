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
/**
* A class that describes the pointer position.
* It provides the <code>GraphicsDevice</code> where the
* pointer is and the <code>Point</code> that represents
* the coordinates of the pointer.
* <p>
* Instances of this class should be obtained via
* {@link MouseInfo#getPointerInfo}.
* The <code>PointerInfo</code> instance is not updated dynamically
* as the mouse moves. To get the updated location, you must call
* {@link MouseInfo#getPointerInfo} again.
*
* @see MouseInfo#getPointerInfo
* @author      Roman Poborchiy
* @since       1.5
*/
@:require(java5) extern class PointerInfo
{
	/**
	* Returns the <code>GraphicsDevice</code> where the mouse pointer
	* was at the moment this <code>PointerInfo</code> was created.
	*
	* @return   <code>GraphicsDevice</code> corresponding to the pointer
	* @since    1.5
	*/
	@:require(java5) @:overload @:public public function getDevice() : java.awt.GraphicsDevice;
	
	/**
	* Returns the <code>Point</code> that represents the coordinates
	* of the pointer on the screen. See {@link MouseInfo#getPointerInfo}
	* for more information about coordinate calculation for multiscreen
	* systems.
	*
	* @see MouseInfo
	* @see MouseInfo#getPointerInfo
	* @return   coordinates of mouse pointer
	* @since    1.5
	*/
	@:require(java5) @:overload @:public public function getLocation() : java.awt.Point;
	
	
}
