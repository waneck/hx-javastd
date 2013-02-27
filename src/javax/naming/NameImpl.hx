package javax.naming;
/*
* Copyright (c) 1999, 2002, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class NameImpl
{
	@:overload public function toString() : String;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Compares obj to this NameImpl to determine ordering.
	* Takes into account syntactic properties such as
	* elimination of blanks, case-ignore, etc, if relevant.
	*
	* Note: using syntax of this NameImpl and ignoring
	* that of comparison target.
	*/
	@:overload public function compareTo(obj : NameImpl) : Int;
	
	@:overload public function size() : Int;
	
	@:overload public function getAll() : java.util.Enumeration<Dynamic>;
	
	@:overload public function get(posn : Int) : String;
	
	@:overload public function getPrefix(posn : Int) : java.util.Enumeration<Dynamic>;
	
	@:overload public function getSuffix(posn : Int) : java.util.Enumeration<Dynamic>;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function startsWith(posn : Int, prefix : java.util.Enumeration<Dynamic>) : Bool;
	
	@:overload public function endsWith(posn : Int, suffix : java.util.Enumeration<Dynamic>) : Bool;
	
	@:overload public function addAll(comps : java.util.Enumeration<Dynamic>) : Bool;
	
	@:overload public function addAll(posn : Int, comps : java.util.Enumeration<Dynamic>) : Bool;
	
	@:overload public function add(comp : String) : Void;
	
	@:overload public function add(posn : Int, comp : String) : Void;
	
	@:overload public function remove(posn : Int) : Dynamic;
	
	@:overload public function hashCode() : Int;
	
	
}
@:internal extern class NameImplEnumerator implements java.util.Enumeration<Dynamic>
{
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : Dynamic;
	
	
}
