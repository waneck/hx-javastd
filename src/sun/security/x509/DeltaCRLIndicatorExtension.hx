package sun.security.x509;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
* Represents the Delta CRL Indicator Extension.
*
* <p>
* The extension identifies a CRL as being a delta CRL.
* Delta CRLs contain updates to revocation information previously distributed,
* rather than all the information that would appear in a complete CRL.
* The extension contains a CRL number that identifies the CRL, complete for a
* given scope, that was used as the starting point in the generation of
* this delta CRL.
*
* <p>
* The extension is defined in Section 5.2.4 of
* <a href="http://www.ietf.org/rfc/rfc3280.txt">Internet X.509 PKI Certific
ate and Certificate Revocation List (CRL) Profile</a>.
*
* <p>
* Its ASN.1 definition is as follows:
* <pre>
*     id-ce-deltaCRLIndicator OBJECT IDENTIFIER ::= { id-ce 27 }
*
*     BaseCRLNumber ::= CRLNumber
*     CRLNumber ::= INTEGER (0..MAX)
* </pre>
*
* @since 1.6
*/
@:require(java6) extern class DeltaCRLIndicatorExtension extends sun.security.x509.CRLNumberExtension
{
	/**
	* Attribute name.
	*/
	@:native('NAME') public static var _NAME(default, null) : String;
	
	/**
	* Creates a delta CRL indicator extension with the integer value .
	* The criticality is set to true.
	*
	* @param crlNum the value to be set for the extension.
	*/
	@:overload public function new(crlNum : Int) : Void;
	
	/**
	* Creates a delta CRL indictor extension with the BigInteger value .
	* The criticality is set to true.
	*
	* @param crlNum the value to be set for the extension.
	*/
	@:overload public function new(crlNum : java.math.BigInteger) : Void;
	
	/**
	* Creates the extension from the passed DER encoded value of the same.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value.
	* @exception ClassCastException if value is not an array of bytes
	* @exception IOException on decoding error.
	*/
	@:overload public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Writes the extension to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the extension to.
	* @exception IOException on encoding errors.
	*/
	@:overload override public function encode(out : java.io.OutputStream) : Void;
	
	
}