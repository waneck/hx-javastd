package sun.security.provider.certpath;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ForwardBuilder extends sun.security.provider.certpath.Builder
{
	
}
/**
* This inner class compares 2 PKIX certificates according to which
* should be tried first when building a path from the target.
* The preference order is as follows:
*
* Given trusted certificate(s):
*    Subject:ou=D,ou=C,o=B,c=A
*
* Preference order for current cert:
*
* 1) Issuer matches a trusted subject
*    Issuer: ou=D,ou=C,o=B,c=A
*
* 2) Issuer is a descendant of a trusted subject (in order of
*    number of links to the trusted subject)
*    a) Issuer: ou=E,ou=D,ou=C,o=B,c=A        [links=1]
*    b) Issuer: ou=F,ou=E,ou=D,ou=C,ou=B,c=A  [links=2]
*
* 3) Issuer is an ancestor of a trusted subject (in order of number of
*    links to the trusted subject)
*    a) Issuer: ou=C,o=B,c=A [links=1]
*    b) Issuer: o=B,c=A      [links=2]
*
* 4) Issuer is in the same namespace as a trusted subject (in order of
*    number of links to the trusted subject)
*    a) Issuer: ou=G,ou=C,o=B,c=A  [links=2]
*    b) Issuer: ou=H,o=B,c=A       [links=3]
*
* 5) Issuer is an ancestor of certificate subject (in order of number
*    of links to the certificate subject)
*    a) Issuer:  ou=K,o=J,c=A
*       Subject: ou=L,ou=K,o=J,c=A
*    b) Issuer:  o=J,c=A
*       Subject: ou=L,ou=K,0=J,c=A
*
* 6) Any other certificates
*/
@:native('sun$security$provider$certpath$ForwardBuilder$PKIXCertComparator') @:internal extern class ForwardBuilder_PKIXCertComparator implements java.util.Comparator<java.security.cert.X509Certificate>
{
	/**
	* @param oCert1 First X509Certificate to be compared
	* @param oCert2 Second X509Certificate to be compared
	* @return -1 if oCert1 is preferable to oCert2, or
	*            if oCert1 and oCert2 are equally preferable (in this
	*            case it doesn't matter which is preferable, but we don't
	*            return 0 because the comparator would behave strangely
	*            when used in a SortedSet).
	*          1 if oCert2 is preferable to oCert1
	*          0 if oCert1.equals(oCert2). We only return 0 if the
	*          certs are equal so that this comparator behaves
	*          correctly when used in a SortedSet.
	* @throws ClassCastException if either argument is not of type
	* X509Certificate
	*/
	@:overload @:public public function compare(oCert1 : java.security.cert.X509Certificate, oCert2 : java.security.cert.X509Certificate) : Int;
	
	
}
