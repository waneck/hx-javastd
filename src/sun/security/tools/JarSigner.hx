package sun.security.tools;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JarSigner
{
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	@:overload public function run(args : java.NativeArray<String>) : Void;
	
	
}
@:internal extern class JarBASE64Encoder extends sun.misc.BASE64Encoder
{
	/**
	* Encode the suffix that ends every output line.
	*/
	@:overload override private function encodeLineSuffix(aStream : java.io.OutputStream) : Void;
	
	
}
@:internal extern class SignatureFile
{
	@:overload public function new(digests : java.NativeArray<java.security.MessageDigest>, mf : java.util.jar.Manifest, md : sun.security.util.ManifestDigester, baseName : String, signManifest : Bool) : Void;
	
	/**
	* Writes the SignatureFile to the specified OutputStream.
	*
	* @param out the output stream
	* @exception IOException if an I/O error has occurred
	*/
	@:overload public function write(out : java.io.OutputStream) : Void;
	
	/**
	* get .SF file name
	*/
	@:overload public function getMetaName() : String;
	
	/**
	* get base file name
	*/
	@:overload public function getBaseName() : String;
	
	/*
	* Generate a signed data block.
	* If a URL or a certificate (containing a URL) for a Timestamping
	* Authority is supplied then a signature timestamp is generated and
	* inserted into the signed data block.
	*
	* @param sigalg signature algorithm to use, or null to use default
	* @param tsaUrl The location of the Timestamping Authority. If null
	*               then no timestamp is requested.
	* @param tsaCert The certificate for the Timestamping Authority. If null
	*               then no timestamp is requested.
	* @param signingMechanism The signing mechanism to use.
	* @param args The command-line arguments to jarsigner.
	* @param zipFile The original source Zip file.
	*/
	@:overload public function generateBlock(privateKey : java.security.PrivateKey, sigalg : String, certChain : java.NativeArray<java.security.cert.X509Certificate>, externalSF : Bool, tsaUrl : String, tsaCert : java.security.cert.X509Certificate, signingMechanism : com.sun.jarsigner.ContentSigner, args : java.NativeArray<String>, zipFile : java.util.zip.ZipFile) : SignatureFile_Block;
	
	
}
@:native('sun$security$tools$SignatureFile$Block') extern class SignatureFile_Block
{
	/*
	* get block file name.
	*/
	@:overload public function getMetaName() : String;
	
	/**
	* Writes the block file to the specified OutputStream.
	*
	* @param out the output stream
	* @exception IOException if an I/O error has occurred
	*/
	@:overload public function write(out : java.io.OutputStream) : Void;
	
	
}
@:internal extern class JarSignerParameters implements com.sun.jarsigner.ContentSignerParameters
{
	/**
	* Retrieves the command-line arguments.
	*
	* @return The command-line arguments. May be null.
	*/
	@:overload public function getCommandLine() : java.NativeArray<String>;
	
	/**
	* Retrieves the identifier for a Timestamping Authority (TSA).
	*
	* @return The TSA identifier. May be null.
	*/
	@:overload public function getTimestampingAuthority() : java.net.URI;
	
	/**
	* Retrieves the certificate for a Timestamping Authority (TSA).
	*
	* @return The TSA certificate. May be null.
	*/
	@:overload public function getTimestampingAuthorityCertificate() : java.security.cert.X509Certificate;
	
	/**
	* Retrieves the signature.
	*
	* @return The non-null signature bytes.
	*/
	@:overload public function getSignature() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the name of the signature algorithm.
	*
	* @return The non-null string name of the signature algorithm.
	*/
	@:overload public function getSignatureAlgorithm() : String;
	
	/**
	* Retrieves the signer's X.509 certificate chain.
	*
	* @return The non-null array of X.509 public-key certificates.
	*/
	@:overload public function getSignerCertificateChain() : java.NativeArray<java.security.cert.X509Certificate>;
	
	/**
	* Retrieves the content that was signed.
	*
	* @return The content bytes. May be null.
	*/
	@:overload public function getContent() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the original source ZIP file before it was signed.
	*
	* @return The original ZIP file. May be null.
	*/
	@:overload public function getSource() : java.util.zip.ZipFile;
	
	
}
