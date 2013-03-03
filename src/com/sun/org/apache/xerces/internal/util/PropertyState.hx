package com.sun.org.apache.xerces.internal.util;
/*
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
/*
* Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
*/
/*
* $Id: PropertyState.java 3024 2011-03-01 03:46:13Z joehw $
*/
extern class PropertyState
{
	@:public @:final public var status(default, null) : com.sun.org.apache.xerces.internal.util.Status;
	
	@:public @:final public var state(default, null) : Dynamic;
	
	@:public @:static @:final public static var UNKNOWN(default, null) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	@:public @:static @:final public static var RECOGNIZED(default, null) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	@:public @:static @:final public static var NOT_SUPPORTED(default, null) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	@:public @:static @:final public static var NOT_RECOGNIZED(default, null) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	@:public @:static @:final public static var NOT_ALLOWED(default, null) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	@:overload @:public public function new(status : com.sun.org.apache.xerces.internal.util.Status, state : Dynamic) : Void;
	
	@:overload @:public @:static public static function of(status : com.sun.org.apache.xerces.internal.util.Status) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	@:overload @:public @:static public static function is(value : Dynamic) : com.sun.org.apache.xerces.internal.util.PropertyState;
	
	@:overload @:public public function isExceptional() : Bool;
	
	
}
