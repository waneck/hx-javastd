package sun.awt.X11;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XFramePeer extends sun.awt.X11.XDecoratedPeer implements java.awt.peer.FramePeer
{
	@:overload public function setMenuBar(mb : java.awt.MenuBar) : Void;
	
	@:overload public function setMaximizedBounds(b : java.awt.Rectangle) : Void;
	
	@:overload public function getState() : Int;
	
	@:overload public function setState(newState : Int) : Void;
	
	@:overload override public function handlePropertyNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleStateChange(oldState : Int, newState : Int) : Void;
	
	@:overload override public function setVisible(vis : Bool) : Void;
	
	@:overload override public function dispose() : Void;
	
	/*
	* Print the native component by rendering the Motif look ourselves.
	* We also explicitly print the MenuBar since a MenuBar isn't a subclass
	* of Component (and thus it has no "print" method which gets called by
	* default).
	*/
	@:overload override public function print(g : java.awt.Graphics) : Void;
	
	@:overload public function setBoundsPrivate(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function getBoundsPrivate() : java.awt.Rectangle;
	
	
}
