package sun.security.provider.certpath;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PolicyChecker extends java.security.cert.PKIXCertPathChecker
{
	/**
	* Initializes the internal state of the checker from parameters
	* specified in the constructor
	*
	* @param forward a boolean indicating whether this checker should
	* be initialized capable of building in the forward direction
	* @exception CertPathValidatorException Exception thrown if user
	* wants to enable forward checking and forward checking is not supported.
	*/
	@:overload override public function init(forward : Bool) : Void;
	
	/**
	* Checks if forward checking is supported. Forward checking refers
	* to the ability of the PKIXCertPathChecker to perform its checks
	* when presented with certificates in the forward direction (from
	* target to anchor).
	*
	* @return true if forward checking is supported, false otherwise
	*/
	@:overload override public function isForwardCheckingSupported() : Bool;
	
	/**
	* Gets an immutable Set of the OID strings for the extensions that
	* the PKIXCertPathChecker supports (i.e. recognizes, is able to
	* process), or null if no extensions are
	* supported. All OID strings that a PKIXCertPathChecker might
	* possibly be able to process should be included.
	*
	* @return the Set of extensions supported by this PKIXCertPathChecker,
	* or null if no extensions are supported
	*/
	@:overload override public function getSupportedExtensions() : java.util.Set<String>;
	
	/**
	* Performs the policy processing checks on the certificate using its
	* internal state.
	*
	* @param cert the Certificate to be processed
	* @param unresCritExts the unresolved critical extensions
	* @exception CertPathValidatorException Exception thrown if
	* the certificate does not verify.
	*/
	@:overload override public function check(cert : java.security.cert.Certificate, unresCritExts : java.util.Collection<String>) : Void;
	
	
}
