package java.security.cert;
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
extern class CertPathValidatorException extends java.security.GeneralSecurityException
{
	/**
	* Creates a <code>CertPathValidatorException</code> with
	* no detail message.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a <code>CertPathValidatorException</code> with the given
	* detail message. A detail message is a <code>String</code> that
	* describes this particular exception.
	*
	* @param msg the detail message
	*/
	@:overload public function new(msg : String) : Void;
	
	/**
	* Creates a <code>CertPathValidatorException</code> that wraps the
	* specified throwable. This allows any exception to be converted into a
	* <code>CertPathValidatorException</code>, while retaining information
	* about the wrapped exception, which may be useful for debugging. The
	* detail message is set to (<code>cause==null ? null : cause.toString()
	* </code>) (which typically contains the class and detail message of
	* cause).
	*
	* @param cause the cause (which is saved for later retrieval by the
	* {@link #getCause getCause()} method). (A <code>null</code> value is
	* permitted, and indicates that the cause is nonexistent or unknown.)
	*/
	@:overload public function new(cause : java.lang.Throwable) : Void;
	
	/**
	* Creates a <code>CertPathValidatorException</code> with the specified
	* detail message and cause.
	*
	* @param msg the detail message
	* @param cause the cause (which is saved for later retrieval by the
	* {@link #getCause getCause()} method). (A <code>null</code> value is
	* permitted, and indicates that the cause is nonexistent or unknown.)
	*/
	@:overload public function new(msg : String, cause : java.lang.Throwable) : Void;
	
	/**
	* Creates a <code>CertPathValidatorException</code> with the specified
	* detail message, cause, certification path, and index.
	*
	* @param msg the detail message (or <code>null</code> if none)
	* @param cause the cause (or <code>null</code> if none)
	* @param certPath the certification path that was in the process of
	* being validated when the error was encountered
	* @param index the index of the certificate in the certification path
	* that caused the error (or -1 if not applicable). Note that
	* the list of certificates in a <code>CertPath</code> is zero based.
	* @throws IndexOutOfBoundsException if the index is out of range
	* <code>(index < -1 || (certPath != null && index >=
	* certPath.getCertificates().size())</code>
	* @throws IllegalArgumentException if <code>certPath</code> is
	* <code>null</code> and <code>index</code> is not -1
	*/
	@:overload public function new(msg : String, cause : java.lang.Throwable, certPath : java.security.cert.CertPath, index : Int) : Void;
	
	/**
	* Creates a <code>CertPathValidatorException</code> with the specified
	* detail message, cause, certification path, index, and reason.
	*
	* @param msg the detail message (or <code>null</code> if none)
	* @param cause the cause (or <code>null</code> if none)
	* @param certPath the certification path that was in the process of
	* being validated when the error was encountered
	* @param index the index of the certificate in the certification path
	* that caused the error (or -1 if not applicable). Note that
	* the list of certificates in a <code>CertPath</code> is zero based.
	* @param reason the reason the validation failed
	* @throws IndexOutOfBoundsException if the index is out of range
	* <code>(index < -1 || (certPath != null && index >=
	* certPath.getCertificates().size())</code>
	* @throws IllegalArgumentException if <code>certPath</code> is
	* <code>null</code> and <code>index</code> is not -1
	* @throws NullPointerException if <code>reason</code> is <code>null</code>
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(msg : String, cause : java.lang.Throwable, certPath : java.security.cert.CertPath, index : Int, reason : CertPathValidatorException_Reason) : Void;
	
	/**
	* Returns the certification path that was being validated when
	* the exception was thrown.
	*
	* @return the <code>CertPath</code> that was being validated when
	* the exception was thrown (or <code>null</code> if not specified)
	*/
	@:overload public function getCertPath() : java.security.cert.CertPath;
	
	/**
	* Returns the index of the certificate in the certification path
	* that caused the exception to be thrown. Note that the list of
	* certificates in a <code>CertPath</code> is zero based. If no
	* index has been set, -1 is returned.
	*
	* @return the index that has been set, or -1 if none has been set
	*/
	@:overload public function getIndex() : Int;
	
	/**
	* Returns the reason that the validation failed. The reason is
	* associated with the index of the certificate returned by
	* {@link #getIndex}.
	*
	* @return the reason that the validation failed, or
	*    <code>BasicReason.UNSPECIFIED</code> if a reason has not been
	*    specified
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function getReason() : CertPathValidatorException_Reason;
	
	
}
/**
* The reason the validation algorithm failed.
*
* @since 1.7
*/
@:require(java7) @:native('java$security$cert$CertPathValidatorException$Reason') extern interface CertPathValidatorException_Reason extends java.io.Serializable
{
	
}
/**
* The BasicReason enumerates the potential reasons that a certification
* path of any type may be invalid.
*
* @since 1.7
*/
@:require(java7) @:native('java$security$cert$CertPathValidatorException$BasicReason') extern enum CertPathValidatorException_BasicReason
{
	/**
	* Unspecified reason.
	*/
	UNSPECIFIED;
	/**
	* The certificate is expired.
	*/
	EXPIRED;
	/**
	* The certificate is not yet valid.
	*/
	NOT_YET_VALID;
	/**
	* The certificate is revoked.
	*/
	REVOKED;
	/**
	* The revocation status of the certificate could not be determined.
	*/
	UNDETERMINED_REVOCATION_STATUS;
	/**
	* The signature is invalid.
	*/
	INVALID_SIGNATURE;
	/**
	* The public key or the signature algorithm has been constrained.
	*/
	ALGORITHM_CONSTRAINED;
	
}

