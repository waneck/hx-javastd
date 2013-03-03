package javax.crypto;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
* JCE has two pairs of jurisdiction policy files: one represents U.S. export
* laws, and the other represents the local laws of the country where the
* JCE will be used.
*
* The jurisdiction policy file has the same syntax as JDK policy files except
* that JCE has new permission classes called javax.crypto.CryptoPermission
* and javax.crypto.CryptoAllPermission.
*
* The format of a permission entry in the jurisdiction policy file is:
*
*   permission <crypto permission class name>[, <algorithm name>
*              [[, <exemption mechanism name>][, <maxKeySize>
*              [, <AlgrithomParameterSpec class name>, <parameters
*              for constructing an AlgrithomParameterSpec object>]]]];
*
* @author Sharon Liu
*
* @see java.security.Permissions
* @see java.security.spec.AlgrithomParameterSpec
* @see javax.crypto.CryptoPermission
* @see javax.crypto.CryptoAllPermission
* @see javax.crypto.CryptoPermissions
* @since 1.4
*/
@:require(java4) @:internal extern class CryptoPolicyParser
{
	
}
/**
* Each grant entry in the policy configuration file is  represented by a
* GrantEntry object.  <p>
*
* <p>
* For example, the entry
* <pre>
*      grant {
*       permission javax.crypto.CryptoPermission "DES", 56;
*      };
*
* </pre>
* is represented internally
* <pre>
*
* pe = new CryptoPermissionEntry("javax.crypto.CryptoPermission",
*                           "DES", 56);
*
* ge = new GrantEntry();
*
* ge.add(pe);
*
* </pre>
*
* @see java.security.Permission
* @see javax.crypto.CryptoPermission
* @see javax.crypto.CryptoPermissions
*/
@:native('javax$crypto$CryptoPolicyParser$GrantEntry') @:internal extern class CryptoPolicyParser_GrantEntry
{
	
}
/**
* Each crypto permission entry in the policy configuration file is
* represented by a CryptoPermissionEntry object.  <p>
*
* <p>
* For example, the entry
* <pre>
*     permission javax.crypto.CryptoPermission "DES", 56;
* </pre>
* is represented internally
* <pre>
*
* pe = new CryptoPermissionEntry("javax.crypto.cryptoPermission",
*                           "DES", 56);
* </pre>
*
* @see java.security.Permissions
* @see javax.crypto.CryptoPermission
* @see javax.crypto.CryptoAllPermission
*/
@:native('javax$crypto$CryptoPolicyParser$CryptoPermissionEntry') @:internal extern class CryptoPolicyParser_CryptoPermissionEntry
{
	/**
	* Calculates a hash code value for the object.  Objects
	* which are equal will also have the same hashcode.
	*/
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
@:native('javax$crypto$CryptoPolicyParser$ParsingException') @:internal extern class CryptoPolicyParser_ParsingException extends java.security.GeneralSecurityException
{
	
}
