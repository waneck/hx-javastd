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
extern class X509CRLEntryImpl extends java.security.cert.X509CRLEntry implements java.lang.Comparable<X509CRLEntryImpl>
{
	/**
	* Constructs a revoked certificate entry using the given
	* serial number and revocation date.
	*
	* @param num the serial number of the revoked certificate.
	* @param date the Date on which revocation took place.
	*/
	@:overload public function new(num : java.math.BigInteger, date : java.util.Date) : Void;
	
	/**
	* Constructs a revoked certificate entry using the given
	* serial number, revocation date and the entry
	* extensions.
	*
	* @param num the serial number of the revoked certificate.
	* @param date the Date on which revocation took place.
	* @param crlEntryExts the extensions for this entry.
	*/
	@:overload public function new(num : java.math.BigInteger, date : java.util.Date, crlEntryExts : sun.security.x509.CRLExtensions) : Void;
	
	/**
	* Unmarshals a revoked certificate from its encoded form.
	*
	* @param revokedCert the encoded bytes.
	* @exception CRLException on parsing errors.
	*/
	@:overload public function new(revokedCert : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Unmarshals a revoked certificate from its encoded form.
	*
	* @param derVal the DER value containing the revoked certificate.
	* @exception CRLException on parsing errors.
	*/
	@:overload public function new(derValue : sun.security.util.DerValue) : Void;
	
	/**
	* Returns true if this revoked certificate entry has
	* extensions, otherwise false.
	*
	* @return true if this CRL entry has extensions, otherwise
	* false.
	*/
	@:overload override public function hasExtensions() : Bool;
	
	/**
	* Encodes the revoked certificate to an output stream.
	*
	* @param outStrm an output stream to which the encoded revoked
	* certificate is written.
	* @exception CRLException on encoding errors.
	*/
	@:overload public function encode(outStrm : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Returns the ASN.1 DER-encoded form of this CRL Entry,
	* which corresponds to the inner SEQUENCE.
	*
	* @exception CRLException if an encoding error occurs.
	*/
	@:overload override public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override public function getCertificateIssuer() : javax.security.auth.x500.X500Principal;
	
	/**
	* Gets the serial number from this X509CRLEntry,
	* i.e. the <em>userCertificate</em>.
	*
	* @return the serial number.
	*/
	@:overload override public function getSerialNumber() : java.math.BigInteger;
	
	/**
	* Gets the revocation date from this X509CRLEntry,
	* the <em>revocationDate</em>.
	*
	* @return the revocation date.
	*/
	@:overload override public function getRevocationDate() : java.util.Date;
	
	/**
	* This method is the overridden implementation of the getRevocationReason
	* method in X509CRLEntry. It is better performance-wise since it returns
	* cached values.
	*/
	@:overload override public function getRevocationReason() : java.security.cert.CRLReason;
	
	/**
	* This static method is the default implementation of the
	* getRevocationReason method in X509CRLEntry.
	*/
	@:native('getRevocationReason') @:overload public static function _getRevocationReason(crlEntry : java.security.cert.X509CRLEntry) : java.security.cert.CRLReason;
	
	/**
	* get Reason Code from CRL entry.
	*
	* @returns Integer or null, if no such extension
	* @throws IOException on error
	*/
	@:overload public function getReasonCode() : Null<Int>;
	
	/**
	* Returns a printable string of this revoked certificate.
	*
	* @return value of this revoked certificate in a printable form.
	*/
	@:overload override public function toString() : String;
	
	/**
	* Return true if a critical extension is found that is
	* not supported, otherwise return false.
	*/
	@:overload override public function hasUnsupportedCriticalExtension() : Bool;
	
	/**
	* Gets a Set of the extension(s) marked CRITICAL in this
	* X509CRLEntry.  In the returned set, each extension is
	* represented by its OID string.
	*
	* @return a set of the extension oid strings in the
	* Object that are marked critical.
	*/
	@:overload override public function getCriticalExtensionOIDs() : java.util.Set<String>;
	
	/**
	* Gets a Set of the extension(s) marked NON-CRITICAL in this
	* X509CRLEntry. In the returned set, each extension is
	* represented by its OID string.
	*
	* @return a set of the extension oid strings in the
	* Object that are marked critical.
	*/
	@:overload override public function getNonCriticalExtensionOIDs() : java.util.Set<String>;
	
	/**
	* Gets the DER encoded OCTET string for the extension value
	* (<em>extnValue</em>) identified by the passed in oid String.
	* The <code>oid</code> string is
	* represented by a set of positive whole number separated
	* by ".", that means,<br>
	* &lt;positive whole number&gt;.&lt;positive whole number&gt;.&lt;positive
	* whole number&gt;.&lt;...&gt;
	*
	* @param oid the Object Identifier value for the extension.
	* @return the DER encoded octet string of the extension value.
	*/
	@:overload override public function getExtensionValue(oid : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* get an extension
	*
	* @param oid ObjectIdentifier of extension desired
	* @returns Extension of type <extension> or null, if not found
	*/
	@:overload public function getExtension(oid : sun.security.util.ObjectIdentifier) : sun.security.x509.Extension;
	
	/**
	* Utility method to convert an arbitrary instance of X509CRLEntry
	* to a X509CRLEntryImpl. Does a cast if possible, otherwise reparses
	* the encoding.
	*/
	@:overload public static function toImpl(entry : java.security.cert.X509CRLEntry) : X509CRLEntryImpl;
	
	/**
	* Returns all extensions for this entry in a map
	* @return the extension map, can be empty, but not null
	*/
	@:overload public function getExtensions() : java.util.Map<String, java.security.cert.Extension>;
	
	@:overload public function compareTo(that : X509CRLEntryImpl) : Int;
	
	
}
