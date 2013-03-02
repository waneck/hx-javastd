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
* This class represent focus holder window implementation. When toplevel requests or receives focus
* it instead sets focus to this proxy. This proxy is mapped but invisible(it is kept at (-1,-1))
* and therefore X doesn't control focus after we have set it to proxy.
*/
extern class XFocusProxyWindow extends sun.awt.X11.XBaseWindow
{
	@:overload public function new(owner : sun.awt.X11.XWindowPeer) : Void;
	
	@:overload public function postInit(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	@:overload override private function getWMName() : String;
	
	@:overload private function getWMClass() : java.NativeArray<String>;
	
	@:overload public function getOwner() : sun.awt.X11.XWindowPeer;
	
	@:overload override public function dispatchEvent(ev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleFocusEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleKeyPress(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleKeyRelease(xev : sun.awt.X11.XEvent) : Void;
	
	
}
