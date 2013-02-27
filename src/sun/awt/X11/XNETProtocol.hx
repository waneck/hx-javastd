package sun.awt.X11;
/*
* Copyright (c) 2003, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XNETProtocol extends sun.awt.X11.XProtocol implements sun.awt.X11.XStateProtocol implements sun.awt.X11.XLayerProtocol
{
	/**
	* XStateProtocol
	*/
	@:overload public function supportsState(state : Int) : Bool;
	
	@:overload public function setState(window : sun.awt.X11.XWindowPeer, state : Int) : Void;
	
	@:overload public function getState(window : sun.awt.X11.XWindowPeer) : Int;
	
	@:overload public function isStateChange(e : sun.awt.X11.XPropertyEvent) : Bool;
	
	/*
	* Work around for 4775545.
	*/
	@:overload public function unshadeKludge(window : sun.awt.X11.XWindowPeer) : Void;
	
	/**
	* XLayerProtocol
	*/
	@:overload public function supportsLayer(layer : Int) : Bool;
	
	@:overload public function requestState(window : sun.awt.X11.XWindow, state : sun.awt.X11.XAtom, isAdd : Bool) : Void;
	
	@:overload public function setLayer(window : sun.awt.X11.XWindowPeer, layer : Int) : Void;
	
	public var XA_NET_WM_WINDOW_TYPE(default, null) : sun.awt.X11.XAtom;
	
	public var XA_NET_WM_WINDOW_TYPE_NORMAL(default, null) : sun.awt.X11.XAtom;
	
	public var XA_NET_WM_WINDOW_TYPE_DIALOG(default, null) : sun.awt.X11.XAtom;
	
	public var XA_NET_WM_WINDOW_TYPE_UTILITY(default, null) : sun.awt.X11.XAtom;
	
	public var XA_NET_WM_WINDOW_TYPE_POPUP_MENU(default, null) : sun.awt.X11.XAtom;
	
	@:overload public function getWMName() : String;
	
	/**
	* Sets _NET_WM_ICON property on the window using the List of XIconInfo
	* If icons is null or empty list, removes _NET_WM_ICON property
	*/
	@:overload public function setWMIcons(window : sun.awt.X11.XWindowPeer, icons : java.util.List<sun.awt.X11.XIconInfo>) : Void;
	
	@:overload public function isWMStateNetHidden(window : sun.awt.X11.XWindowPeer) : Bool;
	
	
}
