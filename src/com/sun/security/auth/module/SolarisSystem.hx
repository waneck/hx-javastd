package com.sun.security.auth.module;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
* <p> This class implementation retrieves and makes available Solaris
* UID/GID/groups information for the current user.
*
*/
extern class SolarisSystem
{
	private var username : String;
	
	private var uid : haxe.Int64;
	
	private var gid : haxe.Int64;
	
	private var groups : java.NativeArray<haxe.Int64>;
	
	/**
	* Instantiate a <code>SolarisSystem</code> and load
	* the native library to access the underlying system information.
	*/
	@:overload public function new() : Void;
	
	/**
	* Get the username for the current Solaris user.
	*
	* <p>
	*
	* @return the username for the current Solaris user.
	*/
	@:overload public function getUsername() : String;
	
	/**
	* Get the UID for the current Solaris user.
	*
	* <p>
	*
	* @return the UID for the current Solaris user.
	*/
	@:overload public function getUid() : haxe.Int64;
	
	/**
	* Get the GID for the current Solaris user.
	*
	* <p>
	*
	* @return the GID for the current Solaris user.
	*/
	@:overload public function getGid() : haxe.Int64;
	
	/**
	* Get the supplementary groups for the current Solaris user.
	*
	* <p>
	*
	* @return the supplementary groups for the current Solaris user.
	*/
	@:overload public function getGroups() : java.NativeArray<haxe.Int64>;
	
	
}