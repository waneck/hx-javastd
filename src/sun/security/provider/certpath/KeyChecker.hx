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
@:internal extern class KeyChecker extends java.security.cert.PKIXCertPathChecker
{
	/**
	* Initializes the internal state of the checker from parameters
	* specified in the constructor
	*/
	@:overload override public function init(forward : Bool) : Void;
	
	@:overload @:final override public function isForwardCheckingSupported() : Bool;
	
	@:overload override public function getSupportedExtensions() : java.util.Set<String>;
	
	/**
	* Checks that keyUsage and target constraints are satisfied by
	* the specified certificate.
	*
	* @param cert the Certificate
	* @param unresolvedCritExts the unresolved critical extensions
	* @exception CertPathValidatorException Exception thrown if certificate
	* does not verify
	*/
	@:overload override public function check(cert : java.security.cert.Certificate, unresCritExts : java.util.Collection<String>) : Void;
	
	
}
