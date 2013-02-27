package javax.activation;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class MimeTypeParameterList
{
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new MimeTypeParameterList with the passed in data.
	*
	* @param parameterList an RFC 2045, 2046 compliant parameter list.
	*/
	@:overload public function new(parameterList : String) : Void;
	
	/**
	* A routine for parsing the parameter list out of a String.
	*
	* @param parameterList an RFC 2045, 2046 compliant parameter list.
	*/
	@:overload private function parse(parameterList : String) : Void;
	
	/**
	* Return the number of name-value pairs in this list.
	*
	* @return  the number of parameters
	*/
	@:overload public function size() : Int;
	
	/**
	* Determine whether or not this list is empty.
	*
	* @return  true if there are no parameters
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Retrieve the value associated with the given name, or null if there
	* is no current association.
	*
	* @param name      the parameter name
	* @return          the parameter's value
	*/
	@:overload public function get(name : String) : String;
	
	/**
	* Set the value to be associated with the given name, replacing
	* any previous association.
	*
	* @param name      the parameter name
	* @param value     the parameter's value
	*/
	@:overload public function set(name : String, value : String) : Void;
	
	/**
	* Remove any value associated with the given name.
	*
	* @param name      the parameter name
	*/
	@:overload public function remove(name : String) : Void;
	
	/**
	* Retrieve an enumeration of all the names in this list.
	*
	* @return  an enumeration of all parameter names
	*/
	@:overload public function getNames() : java.util.Enumeration<Dynamic>;
	
	/**
	* Return a string representation of this object.
	*/
	@:overload public function toString() : String;
	
	
}
