package javax.swing.event;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ListDataEvent extends java.util.EventObject
{
	/** Identifies one or more changes in the lists contents. */
	@:public @:static @:final public static var CONTENTS_CHANGED(default, null) : Int;
	
	/** Identifies the addition of one or more contiguous items to the list */
	@:public @:static @:final public static var INTERVAL_ADDED(default, null) : Int;
	
	/** Identifies the removal of one or more contiguous items from the list */
	@:public @:static @:final public static var INTERVAL_REMOVED(default, null) : Int;
	
	/**
	* Returns the event type. The possible values are:
	* <ul>
	* <li> {@link #CONTENTS_CHANGED}
	* <li> {@link #INTERVAL_ADDED}
	* <li> {@link #INTERVAL_REMOVED}
	* </ul>
	*
	* @return an int representing the type value
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Returns the lower index of the range. For a single
	* element, this value is the same as that returned by {@link #getIndex1}.

	*
	* @return an int representing the lower index value
	*/
	@:overload @:public public function getIndex0() : Int;
	
	/**
	* Returns the upper index of the range. For a single
	* element, this value is the same as that returned by {@link #getIndex0}.
	*
	* @return an int representing the upper index value
	*/
	@:overload @:public public function getIndex1() : Int;
	
	/**
	* Constructs a ListDataEvent object. If index0 is >
	* index1, index0 and index1 will be swapped such that
	* index0 will always be <= index1.
	*
	* @param source  the source Object (typically <code>this</code>)
	* @param type    an int specifying {@link #CONTENTS_CHANGED},
	*                {@link #INTERVAL_ADDED}, or {@link #INTERVAL_REMOVED}
	* @param index0  one end of the new interval
	* @param index1  the other end of the new interval
	*/
	@:overload @:public public function new(source : Dynamic, type : Int, index0 : Int, index1 : Int) : Void;
	
	/**
	* Returns a string representation of this ListDataEvent. This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @since 1.4
	* @return  a string representation of this ListDataEvent.
	*/
	@:require(java4) @:overload @:public override public function toString() : String;
	
	
}
