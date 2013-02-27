package sun.misc;
/*
* Copyright (c) 2002, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class ASCIICaseInsensitiveComparator implements java.util.Comparator<String>
{
	/** Implements a locale and case insensitive comparator suitable for
	strings that are known to only contain ASCII characters. Some
	tables internal to the JDK contain only ASCII data and are using
	the "generalized" java.lang.String case-insensitive comparator
	which converts each character to both upper and lower case. */
	public static var CASE_INSENSITIVE_ORDER(default, null) : java.util.Comparator<String>;
	
	@:overload public function compare(s1 : String, s2 : String) : Int;
	
	/**
	* A case insensitive hash code method to go with the case insensitive
	* compare() method.
	*
	* Returns a hash code for this ASCII string as if it were lower case.
	*
	* returns same answer as:<p>
	* <code>s.toLowerCase(Locale.US).hashCode();</code><p>
	* but does not allocate memory (it does NOT have the special
	* case Turkish rules).
	*
	* @param s a String to compute the hashcode on.
	* @return  a hash code value for this object.
	*/
	@:overload public static function lowerCaseHashCode(s : String) : Int;
	
	
}
