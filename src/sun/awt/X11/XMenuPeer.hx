package sun.awt.X11;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class XMenuPeer extends sun.awt.X11.XMenuItemPeer implements java.awt.peer.MenuPeer
{
	/**
	* Disposes menu window if needed
	*/
	@:overload @:public override public function dispose() : Void;
	
	/**
	* Resets text metrics for this item, for its menu window
	* and for all descendant menu windows
	*/
	@:overload @:public override public function setFont(font : java.awt.Font) : Void;
	
	/**
	* addSeparator routines are not used
	* in peers. Shared code invokes addItem("-")
	* for adding separators
	*/
	@:overload @:public public function addSeparator() : Void;
	
	@:overload @:public public function addItem(item : java.awt.MenuItem) : Void;
	
	@:overload @:public public function delItem(index : Int) : Void;
	
	
}
