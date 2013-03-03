package javax.security.auth;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Policy
{
	/**
	* Sole constructor.  (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Returns the installed Policy object.
	* This method first calls
	* <code>SecurityManager.checkPermission</code> with the
	* <code>AuthPermission("getPolicy")</code> permission
	* to ensure the caller has permission to get the Policy object.
	*
	* <p>
	*
	* @return the installed Policy.  The return value cannot be
	*          <code>null</code>.
	*
	* @exception java.lang.SecurityException if the current thread does not
	*      have permission to get the Policy object.
	*
	* @see #setPolicy
	*/
	@:overload @:public @:static public static function getPolicy() : javax.security.auth.Policy;
	
	/**
	* Sets the system-wide Policy object. This method first calls
	* <code>SecurityManager.checkPermission</code> with the
	* <code>AuthPermission("setPolicy")</code>
	* permission to ensure the caller has permission to set the Policy.
	*
	* <p>
	*
	* @param policy the new system Policy object.
	*
	* @exception java.lang.SecurityException if the current thread does not
	*          have permission to set the Policy.
	*
	* @see #getPolicy
	*/
	@:overload @:public @:static public static function setPolicy(policy : javax.security.auth.Policy) : Void;
	
	/**
	* Retrieve the Permissions granted to the Principals associated with
	* the specified <code>CodeSource</code>.
	*
	* <p>
	*
	* @param subject the <code>Subject</code>
	*                  whose associated Principals,
	*                  in conjunction with the provided
	*                  <code>CodeSource</code>, determines the Permissions
	*                  returned by this method.  This parameter
	*                  may be <code>null</code>. <p>
	*
	* @param cs the code specified by its <code>CodeSource</code>
	*                  that determines, in conjunction with the provided
	*                  <code>Subject</code>, the Permissions
	*                  returned by this method.  This parameter may be
	*                  <code>null</code>.
	*
	* @return the Collection of Permissions granted to all the
	*                  <code>Subject</code> and code specified in
	*                  the provided <i>subject</i> and <i>cs</i>
	*                  parameters.
	*/
	@:overload @:public @:abstract public function getPermissions(subject : javax.security.auth.Subject, cs : java.security.CodeSource) : java.security.PermissionCollection;
	
	/**
	* Refresh and reload the Policy.
	*
	* <p>This method causes this object to refresh/reload its current
	* Policy. This is implementation-dependent.
	* For example, if the Policy object is stored in
	* a file, calling <code>refresh</code> will cause the file to be re-read.
	*
	* <p>
	*
	* @exception SecurityException if the caller does not have permission
	*                          to refresh the Policy.
	*/
	@:overload @:public @:abstract public function refresh() : Void;
	
	
}
