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
@:internal extern class ReverseBuilder extends sun.security.provider.certpath.Builder
{
	
}
/*
* This inner class compares 2 PKIX certificates according to which
* should be tried first when building a path to the target. For
* now, the algorithm is to look at name constraints in each cert and those
* which constrain the path closer to the target should be
* ranked higher. Later, we may want to consider other components,
* such as key identifiers.
*/
@:native('sun$security$provider$certpath$ReverseBuilder$PKIXCertComparator') @:internal extern class ReverseBuilder_PKIXCertComparator implements java.util.Comparator<java.security.cert.X509Certificate>
{
	@:overload @:public public function compare(cert1 : java.security.cert.X509Certificate, cert2 : java.security.cert.X509Certificate) : Int;
	
	
}
