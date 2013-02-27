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
* @(#)ContentDisposition.java        1.6 02/03/27
*/
/**
* This class represents a MIME ContentDisposition value. It provides
* methods to parse a ContentDisposition string into individual components
* and to generate a MIME style ContentDisposition string.
*
* @version 1.6, 02/03/27
* @author  John Mani
*/
extern class ContentDisposition
{
	/**
	* No-arg Constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor.
	*
	* @param   disposition     disposition
	* @param   list    ParameterList
	* @since           JavaMail 1.2
	*/
	@:require(java2) @:overload public function new(disposition : String, list : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ParameterList) : Void;
	
	/**
	* Constructor that takes a ContentDisposition string. The String
	* is parsed into its constituents: dispostion and parameters.
	* A ParseException is thrown if the parse fails.
	*
	* @param   s       the ContentDisposition string.
	* @exception       ParseException if the parse fails.
	* @since           JavaMail 1.2
	*/
	@:require(java2) @:overload public function new(s : String) : Void;
	
	/**
	* Return the disposition value.
	* @return the disposition
	* @since           JavaMail 1.2
	*/
	@:require(java2) @:overload public function getDisposition() : String;
	
	/**
	* Return the specified parameter value. Returns <code>null</code>
	* if this parameter is absent.
	* @return  parameter value
	* @since           JavaMail 1.2
	*/
	@:require(java2) @:overload public function getParameter(name : String) : String;
	
	/**
	* Return a ParameterList object that holds all the available
	* parameters. Returns null if no parameters are available.
	*
	* @return  ParameterList
	* @since           JavaMail 1.2
	*/
	@:require(java2) @:overload public function getParameterList() : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ParameterList;
	
	/**
	* Set the primary type. Overrides existing primary type.
	* @param   primaryType     primary type
	* @since           JavaMail 1.2
	*/
	@:require(java2) @:overload public function setDisposition(disposition : String) : Void;
	
	/**
	* Set the specified parameter. If this parameter already exists,
	* it is replaced by this new value.
	*
	* @param   name    parameter name
	* @param   value   parameter value
	* @since           JavaMail 1.2
	*/
	@:require(java2) @:overload public function setParameter(name : String, value : String) : Void;
	
	/**
	* Set a new ParameterList.
	* @param   list    ParameterList
	* @since           JavaMail 1.2
	*/
	@:require(java2) @:overload public function setParameterList(list : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ParameterList) : Void;
	
	/**
	* Retrieve a RFC2045 style string representation of
	* this ContentDisposition. Returns <code>null</code> if
	* the conversion failed.
	*
	* @return  RFC2045 style string
	* @since           JavaMail 1.2
	*/
	@:require(java2) @:overload public function toString() : String;
	
	
}
