package com.sun.tools.internal.xjc.util;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Util
{
	/**
	* An easier-to-use version of the System.getProperty method
	* that doesn't throw an exception even if a property cannot be
	* read.
	*/
	@:overload @:public @:static public static function getSystemProperty(name : String) : String;
	
	/**
	* Compares if two {@link Locator}s point to the exact same position.
	*/
	@:overload @:public @:static public static function equals(lhs : org.xml.sax.Locator, rhs : org.xml.sax.Locator) : Bool;
	
	/**
	* Calls the other getSystemProperty method with
	* "[clazz]&#x2E;[name].
	*/
	@:overload @:public @:static public static function getSystemProperty(clazz : Class<Dynamic>, name : String) : String;
	
	
}
