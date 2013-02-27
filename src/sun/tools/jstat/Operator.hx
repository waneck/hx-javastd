package sun.tools.jstat;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* A typesafe enumeration for describing mathematical operators.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class Operator
{
	@:overload @:abstract private function eval(x : Float, y : Float) : Float;
	
	/* Operator '+' */
	public static var PLUS(default, null) : Operator;
	
	/* Operator '-' */
	public static var MINUS(default, null) : Operator;
	
	/* Operator '/' */
	public static var DIVIDE(default, null) : Operator;
	
	/* Operator '*' */
	public static var MULTIPLY(default, null) : Operator;
	
	/**
	* Returns the string representation of this Operator object.
	*
	* @return  the string representation of this Operator object
	*/
	@:overload public function toString() : String;
	
	/**
	* Maps a string to its corresponding Operator object.
	*
	* @param   s  an string to match against Operator objects.
	* @return     The Operator object matching the given string.
	*/
	@:overload public static function toOperator(s : String) : Operator;
	
	/**
	* Returns an enumeration of the keys for this enumerated type
	*
	* @param   s  an string to match against Operator objects.
	* @return     The Operator object matching the given string.
	*/
	@:overload private static function keySet() : java.util.Set<Dynamic>;
	
	
}
