package java.nio.file.attribute;
/*
* Copyright (c) 2007, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class UserPrincipalLookupService
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Lookup a user principal by name.
	*
	* @param   name
	*          the string representation of the user principal to lookup
	*
	* @return  a user principal
	*
	* @throws  UserPrincipalNotFoundException
	*          the principal does not exist
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, and a security manager is
	*          installed, it checks {@link RuntimePermission}<tt>("lookupUserInformation")</tt>
	*/
	@:overload @:public @:abstract public function lookupPrincipalByName(name : String) : java.nio.file.attribute.UserPrincipal;
	
	/**
	* Lookup a group principal by group name.
	*
	* <p> Where an implementation does not support any notion of group then
	* this method always throws {@link UserPrincipalNotFoundException}. Where
	* the namespace for user accounts and groups is the same, then this method
	* is identical to invoking {@link #lookupPrincipalByName
	* lookupPrincipalByName}.
	*
	* @param   group
	*          the string representation of the group to lookup
	*
	* @return  a group principal
	*
	* @throws  UserPrincipalNotFoundException
	*          the principal does not exist or is not a group
	* @throws  IOException
	*          if an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, and a security manager is
	*          installed, it checks {@link RuntimePermission}<tt>("lookupUserInformation")</tt>
	*/
	@:overload @:public @:abstract public function lookupPrincipalByGroupName(group : String) : java.nio.file.attribute.GroupPrincipal;
	
	
}
