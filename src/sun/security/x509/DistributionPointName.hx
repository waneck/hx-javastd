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
extern class DistributionPointName
{
	/**
	* Creates a distribution point name using a full name.
	*
	* @param fullName the name for the distribution point.
	* @exception IllegalArgumentException if <code>fullName</code> is null.
	*/
	@:overload @:public public function new(fullName : sun.security.x509.GeneralNames) : Void;
	
	/**
	* Creates a distribution point name using a relative name.
	*
	* @param relativeName the name of the distribution point relative to
	*        the name of the issuer of the CRL.
	* @exception IllegalArgumentException if <code>relativeName</code> is null.
	*/
	@:overload @:public public function new(relativeName : sun.security.x509.RDN) : Void;
	
	/**
	* Creates a distribution point name from its DER-encoded form.
	*
	* @param encoding the DER-encoded value.
	* @throws IOException on decoding error.
	*/
	@:overload @:public public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Returns the full name for the distribution point or null if not set.
	*/
	@:overload @:public public function getFullName() : sun.security.x509.GeneralNames;
	
	/**
	* Returns the relative name for the distribution point or null if not set.
	*/
	@:overload @:public public function getRelativeName() : sun.security.x509.RDN;
	
	/**
	* Encodes the distribution point name and writes it to the DerOutputStream.
	*
	* @param out the output stream.
	* @exception IOException on encoding error.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Compare an object to this distribution point name for equality.
	*
	* @param obj Object to be compared to this
	* @return true if objects match; false otherwise
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code for this distribution point name.
	*
	* @return the hash code.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a printable string of the distribution point name.
	*/
	@:overload @:public public function toString() : String;
	
	
}
