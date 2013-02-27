package sun.security.validator;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class PKIXValidator extends sun.security.validator.Validator
{
	@:overload override public function getTrustedCertificates() : java.util.Collection<java.security.cert.X509Certificate>;
	
	/**
	* Returns the length of the last certification path that is validated by
	* CertPathValidator. This is intended primarily as a callback mechanism
	* for PKIXCertPathCheckers to determine the length of the certification
	* path that is being validated. It is necessary since engineValidate()
	* may modify the length of the path.
	*
	* @return the length of the last certification path passed to
	*   CertPathValidator.validate, or -1 if it has not been invoked yet
	*/
	@:overload public function getCertPathLength() : Int;
	
	/**
	* Return the PKIX parameters used by this instance. An application may
	* modify the parameters but must make sure not to perform any concurrent
	* validations.
	*/
	@:overload public function getParameters() : java.security.cert.PKIXBuilderParameters;
	
	
}
