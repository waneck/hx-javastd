package com.sun.xml.internal.fastinfoset.util;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class ValueArray
{
	@:public @:static @:final public static var DEFAULT_CAPACITY(default, null) : Int;
	
	@:public @:static @:final public static var MAXIMUM_CAPACITY(default, null) : Int;
	
	@:protected private var _size : Int;
	
	@:protected private var _readOnlyArraySize : Int;
	
	@:protected private var _maximumCapacity : Int;
	
	@:overload @:public public function getSize() : Int;
	
	@:overload @:public public function getMaximumCapacity() : Int;
	
	@:overload @:public public function setMaximumCapacity(maximumCapacity : Int) : Void;
	
	@:overload @:public @:abstract public function setReadOnlyArray(array : com.sun.xml.internal.fastinfoset.util.ValueArray, clear : Bool) : Void;
	
	@:overload @:public @:abstract public function clear() : Void;
	
	
}
