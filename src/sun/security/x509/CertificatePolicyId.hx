package sun.security.x509;
/*
* Copyright (c) 1997, 2000, Oracle and/or its affiliates. All rights reserved.
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
* Represent the CertificatePolicyId ASN.1 object.
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
*/
extern class CertificatePolicyId
{
	/**
	* Create a CertificatePolicyId with the ObjectIdentifier.
	*
	* @param id the ObjectIdentifier for the policy id.
	*/
	@:overload @:public public function new(id : sun.security.util.ObjectIdentifier) : Void;
	
	/**
	* Create the object from its Der encoded value.
	*
	* @param val the DER encoded value for the same.
	*/
	@:overload @:public public function new(val : sun.security.util.DerValue) : Void;
	
	/**
	* Return the value of the CertificatePolicyId as an ObjectIdentifier.
	*/
	@:overload @:public public function getIdentifier() : sun.security.util.ObjectIdentifier;
	
	/**
	* Returns a printable representation of the CertificatePolicyId.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Write the CertificatePolicyId to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the object to.
	* @exception IOException on errors.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Compares this CertificatePolicyId with another, for
	* equality. Uses ObjectIdentifier.equals() as test for
	* equality.
	*
	* @return true iff the ids are identical.
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this object.
	*
	* @return a hash code value
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
