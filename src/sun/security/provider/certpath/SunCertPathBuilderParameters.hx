package sun.security.provider.certpath;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
* This class specifies the set of parameters used as input for the Sun
* certification path build algorithm. It is identical to PKIXBuilderParameters
* with the addition of a <code>buildForward</code> parameter which allows
* the caller to specify whether or not the path should be constructed in
* the forward direction.
*
* The default for the <code>buildForward</code> parameter is
* true, which means that the build algorithm should construct paths
* from the target subject back to the trusted anchor.
*
* @since       1.4
* @author      Sean Mullan
* @author      Yassir Elley
*/
@:require(java4) extern class SunCertPathBuilderParameters extends java.security.cert.PKIXBuilderParameters
{
	/**
	* Creates an instance of <code>SunCertPathBuilderParameters</code> with the
	* specified parameter values.
	*
	* @param trustAnchors a <code>Set</code> of <code>TrustAnchor</code>s
	* @param targetConstraints a <code>CertSelector</code> specifying the
	* constraints on the target certificate
	* @throws InvalidAlgorithmParameterException if the specified
	* <code>Set</code> is empty <code>(trustAnchors.isEmpty() == true)</code>
	* @throws NullPointerException if the specified <code>Set</code> is
	* <code>null</code>
	* @throws ClassCastException if any of the elements in the <code>Set</code>
	* are not of type <code>java.security.cert.TrustAnchor</code>
	*/
	@:overload @:public public function new(trustAnchors : java.util.Set<java.security.cert.TrustAnchor>, targetConstraints : java.security.cert.CertSelector) : Void;
	
	/**
	* Creates an instance of <code>SunCertPathBuilderParameters</code> that
	* uses the specified <code>KeyStore</code> to populate the set
	* of most-trusted CA certificates.
	*
	* @param keystore A keystore from which the set of most-trusted
	* CA certificates will be populated.
	* @param targetConstraints a <code>CertSelector</code> specifying the
	* constraints on the target certificate
	* @throws KeyStoreException if the keystore has not been initialized.
	* @throws InvalidAlgorithmParameterException if the keystore does
	* not contain at least one trusted certificate entry
	* @throws NullPointerException if the keystore is <code>null</code>
	*/
	@:overload @:public public function new(keystore : java.security.KeyStore, targetConstraints : java.security.cert.CertSelector) : Void;
	
	/**
	* Returns the value of the buildForward flag.
	*
	* @return the value of the buildForward flag
	*/
	@:overload @:public public function getBuildForward() : Bool;
	
	/**
	* Sets the value of the buildForward flag. If true, paths
	* are built from the target subject to the trusted anchor.
	* If false, paths are built from the trusted anchor to the
	* target subject. The default value if not specified is true.
	*
	* @param buildForward the value of the buildForward flag
	*/
	@:overload @:public public function setBuildForward(buildForward : Bool) : Void;
	
	/**
	* Returns a formatted string describing the parameters.
	*
	* @return a formatted string describing the parameters.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
