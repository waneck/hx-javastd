package javax.swing.text;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class TabStop implements java.io.Serializable
{
	/** Character following tab is positioned at location. */
	@:public @:static @:final public static var ALIGN_LEFT(default, null) : Int;
	
	/** Characters following tab are positioned such that all following
	* characters up to next tab/newline end at location. */
	@:public @:static @:final public static var ALIGN_RIGHT(default, null) : Int;
	
	/** Characters following tab are positioned such that all following
	* characters up to next tab/newline are centered around the tabs
	* location. */
	@:public @:static @:final public static var ALIGN_CENTER(default, null) : Int;
	
	/** Characters following tab are aligned such that next
	* decimal/tab/newline is at the tab location, very similar to
	* RIGHT_TAB, just includes decimal as additional character to look for.
	*/
	@:public @:static @:final public static var ALIGN_DECIMAL(default, null) : Int;
	
	@:public @:static @:final public static var ALIGN_BAR(default, null) : Int;
	
	/* Bar tabs (whatever they are) are actually a separate kind of tab
	in the RTF spec. However, being a bar tab and having alignment
	properties are mutually exclusive, so the reader treats barness
	as being a kind of alignment. */
	@:public @:static @:final public static var LEAD_NONE(default, null) : Int;
	
	@:public @:static @:final public static var LEAD_DOTS(default, null) : Int;
	
	@:public @:static @:final public static var LEAD_HYPHENS(default, null) : Int;
	
	@:public @:static @:final public static var LEAD_UNDERLINE(default, null) : Int;
	
	@:public @:static @:final public static var LEAD_THICKLINE(default, null) : Int;
	
	@:public @:static @:final public static var LEAD_EQUALS(default, null) : Int;
	
	/**
	* Creates a tab at position <code>pos</code> with a default alignment
	* and default leader.
	*/
	@:overload @:public public function new(pos : Single) : Void;
	
	/**
	* Creates a tab with the specified position <code>pos</code>,
	* alignment <code>align</code> and leader <code>leader</code>.
	*/
	@:overload @:public public function new(pos : Single, align : Int, leader : Int) : Void;
	
	/**
	* Returns the position, as a float, of the tab.
	* @return the position of the tab
	*/
	@:overload @:public public function getPosition() : Single;
	
	/**
	* Returns the alignment, as an integer, of the tab.
	* @return the alignment of the tab
	*/
	@:overload @:public public function getAlignment() : Int;
	
	/**
	* Returns the leader of the tab.
	* @return the leader of the tab
	*/
	@:overload @:public public function getLeader() : Int;
	
	/**
	* Returns true if the tabs are equal.
	* @return true if the tabs are equal, otherwise false
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns the hashCode for the object.  This must be defined
	* here to ensure 100% pure.
	*
	* @return the hashCode for the object
	*/
	@:overload @:public public function hashCode() : Int;
	
	/* This is for debugging; perhaps it should be removed before release */
	@:overload @:public public function toString() : String;
	
	
}
