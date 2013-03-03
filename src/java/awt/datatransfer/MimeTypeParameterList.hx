package java.awt.datatransfer;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MimeTypeParameterList implements java.lang.Cloneable
{
	/**
	* Default constructor.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(rawdata : String) : Void;
	
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Two parameter lists are considered equal if they have exactly
	* the same set of parameter names and associated values. The
	* order of the parameters is not considered.
	*/
	@:overload @:public public function equals(thatObject : Dynamic) : Bool;
	
	/**
	* A routine for parsing the parameter list out of a String.
	*/
	@:overload @:protected private function parse(rawdata : String) : Void;
	
	/**
	* return the number of name-value pairs in this list.
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Determine whether or not this list is empty.
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	/**
	* Retrieve the value associated with the given name, or null if there
	* is no current association.
	*/
	@:overload @:public public function get(name : String) : String;
	
	/**
	* Set the value to be associated with the given name, replacing
	* any previous association.
	*/
	@:overload @:public public function set(name : String, value : String) : Void;
	
	/**
	* Remove any value associated with the given name.
	*/
	@:overload @:public public function remove(name : String) : Void;
	
	/**
	* Retrieve an enumeration of all the names in this list.
	*/
	@:overload @:public public function getNames() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function toString() : String;
	
	/**
	* @return a clone of this object
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
