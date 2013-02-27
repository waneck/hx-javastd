package com.sun.xml.internal.ws.encoding;
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
* @(#)ContentType.java       1.7 02/03/27
*/
extern class ContentType
{
	/**
	* Constructor that takes a Content-Type string. The String
	* is parsed into its constituents: primaryType, subType
	* and parameters. A ParseException is thrown if the parse fails.
	*
	* @param   s       the Content-Type string.
	* @exception WebServiceException if the parse fails.
	*/
	@:overload public function new(s : String) : Void;
	
	/**
	* Return the primary type.
	* @return the primary type
	*/
	@:overload public function getPrimaryType() : String;
	
	/**
	* Return the subType.
	* @return the subType
	*/
	@:overload public function getSubType() : String;
	
	/**
	* Return the MIME type string, without the parameters.
	* The returned value is basically the concatenation of
	* the primaryType, the '/' character and the secondaryType.
	*
	* @return the type
	*/
	@:overload public function getBaseType() : String;
	
	/**
	* Return the specified parameter value. Returns <code>null</code>
	* if this parameter is absent.
	*
	* @param name parameter name
	* @return  parameter value
	*/
	@:overload public function getParameter(name : String) : String;
	
	/**
	* Return a ParameterList object that holds all the available
	* parameters. Returns null if no parameters are available.
	*
	* @return  ParameterList
	*/
	@:overload public function getParameterList() : com.sun.xml.internal.ws.encoding.ParameterList;
	
	
}
