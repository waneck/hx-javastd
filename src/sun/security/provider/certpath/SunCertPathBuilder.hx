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
extern class SunCertPathBuilder extends java.security.cert.CertPathBuilderSpi
{
	/**
	* Create an instance of <code>SunCertPathBuilder</code>.
	*
	* @throws CertPathBuilderException if an error occurs
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Attempts to build a certification path using the Sun build
	* algorithm from a trusted anchor(s) to a target subject, which must both
	* be specified in the input parameter set. By default, this method will
	* attempt to build in the forward direction. In order to build in the
	* reverse direction, the caller needs to pass in an instance of
	* SunCertPathBuilderParameters with the buildForward flag set to false.
	*
	* <p>The certification path that is constructed is validated
	* according to the PKIX specification.
	*
	* @param params the parameter set for building a path. Must be an instance
	*  of <code>PKIXBuilderParameters</code>.
	* @return a certification path builder result.
	* @exception CertPathBuilderException Exception thrown if builder is
	*  unable to build a complete certification path from the trusted anchor(s)
	*  to the target subject.
	* @throws InvalidAlgorithmParameterException if the given parameters are
	*  inappropriate for this certification path builder.
	*/
	@:overload @:public override public function engineBuild(params : java.security.cert.CertPathParameters) : java.security.cert.CertPathBuilderResult;
	
	
}
/**
* Comparator that orders CertStores so that local CertStores come before
* remote CertStores.
*/
@:native('sun$security$provider$certpath$SunCertPathBuilder$CertStoreComparator') @:internal extern class SunCertPathBuilder_CertStoreComparator implements java.util.Comparator<java.security.cert.CertStore>
{
	@:overload @:public public function compare(store1 : java.security.cert.CertStore, store2 : java.security.cert.CertStore) : Int;
	
	
}
