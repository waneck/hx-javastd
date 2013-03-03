package java.security.cert;
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
extern class PKIXBuilderParameters extends java.security.cert.PKIXParameters
{
	/**
	* Creates an instance of <code>PKIXBuilderParameters</code> with
	* the specified <code>Set</code> of most-trusted CAs.
	* Each element of the set is a {@link TrustAnchor TrustAnchor}.
	*
	* <p>Note that the <code>Set</code> is copied to protect against
	* subsequent modifications.
	*
	* @param trustAnchors a <code>Set</code> of <code>TrustAnchor</code>s
	* @param targetConstraints a <code>CertSelector</code> specifying the
	* constraints on the target certificate
	* @throws InvalidAlgorithmParameterException if <code>trustAnchors</code>
	* is empty <code>(trustAnchors.isEmpty() == true)</code>
	* @throws NullPointerException if <code>trustAnchors</code> is
	* <code>null</code>
	* @throws ClassCastException if any of the elements of
	* <code>trustAnchors</code> are not of type
	* <code>java.security.cert.TrustAnchor</code>
	*/
	@:overload @:public public function new(trustAnchors : java.util.Set<java.security.cert.TrustAnchor>, targetConstraints : java.security.cert.CertSelector) : Void;
	
	/**
	* Creates an instance of <code>PKIXBuilderParameters</code> that
	* populates the set of most-trusted CAs from the trusted
	* certificate entries contained in the specified <code>KeyStore</code>.
	* Only keystore entries that contain trusted <code>X509Certificate</code>s
	* are considered; all other certificate types are ignored.
	*
	* @param keystore a <code>KeyStore</code> from which the set of
	* most-trusted CAs will be populated
	* @param targetConstraints a <code>CertSelector</code> specifying the
	* constraints on the target certificate
	* @throws KeyStoreException if <code>keystore</code> has not been
	* initialized
	* @throws InvalidAlgorithmParameterException if <code>keystore</code> does
	* not contain at least one trusted certificate entry
	* @throws NullPointerException if <code>keystore</code> is
	* <code>null</code>
	*/
	@:overload @:public public function new(keystore : java.security.KeyStore, targetConstraints : java.security.cert.CertSelector) : Void;
	
	/**
	* Sets the value of the maximum number of non-self-issued intermediate
	* certificates that may exist in a certification path. A certificate
	* is self-issued if the DNs that appear in the subject and issuer
	* fields are identical and are not empty. Note that the last certificate
	* in a certification path is not an intermediate certificate, and is not
	* included in this limit. Usually the last certificate is an end entity
	* certificate, but it can be a CA certificate. A PKIX
	* <code>CertPathBuilder</code> instance must not build
	* paths longer than the length specified.
	*
	* <p> A value of 0 implies that the path can only contain
	* a single certificate. A value of -1 implies that the
	* path length is unconstrained (i.e. there is no maximum).
	* The default maximum path length, if not specified, is 5.
	* Setting a value less than -1 will cause an exception to be thrown.
	*
	* <p> If any of the CA certificates contain the
	* <code>BasicConstraintsExtension</code>, the value of the
	* <code>pathLenConstraint</code> field of the extension overrides
	* the maximum path length parameter whenever the result is a
	* certification path of smaller length.
	*
	* @param maxPathLength the maximum number of non-self-issued intermediate
	*  certificates that may exist in a certification path
	* @throws InvalidParameterException if <code>maxPathLength</code> is set
	*  to a value less than -1
	*
	* @see #getMaxPathLength
	*/
	@:overload @:public public function setMaxPathLength(maxPathLength : Int) : Void;
	
	/**
	* Returns the value of the maximum number of intermediate non-self-issued
	* certificates that may exist in a certification path. See
	* the {@link #setMaxPathLength} method for more details.
	*
	* @return the maximum number of non-self-issued intermediate certificates
	*  that may exist in a certification path, or -1 if there is no limit
	*
	* @see #setMaxPathLength
	*/
	@:overload @:public public function getMaxPathLength() : Int;
	
	/**
	* Returns a formatted string describing the parameters.
	*
	* @return a formatted string describing the parameters
	*/
	@:overload @:public override public function toString() : String;
	
	
}
