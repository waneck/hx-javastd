package com.sun.beans.finder;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
* This class is designed to be a key of a cache
* of constructors or methods.
*
* @since 1.7
*
* @author Sergey A. Malenkov
*/
@:require(java7) @:internal extern class Signature
{
	/**
	* Indicates whether some other object is "equal to" this one.
	*
	* @param object  the reference object with which to compare
	* @return {@code true} if this object is the same as the
	*         {@code object} argument, {@code false} otherwise
	* @see #hashCode()
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for the object.
	* This method is supported for the benefit of hashtables
	* such as {@link java.util.HashMap} or {@link java.util.HashSet}.
	* Hash code computed using algorithm
	* suggested in Effective Java, Item 8.
	*
	* @return a hash code value for this object
	* @see #equals(Object)
	*/
	@:overload public function hashCode() : Int;
	
	
}
