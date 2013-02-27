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
/**
* This tool manages keystores.
*
* @author Jan Luehe
*
*
* @see java.security.KeyStore
* @see sun.security.provider.KeyProtector
* @see sun.security.provider.JavaKeyStore
*
* @since 1.2
*/
@:require(java2) extern class KeyTool
{
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	/**
	* Loads CRLs from a source. This method is also called in JarSigner.
	* @param src the source, which means System.in if null, or a URI,
	*        or a bare file path name
	*/
	@:overload public static function loadCRLs(src : String) : java.util.Collection<java.security.cert.CRL>;
	
	/**
	* Returns CRLs described in a X509Certificate's CRLDistributionPoints
	* Extension. Only those containing a general name of type URI are read.
	*/
	@:overload public static function readCRLsFromCert(cert : java.security.cert.X509Certificate) : java.util.List<java.security.cert.CRL>;
	
	/**
	* Returns the keystore with the configured CA certificates.
	*/
	@:overload public static function getCacertsKeyStore() : java.security.KeyStore;
	
	@:overload public static function getPassWithModifier(modifier : String, arg : String) : java.NativeArray<java.StdTypes.Char16>;
	
	
}
@:native('sun$security$tools$KeyTool$Command') extern enum KeyTool_Command
{
	CERTREQ;
	CHANGEALIAS;
	DELETE;
	EXPORTCERT;
	GENKEYPAIR;
	GENSECKEY;
	GENCERT;
	IMPORTCERT;
	IMPORTKEYSTORE;
	KEYPASSWD;
	LIST;
	PRINTCERT;
	PRINTCERTREQ;
	PRINTCRL;
	STOREPASSWD;
	KEYCLONE;
	SELFCERT;
	GENCRL;
	IDENTITYDB;
	
}

@:native('sun$security$tools$KeyTool$Option') extern enum KeyTool_Option
{
	ALIAS;
	DESTALIAS;
	DESTKEYPASS;
	DESTKEYSTORE;
	DESTPROTECTED;
	DESTPROVIDERNAME;
	DESTSTOREPASS;
	DESTSTORETYPE;
	DNAME;
	EXT;
	FILEOUT;
	FILEIN;
	ID;
	INFILE;
	KEYALG;
	KEYPASS;
	KEYSIZE;
	KEYSTORE;
	NEW;
	NOPROMPT;
	OUTFILE;
	PROTECTED;
	PROVIDERARG;
	PROVIDERCLASS;
	PROVIDERNAME;
	PROVIDERPATH;
	RFC;
	SIGALG;
	SRCALIAS;
	SRCKEYPASS;
	SRCKEYSTORE;
	SRCPROTECTED;
	SRCPROVIDERNAME;
	SRCSTOREPASS;
	SRCSTORETYPE;
	SSLSERVER;
	JARFILE;
	STARTDATE;
	STOREPASS;
	STORETYPE;
	TRUSTCACERTS;
	V;
	VALIDITY;
	
}

@:internal extern class Pair<A, B>
{
	public var fst(default, null) : A;
	
	public var snd(default, null) : B;
	
	@:overload public function new(fst : A, snd : B) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public static function of<A, B>(a : A, b : B) : Pair<A, B>;
	
	
}
