package com.sun.xml.internal.xsom.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class TypeSet
{
	/**
	* Return true if this TypeSet contains the specified type.
	*
	* Concrete implementations of this method determine what it
	* means for the TypeSet to "contain" a type.
	*
	* @param type the type
	* @return true iff this TypeSet contains the specified type
	*/
	@:overload @:public @:abstract public function contains(type : com.sun.xml.internal.xsom.XSType) : Bool;
	
	/**
	* Calculate the TypeSet formed by the intersection of two
	* other TypeSet objects.
	*
	* @param a a TypeSet
	* @param b another TypeSet
	* @return the intersection of a and b
	*/
	@:overload @:public @:static public static function intersection(a : com.sun.xml.internal.xsom.util.TypeSet, b : com.sun.xml.internal.xsom.util.TypeSet) : com.sun.xml.internal.xsom.util.TypeSet;
	
	/**
	* Calculate the TypeSet formed by the union of two
	* other TypeSet objects.
	*
	* @param a a TypeSet
	* @param b another TypeSet
	* @return the union of a and b
	*/
	@:overload @:public @:static public static function union(a : com.sun.xml.internal.xsom.util.TypeSet, b : com.sun.xml.internal.xsom.util.TypeSet) : com.sun.xml.internal.xsom.util.TypeSet;
	
	
}
