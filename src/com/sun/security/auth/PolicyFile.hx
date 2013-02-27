package com.sun.security.auth;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class PolicyFile extends javax.security.auth.Policy
{
	/**
	* Initializes the Policy object and reads the default policy
	* configuration file(s) into the Policy object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Refreshes the policy object by re-reading all the policy files.
	*
	* <p>
	*
	* @exception SecurityException if the caller doesn't have permission
	*          to refresh the <code>Policy</code>.
	*/
	@:overload @:synchronized override public function refresh() : Void;
	
	/**
	* Examines this <code>Policy</code> and returns the Permissions granted
	* to the specified <code>Subject</code> and <code>CodeSource</code>.
	*
	* <p> Permissions for a particular <i>grant</i> entry are returned
	* if the <code>CodeSource</code> constructed using the codebase and
	* signedby values specified in the entry <code>implies</code>
	* the <code>CodeSource</code> provided to this method, and if the
	* <code>Subject</code> provided to this method contains all of the
	* Principals specified in the entry.
	*
	* <p> The <code>Subject</code> provided to this method contains all
	* of the Principals specified in the entry if, for each
	* <code>Principal</code>, "P1", specified in the <i>grant</i> entry
	* one of the following two conditions is met:
	*
	* <p>
	* <ol>
	* <li> the <code>Subject</code> has a
	*      <code>Principal</code>, "P2", where
	*      <code>P2.getClass().getName()</code> equals the
	*      P1's class name, and where
	*      <code>P2.getName()</code> equals the P1's name.
	*
	* <li> P1 implements
	*      <code>com.sun.security.auth.PrincipalComparator</code>,
	*      and <code>P1.implies</code> the provided <code>Subject</code>.
	* </ol>
	*
	* <p> Note that this <code>Policy</code> implementation has
	* special handling for PrivateCredentialPermissions.
	* When this method encounters a <code>PrivateCredentialPermission</code>
	* which specifies "self" as the <code>Principal</code> class and name,
	* it does not add that <code>Permission</code> to the returned
	* <code>PermissionCollection</code>.  Instead, it builds
	* a new <code>PrivateCredentialPermission</code>
	* for each <code>Principal</code> associated with the provided
	* <code>Subject</code>.  Each new <code>PrivateCredentialPermission</code>
	* contains the same Credential class as specified in the
	* originally granted permission, as well as the Class and name
	* for the respective <code>Principal</code>.
	*
	* <p>
	*
	* @param subject the Permissions granted to this <code>Subject</code>
	*          and the additionally provided <code>CodeSource</code>
	*          are returned. <p>
	*
	* @param codesource the Permissions granted to this <code>CodeSource</code>
	*          and the additionally provided <code>Subject</code>
	*          are returned.
	*
	* @return the Permissions granted to the provided <code>Subject</code>
	*          <code>CodeSource</code>.
	*/
	@:overload override public function getPermissions(subject : javax.security.auth.Subject, codesource : java.security.CodeSource) : java.security.PermissionCollection;
	
	
}
/**
* Each entry in the policy configuration file is represented by a
* PolicyEntry object.  <p>
*
* A PolicyEntry is a (CodeSource,Permission) pair.  The
* CodeSource contains the (URL, PublicKey) that together identify
* where the Java bytecodes come from and who (if anyone) signed
* them.  The URL could refer to localhost.  The URL could also be
* null, meaning that this policy entry is given to all comers, as
* long as they match the signer field.  The signer could be null,
* meaning the code is not signed. <p>
*
* The Permission contains the (Type, Name, Action) triplet. <p>
*
* For now, the Policy object retrieves the public key from the
* X.509 certificate on disk that corresponds to the signedBy
* alias specified in the Policy config file.  For reasons of
* efficiency, the Policy object keeps a hashtable of certs already
* read in.  This could be replaced by a secure internal key
* store.
*
* <p>
* For example, the entry
* <pre>
*          permission java.io.File "/tmp", "read,write",
*          signedBy "Duke";
* </pre>
* is represented internally
* <pre>
*
* FilePermission f = new FilePermission("/tmp", "read,write");
* PublicKey p = publickeys.get("Duke");
* URL u = InetAddress.getLocalHost();
* CodeBase c = new CodeBase( p, u );
* pe = new PolicyEntry(f, c);
* </pre>
*
* @author Marianne Mueller
* @author Roland Schemers
* @see java.security.CodeSource
* @see java.security.Policy
* @see java.security.Permissions
* @see java.security.ProtectionDomain
*/
@:native('com$sun$security$auth$PolicyFile$PolicyEntry') @:internal extern class PolicyFile_PolicyEntry
{
	@:overload public function toString() : String;
	
	
}
@:internal extern class PolicyPermissions extends java.security.PermissionCollection
{
	@:overload override public function add(permission : java.security.Permission) : Void;
	
	@:overload override public function implies(permission : java.security.Permission) : Bool;
	
	@:overload override public function elements() : java.util.Enumeration<java.security.Permission>;
	
	@:overload override public function toString() : String;
	
	
}
