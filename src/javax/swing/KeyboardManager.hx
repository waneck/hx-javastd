package javax.swing;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class KeyboardManager
{
	@:overload @:public @:static public static function getCurrentManager() : javax.swing.KeyboardManager;
	
	@:overload @:public @:static public static function setCurrentManager(km : javax.swing.KeyboardManager) : Void;
	
	/**
	* register keystrokes here which are for the WHEN_IN_FOCUSED_WINDOW
	* case.
	* Other types of keystrokes will be handled by walking the hierarchy
	* That simplifies some potentially hairy stuff.
	*/
	@:overload @:public public function registerKeyStroke(k : javax.swing.KeyStroke, c : javax.swing.JComponent) : Void;
	
	@:overload @:public public function unregisterKeyStroke(ks : javax.swing.KeyStroke, c : javax.swing.JComponent) : Void;
	
	/**
	* This method is called when the focused component (and none of
	* its ancestors) want the key event.  This will look up the keystroke
	* to see if any chidren (or subchildren) of the specified container
	* want a crack at the event.
	* If one of them wants it, then it will "DO-THE-RIGHT-THING"
	*/
	@:overload @:public public function fireKeyboardAction(e : java.awt.event.KeyEvent, pressed : Bool, topAncestor : java.awt.Container) : Bool;
	
	@:overload @:public public function registerMenuBar(mb : javax.swing.JMenuBar) : Void;
	
	@:overload @:public public function unregisterMenuBar(mb : javax.swing.JMenuBar) : Void;
	
	@:overload @:protected private function registerNewTopContainer(topContainer : java.awt.Container) : java.util.Hashtable<Dynamic, Dynamic>;
	
	
}
/**
* This class is used to create keys for a hashtable
* which looks up topContainers based on component, keystroke pairs
* This is used to make unregistering KeyStrokes fast
*/
@:native('javax$swing$KeyboardManager$ComponentKeyStrokePair') @:internal extern class KeyboardManager_ComponentKeyStrokePair
{
	@:overload @:public public function new(comp : Dynamic, key : Dynamic) : Void;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
