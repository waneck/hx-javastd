package sun.security.x509;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DistributionPoint
{
	/**
	* Represent the DistributionPoint sequence used in the CRL
	* Distribution Points Extension (OID = 2.5.29.31).
	* <p>
	* The ASN.1 definition for this is:
	* <pre>
	* DistributionPoint ::= SEQUENCE {
	*      distributionPoint       [0]     DistributionPointName OPTIONAL,
	*      reasons                 [1]     ReasonFlags OPTIONAL,
	*      cRLIssuer               [2]     GeneralNames OPTIONAL }
	*
	* DistributionPointName ::= CHOICE {
	*      fullName                [0]     GeneralNames,
	*      nameRelativeToCRLIssuer [1]     RelativeDistinguishedName }
	*
	* ReasonFlags ::= BIT STRING {
	*      unused                  (0),
	*      keyCompromise           (1),
	*      cACompromise            (2),
	*      affiliationChanged      (3),
	*      superseded              (4),
	*      cessationOfOperation    (5),
	*      certificateHold         (6),
	*      privilegeWithdrawn      (7),
	*      aACompromise            (8) }
	*
	* GeneralNames ::= SEQUENCE SIZE (1..MAX) OF GeneralName
	*
	* GeneralName ::= CHOICE {
	*         otherName                   [0] INSTANCE OF OTHER-NAME,
	*         rfc822Name                  [1] IA5String,
	*         dNSName                     [2] IA5String,
	*         x400Address                 [3] ORAddress,
	*         directoryName               [4] Name,
	*         ediPartyName                [5] EDIPartyName,
	*         uniformResourceIdentifier   [6] IA5String,
	*         iPAddress                   [7] OCTET STRING,
	*         registeredID                [8] OBJECT IDENTIFIER }
	*
	* RelativeDistinguishedName ::=
	*   SET OF AttributeTypeAndValue
	*
	* AttributeTypeAndValue ::= SEQUENCE {
	*   type     AttributeType,
	*   value    AttributeValue }
	*
	* AttributeType ::= OBJECT IDENTIFIER
	*
	* AttributeValue ::= ANY DEFINED BY AttributeType
	* </pre>
	* <p>
	* Instances of this class are designed to be immutable. However, since this
	* is an internal API we do not use defensive cloning for values for
	* performance reasons. It is the responsibility of the consumer to ensure
	* that no mutable elements are modified.
	*
	* @author Anne Anderson
	* @author Andreas Sterbenz
	* @since 1.4.2
	* @see CRLDistributionPointsExtension
	*/
	@:require(java4) public static var KEY_COMPROMISE(default, null) : Int;
	
	public static var CA_COMPROMISE(default, null) : Int;
	
	public static var AFFILIATION_CHANGED(default, null) : Int;
	
	public static var SUPERSEDED(default, null) : Int;
	
	public static var CESSATION_OF_OPERATION(default, null) : Int;
	
	public static var CERTIFICATE_HOLD(default, null) : Int;
	
	public static var PRIVILEGE_WITHDRAWN(default, null) : Int;
	
	public static var AA_COMPROMISE(default, null) : Int;
	
	/**
	* Constructor for the class using GeneralNames for DistributionPointName
	*
	* @param fullName the GeneralNames of the distribution point; may be null
	* @param reasons the CRL reasons included in the CRL at this distribution
	*        point; may be null
	* @param issuer the name(s) of the CRL issuer for the CRL at this
	*        distribution point; may be null
	*/
	@:overload public function new(fullName : sun.security.x509.GeneralNames, reasonFlags : java.NativeArray<Bool>, crlIssuer : sun.security.x509.GeneralNames) : Void;
	
	/**
	* Constructor for the class using RelativeDistinguishedName for
	* DistributionPointName
	*
	* @param relativeName the RelativeDistinguishedName of the distribution
	*        point; may not be null
	* @param reasons the CRL reasons included in the CRL at this distribution
	*        point; may be null
	* @param issuer the name(s) of the CRL issuer for the CRL at this
	*        distribution point; may not be null or empty.
	*/
	@:overload public function new(relativeName : sun.security.x509.RDN, reasonFlags : java.NativeArray<Bool>, crlIssuer : sun.security.x509.GeneralNames) : Void;
	
	/**
	* Create the object from the passed DER encoded form.
	*
	* @param val the DER encoded form of the DistributionPoint
	* @throws IOException on error
	*/
	@:overload public function new(val : sun.security.util.DerValue) : Void;
	
	/**
	* Return the full distribution point name or null if not set.
	*/
	@:overload public function getFullName() : sun.security.x509.GeneralNames;
	
	/**
	* Return the relative distribution point name or null if not set.
	*/
	@:overload public function getRelativeName() : sun.security.x509.RDN;
	
	/**
	* Return the reason flags or null if not set.
	*/
	@:overload public function getReasonFlags() : java.NativeArray<Bool>;
	
	/**
	* Return the CRL issuer name or null if not set.
	*/
	@:overload public function getCRLIssuer() : sun.security.x509.GeneralNames;
	
	/**
	* Write the DistributionPoint value to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the extension to.
	* @exception IOException on error.
	*/
	@:overload public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Compare an object to this DistributionPoint for equality.
	*
	* @param obj Object to be compared to this
	* @return true if objects match; false otherwise
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	/**
	* Return a printable string of the Distribution Point.
	*/
	@:overload public function toString() : String;
	
	
}
