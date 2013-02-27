package com.sun.jmx.snmp;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
//// java import
////
/**
* Defines the user based ACL used by the SNMP protocol adaptor.
* <p>
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern interface UserAcl
{
	/**
	* Returns the name of the ACL.
	*
	* @return The name of the ACL.
	*/
	@:overload public function getName() : java.lang.String.String;
	
	/**
	* Checks whether or not the specified user has <CODE>READ</CODE> access.
	*
	* @param user The user name to check.
	*
	* @return <CODE>true</CODE> if the host has read permission, <CODE>false</CODE> otherwise.
	*/
	@:overload public function checkReadPermission(user : java.lang.String.String) : Bool;
	
	/**
	* Checks whether or not the specified user and context name have <CODE>READ</CODE> access.
	*
	* @param user The user name to check.
	* @param contextName The context name associated with the user.
	* @param securityLevel The request security level.
	* @return <CODE>true</CODE> if the pair (user, context) has read permission, <CODE>false</CODE> otherwise.
	*/
	@:overload public function checkReadPermission(user : java.lang.String.String, contextName : java.lang.String.String, securityLevel : Int) : Bool;
	
	/**
	* Checks whether or not a context name is defined.
	*
	* @param contextName The context name to check.
	*
	* @return <CODE>true</CODE> if the context is known, <CODE>false</CODE> otherwise.
	*/
	@:overload public function checkContextName(contextName : java.lang.String.String) : Bool;
	
	/**
	* Checks whether or not the specified user has <CODE>WRITE</CODE> access.
	*
	* @param user The user to check.
	*
	* @return <CODE>true</CODE> if the user has write permission, <CODE>false</CODE> otherwise.
	*/
	@:overload public function checkWritePermission(user : java.lang.String.String) : Bool;
	
	/**
	* Checks whether or not the specified user and context name have <CODE>WRITE</CODE> access.
	*
	* @param user The user name to check.
	* @param contextName The context name associated with the user.
	* @param securityLevel The request security level.
	* @return <CODE>true</CODE> if the pair (user, context) has write permission, <CODE>false</CODE> otherwise.
	*/
	@:overload public function checkWritePermission(user : java.lang.String.String, contextName : java.lang.String.String, securityLevel : Int) : Bool;
	
	
}
