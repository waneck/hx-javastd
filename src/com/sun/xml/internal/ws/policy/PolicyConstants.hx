package com.sun.xml.internal.ws.policy;
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
extern class PolicyConstants
{
	/**
	* Sun proprietary policy namespace URI
	*/
	public static var SUN_POLICY_NAMESPACE_URI(default, null) : String;
	
	/**
	* Sun proprietary policy namespace prefix
	*/
	public static var SUN_POLICY_NAMESPACE_PREFIX(default, null) : String;
	
	/**
	* Fully qualified name of the SUN's proprietary policy assertion visibility attribute
	*/
	public static var VISIBILITY_ATTRIBUTE(default, null) : javax.xml.namespace.QName;
	
	/**
	* Recognized value of the SUN's proprietary policy assertion visibility attribute
	*/
	public static var VISIBILITY_VALUE_PRIVATE(default, null) : String;
	
	/**
	* Standard WS-Security Utility namespace URI, used in Policy Id
	*/
	public static var WSU_NAMESPACE_URI(default, null) : String;
	
	/**
	* Standard WS-Security Utility namespace prefix, used in Policy Id
	*/
	public static var WSU_NAMESPACE_PREFIX(default, null) : String;
	
	/**
	* Fully qualified name of the Policy wsu:Id XML attribute
	*/
	public static var WSU_ID(default, null) : javax.xml.namespace.QName;
	
	/**
	* Standard XML namespace URI
	*/
	public static var XML_NAMESPACE_URI(default, null) : String;
	
	/**
	* Fully qualified name of the xml:id policy attribute
	*/
	public static var XML_ID(default, null) : javax.xml.namespace.QName;
	
	/**
	* Identifier of the client-side configuration file
	*/
	public static var CLIENT_CONFIGURATION_IDENTIFIER(default, null) : String;
	
	/**
	* XML namespace for management policy assertions
	*/
	public static var SUN_MANAGEMENT_NAMESPACE(default, null) : String;
	
	
}
