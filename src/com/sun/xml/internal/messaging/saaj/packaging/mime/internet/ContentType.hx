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
* @(#)ContentType.java       1.7 02/03/27
*/
/**
* This class represents a MIME ContentType value. It provides
* methods to parse a ContentType string into individual components
* and to generate a MIME style ContentType string.
*
* @version 1.7, 02/03/27
* @author  John Mani
*/
extern class ContentType
{
	/**
	* No-arg Constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor.
	*
	* @param   primaryType     primary type
	* @param   subType subType
	* @param   list    ParameterList
	*/
	@:overload public function new(primaryType : String, subType : String, list : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ParameterList) : Void;
	
	/**
	* Constructor that takes a Content-Type string. The String
	* is parsed into its constituents: primaryType, subType
	* and parameters. A ParseException is thrown if the parse fails.
	*
	* @param   s       the Content-Type string.
	* @exception       ParseException if the parse fails.
	*/
	@:overload public function new(s : String) : Void;
	
	@:overload public function copy() : ContentType;
	
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
	* @return  parameter value
	*/
	@:overload public function getParameter(name : String) : String;
	
	/**
	* Return a ParameterList object that holds all the available
	* parameters. Returns null if no parameters are available.
	*
	* @return  ParameterList
	*/
	@:overload public function getParameterList() : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ParameterList;
	
	/**
	* Set the primary type. Overrides existing primary type.
	* @param   primaryType     primary type
	*/
	@:overload public function setPrimaryType(primaryType : String) : Void;
	
	/**
	* Set the subType. Overrides existing subType
	* @param   subType subType
	*/
	@:overload public function setSubType(subType : String) : Void;
	
	/**
	* Set the specified parameter. If this parameter already exists,
	* it is replaced by this new value.
	*
	* @param   name    parameter name
	* @param   value   parameter value
	*/
	@:overload public function setParameter(name : String, value : String) : Void;
	
	/**
	* Set a new ParameterList.
	* @param   list    ParameterList
	*/
	@:overload public function setParameterList(list : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ParameterList) : Void;
	
	/**
	* Retrieve a RFC2045 style string representation of
	* this Content-Type. Returns <code>null</code> if
	* the conversion failed.
	*
	* @return  RFC2045 style string
	*/
	@:overload public function toString() : String;
	
	/**
	* Match with the specified ContentType object. This method
	* compares <strong>only the <code>primaryType</code> and
	* <code>subType</code> </strong>. The parameters of both operands
	* are ignored. <p>
	*
	* For example, this method will return <code>true</code> when
	* comparing the ContentTypes for <strong>"text/plain"</strong>
	* and <strong>"text/plain; charset=foobar"</strong>.
	*
	* If the <code>subType</code> of either operand is the special
	* character '*', then the subtype is ignored during the match.
	* For example, this method will return <code>true</code> when
	* comparing the ContentTypes for <strong>"text/plain"</strong>
	* and <strong>"text/*" </strong>
	*
	* @param   cType to compare this against
	*/
	@:overload public function match(cType : ContentType) : Bool;
	
	/**
	* Match with the specified content-type string. This method
	* compares <strong>only the <code>primaryType</code> and
	* <code>subType</code> </strong>.
	* The parameters of both operands are ignored. <p>
	*
	* For example, this method will return <code>true</code> when
	* comparing the ContentType for <strong>"text/plain"</strong>
	* with <strong>"text/plain; charset=foobar"</strong>.
	*
	* If the <code>subType</code> of either operand is the special
	* character '*', then the subtype is ignored during the match.
	* For example, this method will return <code>true</code> when
	* comparing the ContentType for <strong>"text/plain"</strong>
	* with <strong>"text/*" </strong>
	*/
	@:overload public function match(s : String) : Bool;
	
	
}
