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
extern class PKIXCertPathValidator extends java.security.cert.CertPathValidatorSpi
{
	/**
	* Default constructor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Validates a certification path consisting exclusively of
	* <code>X509Certificate</code>s using the PKIX validation algorithm,
	* which uses the specified input parameter set.
	* The input parameter set must be a <code>PKIXParameters</code> object.
	*
	* @param cp the X509 certification path
	* @param param the input PKIX parameter set
	* @return the result
	* @exception CertPathValidatorException Exception thrown if cert path
	* does not validate.
	* @exception InvalidAlgorithmParameterException if the specified
	* parameters are inappropriate for this certification path validator
	*/
	@:overload @:public override public function engineValidate(cp : java.security.cert.CertPath, param : java.security.cert.CertPathParameters) : java.security.cert.CertPathValidatorResult;
	
	
}
