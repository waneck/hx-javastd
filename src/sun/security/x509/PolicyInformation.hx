package sun.security.x509;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class PolicyInformation
{
	/**
	* PolicyInformation is the class that contains a specific certificate policy
	* that is part of the CertificatePoliciesExtension. A
	* CertificatePolicyExtension value consists of a vector of these objects.
	* <p>
	* The ASN.1 syntax for PolicyInformation (IMPLICIT tagging is defined in the
	* module definition):
	* <pre>
	*
	* PolicyInformation ::= SEQUENCE {
	*      policyIdentifier   CertPolicyId,
	*      policyQualifiers   SEQUENCE SIZE (1..MAX) OF
	*                              PolicyQualifierInfo OPTIONAL }
	*
	* CertPolicyId ::= OBJECT IDENTIFIER
	*
	* PolicyQualifierInfo ::= SEQUENCE {
	*      policyQualifierId  PolicyQualifierId,
	*      qualifier          ANY DEFINED BY policyQualifierId }
	* </pre>
	*
	* @author Sean Mullan
	* @author Anne Anderson
	* @since       1.4
	*/
	@:require(java4) public static var NAME(default, null) : String;
	
	public static var ID(default, null) : String;
	
	public static var QUALIFIERS(default, null) : String;
	
	/**
	* Create an instance of PolicyInformation
	*
	* @param policyIdentifier the policyIdentifier as a
	*          CertificatePolicyId
	* @param policyQualifiers a Set of PolicyQualifierInfo objects.
	*          Must not be NULL. Specify an empty Set for no qualifiers.
	* @exception IOException on decoding errors.
	*/
	@:overload public function new(policyIdentifier : sun.security.x509.CertificatePolicyId, policyQualifiers : java.util.Set<java.security.cert.PolicyQualifierInfo>) : Void;
	
	/**
	* Create an instance of PolicyInformation, decoding from
	* the passed DerValue.
	*
	* @param val the DerValue to construct the PolicyInformation from.
	* @exception IOException on decoding errors.
	*/
	@:overload public function new(val : sun.security.util.DerValue) : Void;
	
	/**
	* Compare this PolicyInformation with another object for equality
	*
	* @param other object to be compared with this
	* @return true iff the PolicyInformation objects match
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns the hash code for this PolicyInformation.
	*
	* @return a hash code value.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Return the policyIdentifier value
	*
	* @return The CertificatePolicyId object containing
	*     the policyIdentifier (not a copy).
	*/
	@:overload public function getPolicyIdentifier() : sun.security.x509.CertificatePolicyId;
	
	/**
	* Return the policyQualifiers value
	*
	* @return a Set of PolicyQualifierInfo objects associated
	*    with this certificate policy (not a copy).
	*    Returns an empty Set if there are no qualifiers.
	*    Never returns null.
	*/
	@:overload public function getPolicyQualifiers() : java.util.Set<java.security.cert.PolicyQualifierInfo>;
	
	/**
	* Get the attribute value.
	*/
	@:overload public function get(name : String) : Dynamic;
	
	/**
	* Set the attribute value.
	*/
	@:overload public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Delete the attribute value.
	*/
	@:overload public function delete(name : String) : Void;
	
	/**
	* Return an enumeration of names of attributes existing within this
	* attribute.
	*/
	@:overload public function getElements() : java.util.Enumeration<String>;
	
	/**
	* Return the name of this attribute.
	*/
	@:overload public function getName() : String;
	
	/**
	* Return a printable representation of the PolicyInformation.
	*/
	@:overload public function toString() : String;
	
	/**
	* Write the PolicyInformation to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the extension to.
	* @exception IOException on encoding errors.
	*/
	@:overload public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	
}
