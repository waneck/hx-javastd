package sun.security.validator;
/*
* Copyright (c) 2002, 2012, Oracle and/or its affiliates. All rights reserved.
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
* ValidatorException thrown by the Validator. It has optional fields that
* allow better error diagnostics.
*
* @author Andreas Sterbenz
*/
extern class ValidatorException extends java.security.cert.CertificateException
{
	public static var T_NO_TRUST_ANCHOR(default, null) : Dynamic;
	
	public static var T_EE_EXTENSIONS(default, null) : Dynamic;
	
	public static var T_CA_EXTENSIONS(default, null) : Dynamic;
	
	public static var T_CERT_EXPIRED(default, null) : Dynamic;
	
	public static var T_SIGNATURE_ERROR(default, null) : Dynamic;
	
	public static var T_NAME_CHAINING(default, null) : Dynamic;
	
	public static var T_ALGORITHM_DISABLED(default, null) : Dynamic;
	
	public static var T_UNTRUSTED_CERT(default, null) : Dynamic;
	
	@:overload public function new(msg : String) : Void;
	
	@:overload public function new(msg : String, cause : java.lang.Throwable) : Void;
	
	@:overload public function new(type : Dynamic) : Void;
	
	@:overload public function new(type : Dynamic, cert : java.security.cert.X509Certificate) : Void;
	
	@:overload public function new(type : Dynamic, cert : java.security.cert.X509Certificate, cause : java.lang.Throwable) : Void;
	
	@:overload public function new(msg : String, type : Dynamic, cert : java.security.cert.X509Certificate) : Void;
	
	@:overload public function new(msg : String, type : Dynamic, cert : java.security.cert.X509Certificate, cause : java.lang.Throwable) : Void;
	
	/**
	* Get the type of the failure (one of the T_XXX constants), if
	* available. This may be helpful when designing a user interface.
	*/
	@:overload public function getErrorType() : Dynamic;
	
	/**
	* Get the certificate causing the exception, if available.
	*/
	@:overload public function getErrorCertificate() : java.security.cert.X509Certificate;
	
	
}
