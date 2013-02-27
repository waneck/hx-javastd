package java.security.cert;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class PKIXCertPathBuilderResult extends java.security.cert.PKIXCertPathValidatorResult implements java.security.cert.CertPathBuilderResult
{
	/**
	* Creates an instance of <code>PKIXCertPathBuilderResult</code>
	* containing the specified parameters.
	*
	* @param certPath the validated <code>CertPath</code>
	* @param trustAnchor a <code>TrustAnchor</code> describing the CA that
	* served as a trust anchor for the certification path
	* @param policyTree the immutable valid policy tree, or <code>null</code>
	* if there are no valid policies
	* @param subjectPublicKey the public key of the subject
	* @throws NullPointerException if the <code>certPath</code>,
	* <code>trustAnchor</code> or <code>subjectPublicKey</code> parameters
	* are <code>null</code>
	*/
	@:overload public function new(certPath : java.security.cert.CertPath, trustAnchor : java.security.cert.TrustAnchor, policyTree : java.security.cert.PolicyNode, subjectPublicKey : java.security.PublicKey) : Void;
	
	/**
	* Returns the built and validated certification path. The
	* <code>CertPath</code> object does not include the trust anchor.
	* Instead, use the {@link #getTrustAnchor() getTrustAnchor()} method to
	* obtain the <code>TrustAnchor</code> that served as the trust anchor
	* for the certification path.
	*
	* @return the built and validated <code>CertPath</code> (never
	* <code>null</code>)
	*/
	@:overload public function getCertPath() : java.security.cert.CertPath;
	
	/**
	* Return a printable representation of this
	* <code>PKIXCertPathBuilderResult</code>.
	*
	* @return a <code>String</code> describing the contents of this
	*         <code>PKIXCertPathBuilderResult</code>
	*/
	@:overload override public function toString() : String;
	
	
}
