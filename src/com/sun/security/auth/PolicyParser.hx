package com.sun.security.auth;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PolicyParser
{
	/**
	* Creates a PolicyParser object.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(expandProp : Bool) : Void;
	
	/**
	* Reads a policy configuration into the Policy object using a
	* Reader object. <p>
	*
	* @param policy the policy Reader object.
	*
	* @exception ParsingException if the policy configuration contains
	*          a syntax error.
	*
	* @exception IOException if an error occurs while reading the policy
	*          configuration.
	*/
	@:overload @:public public function read(policy : java.io.Reader) : Void;
	
	@:overload @:public public function add(ge : com.sun.security.auth.PolicyParser.PolicyParser_GrantEntry) : Void;
	
	@:overload @:public public function replace(origGe : com.sun.security.auth.PolicyParser.PolicyParser_GrantEntry, newGe : com.sun.security.auth.PolicyParser.PolicyParser_GrantEntry) : Void;
	
	@:overload @:public public function remove(ge : com.sun.security.auth.PolicyParser.PolicyParser_GrantEntry) : Bool;
	
	/**
	* Returns the (possibly expanded) keystore location, or null if the
	* expansion fails.
	*/
	@:overload @:public public function getKeyStoreUrl() : String;
	
	@:overload @:public public function setKeyStoreUrl(url : String) : Void;
	
	@:overload @:public public function getKeyStoreType() : String;
	
	@:overload @:public public function setKeyStoreType(type : String) : Void;
	
	/**
	* Enumerate all the entries in the global policy object.
	* This method is used by policy admin tools.   The tools
	* should use the Enumeration methods on the returned object
	* to fetch the elements sequentially.
	*/
	@:overload @:public public function grantElements() : java.util.Enumeration<com.sun.security.auth.PolicyParser.PolicyParser_GrantEntry>;
	
	/**
	* write out the policy
	*/
	@:overload @:public public function write(policy : java.io.Writer) : Void;
	
	@:overload @:public @:static public static function main(arg : java.NativeArray<String>) : Void;
	
	
}
/**
* Each grant entry in the policy configuration file is
* represented by a
* GrantEntry object.  <p>
*
* <p>
* For example, the entry
* <pre>
*      grant signedBy "Duke" {
*          permission java.io.FilePermission "/tmp", "read,write";
*      };
*
* </pre>
* is represented internally
* <pre>
*
* pe = new PermissionEntry("java.io.FilePermission",
*                           "/tmp", "read,write");
*
* ge = new GrantEntry("Duke", null);
*
* ge.add(pe);
*
* </pre>
*
* @author Roland Schemers
*
* version 1.19, 05/21/98
*/
@:native('com$sun$security$auth$PolicyParser$GrantEntry') @:internal extern class PolicyParser_GrantEntry
{
	@:public public var signedBy : String;
	
	@:public public var codeBase : String;
	
	@:public public var principals : java.util.LinkedList<com.sun.security.auth.PolicyParser.PolicyParser_PrincipalEntry>;
	
	@:public public var permissionEntries : java.util.Vector<com.sun.security.auth.PolicyParser.PolicyParser_PermissionEntry>;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(signedBy : String, codeBase : String) : Void;
	
	@:overload @:public public function add(pe : com.sun.security.auth.PolicyParser.PolicyParser_PermissionEntry) : Void;
	
	@:overload @:public public function remove(pe : com.sun.security.auth.PolicyParser.PolicyParser_PermissionEntry) : Bool;
	
	@:overload @:public public function contains(pe : com.sun.security.auth.PolicyParser.PolicyParser_PermissionEntry) : Bool;
	
	/**
	* Enumerate all the permission entries in this GrantEntry.
	*/
	@:overload @:public public function permissionElements() : java.util.Enumeration<com.sun.security.auth.PolicyParser.PolicyParser_PermissionEntry>;
	
	@:overload @:public public function write(out : java.io.PrintWriter) : Void;
	
	
}
/**
* Principal info (class and name) in a grant entry
*/
@:native('com$sun$security$auth$PolicyParser$PrincipalEntry') @:internal extern class PolicyParser_PrincipalEntry
{
	/**
	* A PrincipalEntry consists of the <code>Principal</code>
	* class and <code>Principal</code> name.
	*
	* <p>
	*
	* @param principalClass the <code>Principal</code> class. <p>
	*
	* @param principalName the <code>Principal</code> name. <p>
	*/
	@:overload @:public public function new(principalClass : String, principalName : String) : Void;
	
	/**
	* Test for equality between the specified object and this object.
	* Two PrincipalEntries are equal if their PrincipalClass and
	* PrincipalName values are equal.
	*
	* <p>
	*
	* @param obj the object to test for equality with this object.
	*
	* @return true if the objects are equal, false otherwise.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Return a hashcode for this <code>PrincipalEntry</code>.
	*
	* <p>
	*
	* @return a hashcode for this <code>PrincipalEntry</code>.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
/**
* Each permission entry in the policy configuration file is
* represented by a
* PermissionEntry object.  <p>
*
* <p>
* For example, the entry
* <pre>
*          permission java.io.FilePermission "/tmp", "read,write";
* </pre>
* is represented internally
* <pre>
*
* pe = new PermissionEntry("java.io.FilePermission",
*                           "/tmp", "read,write");
* </pre>
*
* @author Roland Schemers
*
* version 1.19, 05/21/98
*/
@:native('com$sun$security$auth$PolicyParser$PermissionEntry') @:internal extern class PolicyParser_PermissionEntry
{
	@:public public var permission : String;
	
	@:public public var name : String;
	
	@:public public var action : String;
	
	@:public public var signedBy : String;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(permission : String, name : String, action : String) : Void;
	
	/**
	* Calculates a hash code value for the object.  Objects
	* which are equal will also have the same hashcode.
	*/
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function write(out : java.io.PrintWriter) : Void;
	
	
}
@:native('com$sun$security$auth$PolicyParser$ParsingException') @:internal extern class PolicyParser_ParsingException extends java.security.GeneralSecurityException
{
	/**
	* Constructs a ParsingException with the specified
	* detail message. A detail message is a String that describes
	* this particular exception, which may, for example, specify which
	* algorithm is not available.
	*
	* @param msg the detail message.
	*/
	@:overload @:public public function new(msg : String) : Void;
	
	@:overload @:public public function new(line : Int, msg : String) : Void;
	
	@:overload @:public public function new(line : Int, expect : String, actual : String) : Void;
	
	
}
