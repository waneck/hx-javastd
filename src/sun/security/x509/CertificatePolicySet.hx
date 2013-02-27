package sun.security.x509;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
* This class defines the certificate policy set ASN.1 object.
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
*/
extern class CertificatePolicySet
{
	/**
	* The default constructor for this class.
	*
	* @param ids the sequence of CertificatePolicyId's.
	*/
	@:overload public function new(ids : java.util.Vector<sun.security.x509.CertificatePolicyId>) : Void;
	
	/**
	* Create the object from the DerValue.
	*
	* @param in the passed DerInputStream.
	* @exception IOException on decoding errors.
	*/
	@:overload public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	* Return printable form of the object.
	*/
	@:overload public function toString() : String;
	
	/**
	* Encode the policy set to the output stream.
	*
	* @param out the DerOutputStream to encode the data to.
	*/
	@:overload public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Return the sequence of CertificatePolicyIds.
	*
	* @return A List containing the CertificatePolicyId objects.
	*
	*/
	@:overload public function getCertPolicyIds() : java.util.List<sun.security.x509.CertificatePolicyId>;
	
	
}