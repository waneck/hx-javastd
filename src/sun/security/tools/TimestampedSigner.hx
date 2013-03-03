package sun.security.tools;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This class implements a content signing service.
* It generates a timestamped signature for a given content according to
* <a href="http://www.ietf.org/rfc/rfc3161.txt">RFC 3161</a>.
* The signature along with a trusted timestamp and the signer's certificate
* are all packaged into a standard PKCS #7 Signed Data message.
*
* @author Vincent Ryan
*/
extern class TimestampedSigner extends com.sun.jarsigner.ContentSigner
{
	/**
	* Instantiates a content signer that supports timestamped signatures.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Generates a PKCS #7 signed data message that includes a signature
	* timestamp.
	* This method is used when a signature has already been generated.
	* The signature, a signature timestamp, the signer's certificate chain,
	* and optionally the content that was signed, are packaged into a PKCS #7
	* signed data message.
	*
	* @param parameters The non-null input parameters.
	* @param omitContent true if the content should be omitted from the
	*        signed data message. Otherwise the content is included.
	* @param applyTimestamp true if the signature should be timestamped.
	*        Otherwise timestamping is not performed.
	* @return A PKCS #7 signed data message including a signature timestamp.
	* @throws NoSuchAlgorithmException The exception is thrown if the signature
	*         algorithm is unrecognised.
	* @throws CertificateException The exception is thrown if an error occurs
	*         while processing the signer's certificate or the TSA's
	*         certificate.
	* @throws IOException The exception is thrown if an error occurs while
	*         generating the signature timestamp or while generating the signed
	*         data message.
	* @throws NullPointerException The exception is thrown if parameters is
	*         null.
	*/
	@:overload @:public override public function generateSignedData(parameters : com.sun.jarsigner.ContentSignerParameters, omitContent : Bool, applyTimestamp : Bool) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Examine the certificate for a Subject Information Access extension
	* (<a href="http://www.ietf.org/rfc/rfc3280.txt">RFC 3280</a>).
	* The extension's <tt>accessMethod</tt> field should contain the object
	* identifier defined for timestamping: 1.3.6.1.5.5.7.48.3 and its
	* <tt>accessLocation</tt> field should contain an HTTP or HTTPS URL.
	*
	* @param tsaCertificate An X.509 certificate for the TSA.
	* @return An HTTP or HTTPS URL or null if none was found.
	*/
	@:overload @:public @:static public static function getTimestampingUrl(tsaCertificate : java.security.cert.X509Certificate) : String;
	
	
}
