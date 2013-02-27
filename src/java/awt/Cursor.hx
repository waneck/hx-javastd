package java.awt;
/*
* Copyright (c) 1996, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class Cursor implements java.io.Serializable
{
	/**
	* The default cursor type (gets set if no cursor is defined).
	*/
	public static var DEFAULT_CURSOR(default, null) : Int;
	
	/**
	* The crosshair cursor type.
	*/
	public static var CROSSHAIR_CURSOR(default, null) : Int;
	
	/**
	* The text cursor type.
	*/
	public static var TEXT_CURSOR(default, null) : Int;
	
	/**
	* The wait cursor type.
	*/
	public static var WAIT_CURSOR(default, null) : Int;
	
	/**
	* The south-west-resize cursor type.
	*/
	public static var SW_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* The south-east-resize cursor type.
	*/
	public static var SE_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* The north-west-resize cursor type.
	*/
	public static var NW_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* The north-east-resize cursor type.
	*/
	public static var NE_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* The north-resize cursor type.
	*/
	public static var N_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* The south-resize cursor type.
	*/
	public static var S_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* The west-resize cursor type.
	*/
	public static var W_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* The east-resize cursor type.
	*/
	public static var E_RESIZE_CURSOR(default, null) : Int;
	
	/**
	* The hand cursor type.
	*/
	public static var HAND_CURSOR(default, null) : Int;
	
	/**
	* The move cursor type.
	*/
	public static var MOVE_CURSOR(default, null) : Int;
	
	/**
	* @deprecated As of JDK version 1.7, the {@link #getPredefinedCursor(int)}
	* method should be used instead.
	*/
	private static var predefined : java.NativeArray<Cursor>;
	
	/**
	* The type associated with all custom cursors.
	*/
	public static var CUSTOM_CURSOR(default, null) : Int;
	
	/**
	* The user-visible name of the cursor.
	*
	* @serial
	* @see #getName()
	*/
	private var name : String;
	
	/**
	* Returns a cursor object with the specified predefined type.
	*
	* @param type the type of predefined cursor
	* @return the specified predefined cursor
	* @throws IllegalArgumentException if the specified cursor type is
	*         invalid
	*/
	@:overload public static function getPredefinedCursor(type : Int) : Cursor;
	
	/**
	* Returns a system-specific custom cursor object matching the
	* specified name.  Cursor names are, for example: "Invalid.16x16"
	*
	* @param name a string describing the desired system-specific custom cursor
	* @return the system specific custom cursor named
	* @exception HeadlessException if
	* <code>GraphicsEnvironment.isHeadless</code> returns true
	*/
	@:overload public static function getSystemCustomCursor(name : String) : Cursor;
	
	/**
	* Return the system default cursor.
	*/
	@:overload public static function getDefaultCursor() : Cursor;
	
	/**
	* Creates a new cursor object with the specified type.
	* @param type the type of cursor
	* @throws IllegalArgumentException if the specified cursor type
	* is invalid
	*/
	@:overload public function new(type : Int) : Void;
	
	/**
	* Creates a new custom cursor object with the specified name.<p>
	* Note:  this constructor should only be used by AWT implementations
	* as part of their support for custom cursors.  Applications should
	* use Toolkit.createCustomCursor().
	* @param name the user-visible name of the cursor.
	* @see java.awt.Toolkit#createCustomCursor
	*/
	@:overload private function new(name : String) : Void;
	
	/**
	* Returns the type for this cursor.
	*/
	@:overload public function getType() : Int;
	
	/**
	* Returns the name of this cursor.
	* @return    a localized description of this cursor.
	* @since     1.2
	*/
	@:require(java2) @:overload public function getName() : String;
	
	/**
	* Returns a string representation of this cursor.
	* @return    a string representation of this cursor.
	* @since     1.2
	*/
	@:require(java2) @:overload public function toString() : String;
	
	
}
@:native('java$awt$Cursor$CursorDisposer') @:internal extern class Cursor_CursorDisposer implements sun.java2d.DisposerRecord
{
	@:overload public function new(pData : haxe.Int64) : Void;
	
	@:overload public function dispose() : Void;
	
	
}
