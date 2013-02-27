package sun.security.provider;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Defines the entries of the SUN provider.
*
* Algorithms supported, and their names:
*
* - SHA is the message digest scheme described in FIPS 180-1.
*   Aliases for SHA are SHA-1 and SHA1.
*
* - SHA1withDSA is the signature scheme described in FIPS 186.
*   (SHA used in DSA is SHA-1: FIPS 186 with Change No 1.)
*   Aliases for SHA1withDSA are DSA, DSS, SHA/DSA, SHA-1/DSA, SHA1/DSA,
*   SHAwithDSA, DSAWithSHA1, and the object
*   identifier strings "OID.1.3.14.3.2.13", "OID.1.3.14.3.2.27" and
*   "OID.1.2.840.10040.4.3".
*
* - DSA is the key generation scheme as described in FIPS 186.
*   Aliases for DSA include the OID strings "OID.1.3.14.3.2.12"
*   and "OID.1.2.840.10040.4.1".
*
* - MD5 is the message digest scheme described in RFC 1321.
*   There are no aliases for MD5.
*
* - X.509 is the certificate factory type for X.509 certificates
*   and CRLs. Aliases for X.509 are X509.
*
* - PKIX is the certification path validation algorithm described
*   in RFC 3280. The ValidationAlgorithm attribute notes the
*   specification that this provider implements.
*
* - LDAP is the CertStore type for LDAP repositories. The
*   LDAPSchema attribute notes the specification defining the
*   schema that this provider uses to find certificates and CRLs.
*
* - JavaPolicy is the default file-based Policy type.
*
* - JavaLoginConfig is the default file-based LoginModule Configuration type.
*/
@:internal extern class SunEntries
{
	
}
