package sun.security.util;
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
extern class SignatureFileVerifier
{
	/**
	* Create the named SignatureFileVerifier.
	*
	* @param name the name of the signature block file (.DSA/.RSA/.EC)
	*
	* @param rawBytes the raw bytes of the signature block file
	*/
	@:overload @:public public function new(signerCache : java.util.ArrayList<java.NativeArray<java.security.CodeSigner>>, md : sun.security.util.ManifestDigester, name : String, rawBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* returns true if we need the .SF file
	*/
	@:overload @:public public function needSignatureFileBytes() : Bool;
	
	/**
	* returns true if we need this .SF file.
	*
	* @param name the name of the .SF file without the extension
	*
	*/
	@:overload @:public public function needSignatureFile(name : String) : Bool;
	
	/**
	* used to set the raw bytes of the .SF file when it
	* is external to the signature block file.
	*/
	@:overload @:public public function setSignatureFile(sfBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Utility method used by JarVerifier and JarSigner
	* to determine the signature file names and PKCS7 block
	* files names that are supported
	*
	* @param s file name
	* @return true if the input file name is a supported
	*          Signature File or PKCS7 block file name
	*/
	@:overload @:public @:static public static function isBlockOrSF(s : String) : Bool;
	
	/**
	* process the signature block file. Goes through the .SF file
	* and adds code signers for each section where the .SF section
	* hash was verified against the Manifest section.
	*
	*
	*/
	@:overload @:public public function process(signers : java.util.Hashtable<String, java.NativeArray<java.security.CodeSigner>>, manifestDigests : java.util.List<Dynamic>) : Void;
	
	
}
