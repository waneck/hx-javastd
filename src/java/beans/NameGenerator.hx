package java.beans;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class NameGenerator
{
	@:overload public function new() : Void;
	
	/**
	* Clears the name cache. Should be called to near the end of
	* the encoding cycle.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Returns the root name of the class.
	*/
	@:overload public static function unqualifiedClassName(type : Class<Dynamic>) : String;
	
	/**
	* Returns a String which capitalizes the first letter of the string.
	*/
	@:overload public static function capitalize(name : String) : String;
	
	/**
	* Returns a unique string which identifies the object instance.
	* Invocations are cached so that if an object has been previously
	* passed into this method then the same identifier is returned.
	*
	* @param instance object used to generate string
	* @return a unique string representing the object
	*/
	@:overload public function instanceName(instance : Dynamic) : String;
	
	
}
