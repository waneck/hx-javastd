package java.awt;
/*
* Copyright (c) 1995, 2003, Oracle and/or its affiliates. All rights reserved.
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
* An <code>Insets</code> object is a representation of the borders
* of a container. It specifies the space that a container must leave
* at each of its edges. The space can be a border, a blank space, or
* a title.
*
* @author      Arthur van Hoff
* @author      Sami Shaio
* @see         java.awt.LayoutManager
* @see         java.awt.Container
* @since       JDK1.0
*/
@:require(java0) extern class Insets implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* The inset from the top.
	* This value is added to the Top of the rectangle
	* to yield a new location for the Top.
	*
	* @serial
	* @see #clone()
	*/
	@:public public var top : Int;
	
	/**
	* The inset from the left.
	* This value is added to the Left of the rectangle
	* to yield a new location for the Left edge.
	*
	* @serial
	* @see #clone()
	*/
	@:public public var left : Int;
	
	/**
	* The inset from the bottom.
	* This value is subtracted from the Bottom of the rectangle
	* to yield a new location for the Bottom.
	*
	* @serial
	* @see #clone()
	*/
	@:public public var bottom : Int;
	
	/**
	* The inset from the right.
	* This value is subtracted from the Right of the rectangle
	* to yield a new location for the Right edge.
	*
	* @serial
	* @see #clone()
	*/
	@:public public var right : Int;
	
	/**
	* Creates and initializes a new <code>Insets</code> object with the
	* specified top, left, bottom, and right insets.
	* @param       top   the inset from the top.
	* @param       left   the inset from the left.
	* @param       bottom   the inset from the bottom.
	* @param       right   the inset from the right.
	*/
	@:overload @:public public function new(top : Int, left : Int, bottom : Int, right : Int) : Void;
	
	/**
	* Set top, left, bottom, and right to the specified values
	*
	* @param       top   the inset from the top.
	* @param       left   the inset from the left.
	* @param       bottom   the inset from the bottom.
	* @param       right   the inset from the right.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function set(top : Int, left : Int, bottom : Int, right : Int) : Void;
	
	/**
	* Checks whether two insets objects are equal. Two instances
	* of <code>Insets</code> are equal if the four integer values
	* of the fields <code>top</code>, <code>left</code>,
	* <code>bottom</code>, and <code>right</code> are all equal.
	* @return      <code>true</code> if the two insets are equal;
	*                          otherwise <code>false</code>.
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code for this Insets.
	*
	* @return    a hash code for this Insets.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a string representation of this <code>Insets</code> object.
	* This method is intended to be used only for debugging purposes, and
	* the content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return  a string representation of this <code>Insets</code> object.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Create a copy of this object.
	* @return     a copy of this <code>Insets</code> object.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
