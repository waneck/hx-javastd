package sun.security.provider;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class PolicyFile extends java.security.Policy
{
	/**
	* Initializes the Policy object and reads the default policy
	* configuration file(s) into the Policy object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Initializes the Policy object and reads the default policy
	* from the specified URL only.
	*/
	@:overload public function new(url : java.net.URL) : Void;
	
	/**
	* Refreshes the policy object by re-reading all the policy files.
	*/
	@:overload override public function refresh() : Void;
	
	/**
	* Evaluates the the global policy for the permissions granted to
	* the ProtectionDomain and tests whether the permission is
	* granted.
	*
	* @param domain the ProtectionDomain to test
	* @param permission the Permission object to be tested for implication.
	*
	* @return true if "permission" is a proper subset of a permission
	* granted to this ProtectionDomain.
	*
	* @see java.security.ProtectionDomain
	*/
	@:overload override public function implies(pd : java.security.ProtectionDomain, p : java.security.Permission) : Bool;
	
	/**
	* Examines this <code>Policy</code> and returns the permissions granted
	* to the specified <code>ProtectionDomain</code>.  This includes
	* the permissions currently associated with the domain as well
	* as the policy permissions granted to the domain's
	* CodeSource, ClassLoader, and Principals.
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
	* @param domain the Permissions granted to this
	*          <code>ProtectionDomain</code> are returned.
	*
	* @return the Permissions granted to the provided
	*          <code>ProtectionDomain</code>.
	*/
	@:overload override public function getPermissions(domain : java.security.ProtectionDomain) : java.security.PermissionCollection;
	
	/**
	* Examines this Policy and creates a PermissionCollection object with
	* the set of permissions for the specified CodeSource.
	*
	* @param CodeSource the codesource associated with the caller.
	* This encapsulates the original location of the code (where the code
	* came from) and the public key(s) of its signer.
	*
	* @return the set of permissions according to the policy.
	*/
	@:overload override public function getPermissions(codesource : java.security.CodeSource) : java.security.PermissionCollection;
	
	/*
	* Returns the signer certificates from the list of certificates
	* associated with the given code source.
	*
	* The signer certificates are those certificates that were used
	* to verifysigned code originating from the codesource location.
	*
	* This method assumes that in the given code source, each signer
	* certificate is followed by its supporting certificate chain
	* (which may be empty), and that the signer certificate and its
	* supporting certificate chain are ordered bottom-to-top
	* (i.e., with the signer certificate first and the (root) certificate
	* authority last).
	*/
	@:overload private function getSignerCertificates(cs : java.security.CodeSource) : java.NativeArray<java.security.cert.Certificate>;
	
	
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
@:native('sun$security$provider$PolicyFile$PolicyEntry') @:internal extern class PolicyFile_PolicyEntry
{
	@:overload public function toString() : String;
	
	
}
@:native('sun$security$provider$PolicyFile$SelfPermission') @:internal extern class PolicyFile_SelfPermission extends java.security.Permission
{
	/**
	* Creates a new SelfPermission containing the permission
	* information needed later to expand the self
	* @param type the class name of the Permission class that will be
	* created when this permission is expanded and if necessary resolved.
	* @param name the name of the permission.
	* @param actions the actions of the permission.
	* @param certs the certificates the permission's class was signed with.
	* This is a list of certificate chains, where each chain is composed of
	* a signer certificate and optionally its supporting certificate chain.
	* Each chain is ordered bottom-to-top (i.e., with the signer
	* certificate first and the (root) certificate authority last).
	*/
	@:overload public function new(type : String, name : String, actions : String, certs : java.NativeArray<java.security.cert.Certificate>) : Void;
	
	/**
	* This method always returns false for SelfPermission permissions.
	* That is, an SelfPermission never considered to
	* imply another permission.
	*
	* @param p the permission to check against.
	*
	* @return false.
	*/
	@:overload override public function implies(p : java.security.Permission) : Bool;
	
	/**
	* Checks two SelfPermission objects for equality.
	*
	* Checks that <i>obj</i> is an SelfPermission, and has
	* the same type (class) name, permission name, actions, and
	* certificates as this object.
	*
	* @param obj the object we are testing for equality with this object.
	*
	* @return true if obj is an SelfPermission, and has the same
	* type (class) name, permission name, actions, and
	* certificates as this object.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Returns the canonical string representation of the actions,
	* which currently is the empty string "", since there are no actions
	* for an SelfPermission. That is, the actions for the
	* permission that will be created when this SelfPermission
	* is resolved may be non-null, but an SelfPermission
	* itself is never considered to have any actions.
	*
	* @return the empty string "".
	*/
	@:overload override public function getActions() : String;
	
	@:overload public function getSelfType() : String;
	
	@:overload public function getSelfName() : String;
	
	@:overload public function getSelfActions() : String;
	
	@:overload public function getCerts() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns a string describing this SelfPermission.  The convention
	* is to specify the class name, the permission name, and the actions,
	* in the following format: '(unresolved "ClassName" "name" "actions")'.
	*
	* @return information about this SelfPermission.
	*/
	@:overload override public function toString() : String;
	
	
}
/**
* holds policy information that we need to synch on
*/
@:native('sun$security$provider$PolicyFile$PolicyInfo') @:internal extern class PolicyFile_PolicyInfo
{
	
}
