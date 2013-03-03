package com.sun.security.auth.module;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* <p> This class implementation retrieves and makes available NT
* security information for the current user.
*
*/
extern class NTSystem
{
	/**
	* Instantiate an <code>NTSystem</code> and load
	* the native library to access the underlying system information.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Get the username for the current NT user.
	*
	* <p>
	*
	* @return the username for the current NT user.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Get the domain for the current NT user.
	*
	* <p>
	*
	* @return the domain for the current NT user.
	*/
	@:overload @:public public function getDomain() : String;
	
	/**
	* Get a printable SID for the current NT user's domain.
	*
	* <p>
	*
	* @return a printable SID for the current NT user's domain.
	*/
	@:overload @:public public function getDomainSID() : String;
	
	/**
	* Get a printable SID for the current NT user.
	*
	* <p>
	*
	* @return a printable SID for the current NT user.
	*/
	@:overload @:public public function getUserSID() : String;
	
	/**
	* Get a printable primary group SID for the current NT user.
	*
	* <p>
	*
	* @return the primary group SID for the current NT user.
	*/
	@:overload @:public public function getPrimaryGroupID() : String;
	
	/**
	* Get the printable group SIDs for the current NT user.
	*
	* <p>
	*
	* @return the group SIDs for the current NT user.
	*/
	@:overload @:public public function getGroupIDs() : java.NativeArray<String>;
	
	/**
	* Get an impersonation token for the current NT user.
	*
	* <p>
	*
	* @return an impersonation token for the current NT user.
	*/
	@:overload @:public @:synchronized public function getImpersonationToken() : haxe.Int64;
	
	
}
