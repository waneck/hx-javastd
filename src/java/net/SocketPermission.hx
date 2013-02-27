package java.net;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SocketPermission extends java.security.Permission implements java.io.Serializable
{
	/**
	* Creates a new SocketPermission object with the specified actions.
	* The host is expressed as a DNS name, or as a numerical IP address.
	* Optionally, a port or a portrange may be supplied (separated
	* from the DNS name or IP address by a colon).
	* <p>
	* To specify the local machine, use "localhost" as the <i>host</i>.
	* Also note: An empty <i>host</i> String ("") is equivalent to "localhost".
	* <p>
	* The <i>actions</i> parameter contains a comma-separated list of the
	* actions granted for the specified host (and port(s)). Possible actions are
	* "connect", "listen", "accept", "resolve", or
	* any combination of those. "resolve" is automatically added
	* when any of the other three are specified.
	* <p>
	* Examples of SocketPermission instantiation are the following:
	* <pre>
	*    nr = new SocketPermission("www.catalog.com", "connect");
	*    nr = new SocketPermission("www.sun.com:80", "connect");
	*    nr = new SocketPermission("*.sun.com", "connect");
	*    nr = new SocketPermission("*.edu", "resolve");
	*    nr = new SocketPermission("204.160.241.0", "connect");
	*    nr = new SocketPermission("localhost:1024-65535", "listen");
	*    nr = new SocketPermission("204.160.241.0:1024-65535", "connect");
	* </pre>
	*
	* @param host the hostname or IPaddress of the computer, optionally
	* including a colon followed by a port or port range.
	* @param action the action string.
	*/
	@:overload public function new(host : String, action : String) : Void;
	
	/**
	* Checks if this socket permission object "implies" the
	* specified permission.
	* <P>
	* More specifically, this method first ensures that all of the following
	* are true (and returns false if any of them are not):<p>
	* <ul>
	* <li> <i>p</i> is an instanceof SocketPermission,<p>
	* <li> <i>p</i>'s actions are a proper subset of this
	* object's actions, and<p>
	* <li> <i>p</i>'s port range is included in this port range. Note:
	* port range is ignored when p only contains the action, 'resolve'.<p>
	* </ul>
	*
	* Then <code>implies</code> checks each of the following, in order,
	* and for each returns true if the stated condition is true:<p>
	* <ul>
	* <li> If this object was initialized with a single IP address and one of <i>p</i>'s
	* IP addresses is equal to this object's IP address.<p>
	* <li>If this object is a wildcard domain (such as *.sun.com), and
	* <i>p</i>'s canonical name (the name without any preceding *)
	* ends with this object's canonical host name. For example, *.sun.com
	* implies *.eng.sun.com..<p>
	* <li>If this object was not initialized with a single IP address, and one of this
	* object's IP addresses equals one of <i>p</i>'s IP addresses.<p>
	* <li>If this canonical name equals <i>p</i>'s canonical name.<p>
	* </ul>
	*
	* If none of the above are true, <code>implies</code> returns false.
	* @param p the permission to check against.
	*
	* @return true if the specified permission is implied by this object,
	* false if not.
	*/
	@:overload public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two SocketPermission objects for equality.
	* <P>
	* @param obj the object to test for equality with this object.
	*
	* @return true if <i>obj</i> is a SocketPermission, and has the
	*  same hostname, port range, and actions as this
	*  SocketPermission object. However, port range will be ignored
	*  in the comparison if <i>obj</i> only contains the action, 'resolve'.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Returns the canonical string representation of the actions.
	* Always returns present actions in the following order:
	* connect, listen, accept, resolve.
	*
	* @return the canonical string representation of the actions.
	*/
	@:overload override public function getActions() : String;
	
	/**
	* Returns a new PermissionCollection object for storing SocketPermission
	* objects.
	* <p>
	* SocketPermission objects must be stored in a manner that allows them
	* to be inserted into the collection in any order, but that also enables the
	* PermissionCollection <code>implies</code>
	* method to be implemented in an efficient (and consistent) manner.
	*
	* @return a new PermissionCollection object suitable for storing SocketPermissions.
	*/
	@:overload override public function newPermissionCollection() : java.security.PermissionCollection;
	
	
}
@:internal extern class SocketPermissionCollection extends java.security.PermissionCollection implements java.io.Serializable
{
	/**
	* Create an empty SocketPermissions object.
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Adds a permission to the SocketPermissions. The key for the hash is
	* the name in the case of wildcards, or all the IP addresses.
	*
	* @param permission the Permission object to add.
	*
	* @exception IllegalArgumentException - if the permission is not a
	*                                       SocketPermission
	*
	* @exception SecurityException - if this SocketPermissionCollection object
	*                                has been marked readonly
	*/
	@:overload override public function add(permission : java.security.Permission) : Void;
	
	/**
	* Check and see if this collection of permissions implies the permissions
	* expressed in "permission".
	*
	* @param p the Permission object to compare
	*
	* @return true if "permission" is a proper subset of a permission in
	* the collection, false if not.
	*/
	@:overload override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Returns an enumeration of all the SocketPermission objects in the
	* container.
	*
	* @return an enumeration of all the SocketPermission objects.
	*/
	@:overload override public function elements() : java.util.Enumeration<Dynamic>;
	
	
}
