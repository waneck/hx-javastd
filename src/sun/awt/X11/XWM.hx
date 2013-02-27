package sun.awt.X11;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Ported from awt_wm.c, SCCS v1.11, author Valeriy Ushakov
* Author: Denis Mikhalkin
*/
@:internal extern class XWM
{
	@:overload public function toString() : String;
	
	/*
	* @return if WM implements the insets property - returns insets with values
	* specified in that property, null otherwise.
	*/
	@:overload public static function getInsetsFromExtents(window : haxe.Int64) : java.awt.Insets;
	
	/**
	* Helper function reads property of type CARDINAL[4] = { left, right, top, bottom }
	* and converts it to Insets object.
	*/
	@:overload public static function getInsetsFromProp(window : haxe.Int64, atom : sun.awt.X11.XAtom) : java.awt.Insets;
	
	/**
	* Asks WM to fill Frame Extents (insets) for the window.
	*/
	@:overload public static function requestWMExtents(window : haxe.Int64) : Void;
	
	@:overload public function getNETProtocol() : sun.awt.X11.XNETProtocol;
	
	/**
	* Sets _NET_WN_ICON property on the window using the arrays of
	* raster-data for icons. If icons is null, removes _NET_WM_ICON
	* property.
	* This method invokes XNETProtocol.setWMIcon() for WMs that
	* support NET protocol.
	*
	* @return true if hint was modified successfully, false otherwise
	*/
	@:overload public function setNetWMIcon(window : sun.awt.X11.XWindowPeer, icons : java.util.List<sun.awt.X11.XIconInfo>) : Bool;
	
	
}
