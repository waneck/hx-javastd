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
* A typesafe enumeration for describing data alignment semantics
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class Alignment
{
	@:overload @:abstract private function align(s : String, width : Int) : String;
	
	/**
	* Alignment representing a Centered alignment
	*/
	public static var CENTER(default, null) : sun.tools.jstat.Alignment;
	
	/**
	* Alignment representing a Left alignment
	*/
	public static var LEFT(default, null) : sun.tools.jstat.Alignment;
	
	/**
	* Alignment representing a Right alignment
	*/
	public static var RIGHT(default, null) : sun.tools.jstat.Alignment;
	
	/**
	* Maps a string value to its corresponding Alignment object.
	*
	* @param   s  an string to match against Alignment objects.
	* @return     The Alignment object matching the given string.
	*/
	@:overload public static function toAlignment(s : String) : sun.tools.jstat.Alignment;
	
	/**
	* Returns an enumeration of the keys for this enumerated type
	*
	* @return     Set of Key Words for this enumeration.
	*/
	@:overload public static function keySet() : java.util.Set<Dynamic>;
	
	@:overload public function toString() : String;
	
	
}
