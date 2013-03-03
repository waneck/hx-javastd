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
extern class PKIXCertPathChecker implements java.lang.Cloneable
{
	/**
	* Default constructor.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Initializes the internal state of this <code>PKIXCertPathChecker</code>.
	* <p>
	* The <code>forward</code> flag specifies the order that
	* certificates will be passed to the {@link #check check} method
	* (forward or reverse). A <code>PKIXCertPathChecker</code> <b>must</b>
	* support reverse checking and <b>may</b> support forward checking.
	*
	* @param forward the order that certificates are presented to
	* the <code>check</code> method. If <code>true</code>, certificates
	* are presented from target to most-trusted CA (forward); if
	* <code>false</code>, from most-trusted CA to target (reverse).
	* @throws CertPathValidatorException if this
	* <code>PKIXCertPathChecker</code> is unable to check certificates in
	* the specified order; it should never be thrown if the forward flag
	* is false since reverse checking must be supported
	*/
	@:overload @:public @:abstract public function init(forward : Bool) : Void;
	
	/**
	* Indicates if forward checking is supported. Forward checking refers
	* to the ability of the <code>PKIXCertPathChecker</code> to perform
	* its checks when certificates are presented to the <code>check</code>
	* method in the forward direction (from target to most-trusted CA).
	*
	* @return <code>true</code> if forward checking is supported,
	* <code>false</code> otherwise
	*/
	@:overload @:public @:abstract public function isForwardCheckingSupported() : Bool;
	
	/**
	* Returns an immutable <code>Set</code> of X.509 certificate extensions
	* that this <code>PKIXCertPathChecker</code> supports (i.e. recognizes, is
	* able to process), or <code>null</code> if no extensions are supported.
	* <p>
	* Each element of the set is a <code>String</code> representing the
	* Object Identifier (OID) of the X.509 extension that is supported.
	* The OID is represented by a set of nonnegative integers separated by
	* periods.
	* <p>
	* All X.509 certificate extensions that a <code>PKIXCertPathChecker</code>
	* might possibly be able to process should be included in the set.
	*
	* @return an immutable <code>Set</code> of X.509 extension OIDs (in
	* <code>String</code> format) supported by this
	* <code>PKIXCertPathChecker</code>, or <code>null</code> if no
	* extensions are supported
	*/
	@:overload @:public @:abstract public function getSupportedExtensions() : java.util.Set<String>;
	
	/**
	* Performs the check(s) on the specified certificate using its internal
	* state and removes any critical extensions that it processes from the
	* specified collection of OID strings that represent the unresolved
	* critical extensions. The certificates are presented in the order
	* specified by the <code>init</code> method.
	*
	* @param cert the <code>Certificate</code> to be checked
	* @param unresolvedCritExts a <code>Collection</code> of OID strings
	* representing the current set of unresolved critical extensions
	* @exception CertPathValidatorException if the specified certificate does
	* not pass the check
	*/
	@:overload @:public @:abstract public function check(cert : java.security.cert.Certificate, unresolvedCritExts : java.util.Collection<String>) : Void;
	
	/**
	* Returns a clone of this object. Calls the <code>Object.clone()</code>
	* method.
	* All subclasses which maintain state must support and
	* override this method, if necessary.
	*
	* @return a copy of this <code>PKIXCertPathChecker</code>
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
