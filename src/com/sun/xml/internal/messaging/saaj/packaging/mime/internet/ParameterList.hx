package com.sun.xml.internal.messaging.saaj.packaging.mime.internet;
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
/*
* @(#)ParameterList.java     1.10 03/02/12
*/
extern class ParameterList
{
	/**
	* No-arg Constructor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructor that takes a parameter-list string. The String
	* is parsed and the parameters are collected and stored internally.
	* A ParseException is thrown if the parse fails.
	* Note that an empty parameter-list string is valid and will be
	* parsed into an empty ParameterList.
	*
	* @param   s       the parameter-list string.
	* @exception       ParseException if the parse fails.
	*/
	@:overload @:public public function new(s : String) : Void;
	
	/**
	* Return the number of parameters in this list.
	*
	* @return  number of parameters.
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Returns the value of the specified parameter. Note that
	* parameter names are case-insensitive.
	*
	* @param name      parameter name.
	* @return          Value of the parameter. Returns
	*                  <code>null</code> if the parameter is not
	*                  present.
	*/
	@:overload @:public public function get(name : String) : String;
	
	/**
	* Set a parameter. If this parameter already exists, it is
	* replaced by this new value.
	*
	* @param   name    name of the parameter.
	* @param   value   value of the parameter.
	*/
	@:overload @:public public function set(name : String, value : String) : Void;
	
	/**
	* Removes the specified parameter from this ParameterList.
	* This method does nothing if the parameter is not present.
	*
	* @param   name    name of the parameter.
	*/
	@:overload @:public public function remove(name : String) : Void;
	
	/**
	* Return an enumeration of the names of all parameters in this
	* list.
	*
	* @return Enumeration of all parameter names in this list.
	*/
	@:overload @:public public function getNames() : java.util.Iterator<Dynamic>;
	
	/**
	* Convert this ParameterList into a MIME String. If this is
	* an empty list, an empty string is returned.
	*
	* @return          String
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Convert this ParameterList into a MIME String. If this is
	* an empty list, an empty string is returned.
	*
	* The 'used' parameter specifies the number of character positions
	* already taken up in the field into which the resulting parameter
	* list is to be inserted. It's used to determine where to fold the
	* resulting parameter list.
	*
	* @param used      number of character positions already used, in
	*                  the field into which the parameter list is to
	*                  be inserted.
	* @return          String
	*/
	@:overload @:public public function toString(used : Int) : String;
	
	@:overload @:public public function copy() : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ParameterList;
	
	
}
