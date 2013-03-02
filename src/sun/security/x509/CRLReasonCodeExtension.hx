package sun.security.x509;
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
/**
* The reasonCode is a non-critical CRL entry extension that identifies
* the reason for the certificate revocation. CAs are strongly
* encouraged to include reason codes in CRL entries; however, the
* reason code CRL entry extension should be absent instead of using the
* unspecified (0) reasonCode value.
* <p>The ASN.1 syntax for this is:
* <pre>
*  id-ce-cRLReason OBJECT IDENTIFIER ::= { id-ce 21 }
*
*  -- reasonCode ::= { CRLReason }
*
* CRLReason ::= ENUMERATED {
*    unspecified             (0),
*    keyCompromise           (1),
*    cACompromise            (2),
*    affiliationChanged      (3),
*    superseded              (4),
*    cessationOfOperation    (5),
*    certificateHold         (6),
*    removeFromCRL           (8),
*    privilegeWithdrawn      (9),
*    aACompromise           (10) }
* </pre>
* @author Hemma Prafullchandra
* @see Extension
* @see CertAttrSet
*/
extern class CRLReasonCodeExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
{
	/**
	* Attribute name and Reason codes
	*/
	public static var NAME(default, null) : String;
	
	public static var REASON(default, null) : String;
	
	public static var UNSPECIFIED(default, null) : Int;
	
	public static var KEY_COMPROMISE(default, null) : Int;
	
	public static var CA_COMPROMISE(default, null) : Int;
	
	public static var AFFLIATION_CHANGED(default, null) : Int;
	
	public static var SUPERSEDED(default, null) : Int;
	
	public static var CESSATION_OF_OPERATION(default, null) : Int;
	
	public static var CERTIFICATE_HOLD(default, null) : Int;
	
	public static var REMOVE_FROM_CRL(default, null) : Int;
	
	public static var PRIVILEGE_WITHDRAWN(default, null) : Int;
	
	public static var AA_COMPROMISE(default, null) : Int;
	
	/**
	* Create a CRLReasonCodeExtension with the passed in reason.
	* Criticality automatically set to false.
	*
	* @param reason the enumerated value for the reason code.
	*/
	@:overload public function new(reason : Int) : Void;
	
	/**
	* Create a CRLReasonCodeExtension with the passed in reason.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param reason the enumerated value for the reason code.
	*/
	@:overload public function new(critical : Bool, reason : Int) : Void;
	
	/**
	* Create the extension from the passed DER encoded value of the same.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value.
	* @exception ClassCastException if value is not an array of bytes
	* @exception IOException on error.
	*/
	@:overload public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Set the attribute value.
	*/
	@:overload public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Get the attribute value.
	*/
	@:overload public function get(name : String) : Dynamic;
	
	/**
	* Delete the attribute value.
	*/
	@:overload public function delete(name : String) : Void;
	
	/**
	* Returns a printable representation of the Reason code.
	*/
	@:overload public function toString() : String;
	
	/**
	* Write the extension to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the extension to.
	* @exception IOException on encoding errors.
	*/
	@:overload public function encode(out : java.io.OutputStream) : Void;
	
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
	* Return the reason as a CRLReason enum.
	*/
	@:overload public function getReasonCode() : java.security.cert.CRLReason;
	
	
}
