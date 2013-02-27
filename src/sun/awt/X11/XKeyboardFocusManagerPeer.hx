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
extern class XKeyboardFocusManagerPeer extends sun.awt.KeyboardFocusManagerPeerImpl
{
	@:overload override public function setCurrentFocusOwner(comp : java.awt.Component) : Void;
	
	@:overload override public function getCurrentFocusOwner() : java.awt.Component;
	
	@:overload override public function getCurrentFocusedWindow() : java.awt.Window;
	
	@:overload public static function setCurrentNativeFocusOwner(comp : java.awt.Component) : Void;
	
	@:overload public static function getCurrentNativeFocusOwner() : java.awt.Component;
	
	@:overload public static function setCurrentNativeFocusedWindow(win : java.awt.Window) : Void;
	
	@:overload public static function getCurrentNativeFocusedWindow() : java.awt.Window;
	
	@:native('deliverFocus') @:overload public static function _deliverFocus(lightweightChild : java.awt.Component, target : java.awt.Component, temporary : Bool, focusedWindowChangeAllowed : Bool, time : haxe.Int64, cause : sun.awt.CausedFocusEvent.CausedFocusEvent_Cause) : Bool;
	
	
}
