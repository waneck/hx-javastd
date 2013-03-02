package java.awt;
/*
* Copyright (c) 1996, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class MenuShortcut implements java.io.Serializable
{
	/**
	* Constructs a new MenuShortcut for the specified virtual keycode.
	* @param key the raw keycode for this MenuShortcut, as would be returned
	* in the keyCode field of a {@link java.awt.event.KeyEvent KeyEvent} if
	* this key were pressed.
	* @see java.awt.event.KeyEvent
	**/
	@:overload public function new(key : Int) : Void;
	
	/**
	* Constructs a new MenuShortcut for the specified virtual keycode.
	* @param key the raw keycode for this MenuShortcut, as would be returned
	* in the keyCode field of a {@link java.awt.event.KeyEvent KeyEvent} if
	* this key were pressed.
	* @param useShiftModifier indicates whether this MenuShortcut is invoked
	* with the SHIFT key down.
	* @see java.awt.event.KeyEvent
	**/
	@:overload public function new(key : Int, useShiftModifier : Bool) : Void;
	
	/**
	* Returns the raw keycode of this MenuShortcut.
	* @return the raw keycode of this MenuShortcut.
	* @see java.awt.event.KeyEvent
	* @since JDK1.1
	*/
	@:require(java1) @:overload public function getKey() : Int;
	
	/**
	* Returns whether this MenuShortcut must be invoked using the SHIFT key.
	* @return <code>true</code> if this MenuShortcut must be invoked using the
	* SHIFT key, <code>false</code> otherwise.
	* @since JDK1.1
	*/
	@:require(java1) @:overload public function usesShiftModifier() : Bool;
	
	/**
	* Returns whether this MenuShortcut is the same as another:
	* equality is defined to mean that both MenuShortcuts use the same key
	* and both either use or don't use the SHIFT key.
	* @param s the MenuShortcut to compare with this.
	* @return <code>true</code> if this MenuShortcut is the same as another,
	* <code>false</code> otherwise.
	* @since JDK1.1
	*/
	@:require(java1) @:overload public function equals(s : java.awt.MenuShortcut) : Bool;
	
	/**
	* Returns whether this MenuShortcut is the same as another:
	* equality is defined to mean that both MenuShortcuts use the same key
	* and both either use or don't use the SHIFT key.
	* @param obj the Object to compare with this.
	* @return <code>true</code> if this MenuShortcut is the same as another,
	* <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hashcode for this MenuShortcut.
	* @return the hashcode for this MenuShortcut.
	* @since 1.2
	*/
	@:require(java2) @:overload public function hashCode() : Int;
	
	/**
	* Returns an internationalized description of the MenuShortcut.
	* @return a string representation of this MenuShortcut.
	* @since JDK1.1
	*/
	@:require(java1) @:overload public function toString() : String;
	
	/**
	* Returns the parameter string representing the state of this
	* MenuShortcut. This string is useful for debugging.
	* @return    the parameter string of this MenuShortcut.
	* @since JDK1.1
	*/
	@:require(java1) @:overload private function paramString() : String;
	
	
}
