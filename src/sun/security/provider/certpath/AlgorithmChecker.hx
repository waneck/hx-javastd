package sun.security.provider.certpath;
/*
* Copyright (c) 2009, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AlgorithmChecker extends java.security.cert.PKIXCertPathChecker
{
	/**
	* Create a new <code>AlgorithmChecker</code> with the algorithm
	* constraints specified in security property
	* "jdk.certpath.disabledAlgorithms".
	*
	* @param anchor the trust anchor selected to validate the target
	*     certificate
	*/
	@:overload @:public public function new(anchor : java.security.cert.TrustAnchor) : Void;
	
	/**
	* Create a new <code>AlgorithmChecker</code> with the
	* given {@code AlgorithmConstraints}.
	* <p>
	* Note that this constructor will be used to check a certification
	* path where the trust anchor is unknown, or a certificate list which may
	* contain the trust anchor. This constructor is used by SunJSSE.
	*
	* @param constraints the algorithm constraints (or null)
	*/
	@:overload @:public public function new(constraints : java.security.AlgorithmConstraints) : Void;
	
	/**
	* Create a new <code>AlgorithmChecker</code> with the
	* given <code>TrustAnchor</code> and <code>AlgorithmConstraints</code>.
	*
	* @param anchor the trust anchor selected to validate the target
	*     certificate
	* @param constraints the algorithm constraints (or null)
	*
	* @throws IllegalArgumentException if the <code>anchor</code> is null
	*/
	@:overload @:public public function new(anchor : java.security.cert.TrustAnchor, constraints : java.security.AlgorithmConstraints) : Void;
	
	@:overload @:public override public function init(forward : Bool) : Void;
	
	@:overload @:public override public function isForwardCheckingSupported() : Bool;
	
	@:overload @:public override public function getSupportedExtensions() : java.util.Set<String>;
	
	@:overload @:public override public function check(cert : java.security.cert.Certificate, unresolvedCritExts : java.util.Collection<String>) : Void;
	
	
}
