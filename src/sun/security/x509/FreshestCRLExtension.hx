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
* Represents the Freshest CRL Extension.
*
* <p>
* The extension identifies how delta CRL information for a
* complete CRL is obtained.
*
* <p>
* The extension is defined in Section 5.2.6 of
* <a href="http://www.ietf.org/rfc/rfc3280.txt">Internet X.509 PKI Certific
ate and Certificate Revocation List (CRL) Profile</a>.
*
* <p>
* Its ASN.1 definition is as follows:
* <pre>
*     id-ce-freshestCRL OBJECT IDENTIFIER ::=  { id-ce 46 }
*
*     FreshestCRL ::= CRLDistributionPoints
* </pre>
*
* @since 1.6
*/
@:require(java6) extern class FreshestCRLExtension extends sun.security.x509.CRLDistributionPointsExtension
{
	/**
	* Attribute name.
	*/
	public static var NAME(default, null) : String;
	
	/**
	* Creates a freshest CRL extension.
	* The criticality is set to false.
	*
	* @param distributionPoints the list of delta CRL distribution points.
	*/
	@:overload public function new(distributionPoints : java.util.List<sun.security.x509.DistributionPoint>) : Void;
	
	/**
	* Creates the extension from the passed DER encoded value of the same.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value.
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
