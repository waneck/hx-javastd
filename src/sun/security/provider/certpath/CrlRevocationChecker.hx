package sun.security.provider.certpath;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CrlRevocationChecker extends java.security.cert.PKIXCertPathChecker
{
	/**
	* Initializes the internal state of the checker from parameters
	* specified in the constructor
	*/
	@:overload @:public override public function init(forward : Bool) : Void;
	
	@:overload @:public override public function isForwardCheckingSupported() : Bool;
	
	@:overload @:public override public function getSupportedExtensions() : java.util.Set<String>;
	
	/**
	* Performs the revocation status check on the certificate using
	* its internal state.
	*
	* @param cert the Certificate
	* @param unresolvedCritExts a Collection of the unresolved critical
	* extensions
	* @exception CertPathValidatorException Exception thrown if
	* certificate does not verify
	*/
	@:overload @:public override public function check(cert : java.security.cert.Certificate, unresolvedCritExts : java.util.Collection<String>) : Void;
	
	/**
	* Performs the revocation status check on the certificate using
	* the provided state variables, as well as the constant internal
	* data.
	*
	* @param currCert the Certificate
	* @param prevKey the previous PublicKey in the chain
	* @param signFlag a boolean as returned from the last call, or true
	* if this is the first cert in the chain
	* @return a boolean specifying if the cert is allowed to vouch for the
	* validity of a CRL for the next iteration
	* @exception CertPathValidatorException Exception thrown if
	*            certificate does not verify.
	*/
	@:overload @:public public function check(currCert : java.security.cert.X509Certificate, prevKey : java.security.PublicKey, signFlag : Bool) : Bool;
	
	
}
/*
* This inner class extends the X509CertSelector to add an additional
* check to make sure the subject public key isn't on a particular list.
* This class is used by buildToNewKey() to make sure the builder doesn't
* end up with a CertPath to a public key that has already been rejected.
*/
@:native('sun$security$provider$certpath$CrlRevocationChecker$RejectKeySelector') @:internal extern class CrlRevocationChecker_RejectKeySelector extends java.security.cert.X509CertSelector
{
	/**
	* Decides whether a <code>Certificate</code> should be selected.
	*
	* @param cert the <code>Certificate</code> to be checked
	* @return <code>true</code> if the <code>Certificate</code> should be
	*         selected, <code>false</code> otherwise
	*/
	@:overload @:public override public function match(cert : java.security.cert.Certificate) : Bool;
	
	/**
	* Return a printable representation of the <code>CertSelector</code>.
	*
	* @return a <code>String</code> describing the contents of the
	*         <code>CertSelector</code>
	*/
	@:overload @:public override public function toString() : String;
	
	
}
