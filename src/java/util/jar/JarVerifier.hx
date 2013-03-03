package java.util.jar;
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
@:internal extern class JarVerifier
{
	@:overload @:public public function new(rawBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* This method scans to see which entry we're parsing and
	* keeps various state information depending on what type of
	* file is being parsed.
	*/
	@:overload @:public public function beginEntry(je : java.util.jar.JarEntry, mev : sun.security.util.ManifestEntryVerifier) : Void;
	
	/**
	* update a single byte.
	*/
	@:overload @:public public function update(b : Int, mev : sun.security.util.ManifestEntryVerifier) : Void;
	
	/**
	* update an array of bytes.
	*/
	@:overload @:public public function update(n : Int, b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int, mev : sun.security.util.ManifestEntryVerifier) : Void;
	
	/**
	* Return an array of java.security.cert.Certificate objects for
	* the given file in the jar.
	* @deprecated
	*/
	@:overload @:public public function getCerts(name : String) : java.NativeArray<java.security.cert.Certificate>;
	
	@:overload @:public public function getCerts(jar : java.util.jar.JarFile, entry : java.util.jar.JarEntry) : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* return an array of CodeSigner objects for
	* the given file in the jar. this array is not cloned.
	*
	*/
	@:overload @:public public function getCodeSigners(name : String) : java.NativeArray<java.security.CodeSigner>;
	
	@:overload @:public public function getCodeSigners(jar : java.util.jar.JarFile, entry : java.util.jar.JarEntry) : java.NativeArray<java.security.CodeSigner>;
	
	@:overload @:public @:synchronized public function entryNames(jar : java.util.jar.JarFile, cs : java.NativeArray<java.security.CodeSource>) : java.util.Enumeration<String>;
	
	/*
	* Like entries() but screens out internal JAR mechanism entries
	* and includes signed entries with no ZIP data.
	*/
	@:overload @:public public function entries2(jar : java.util.jar.JarFile, e : java.util.Enumeration<Dynamic>) : java.util.Enumeration<java.util.jar.JarEntry>;
	
	@:overload @:public @:synchronized public function getCodeSources(jar : java.util.jar.JarFile, url : java.net.URL) : java.NativeArray<java.security.CodeSource>;
	
	@:overload @:public public function getCodeSource(url : java.net.URL, name : String) : java.security.CodeSource;
	
	@:overload @:public public function getCodeSource(url : java.net.URL, jar : java.util.jar.JarFile, je : java.util.jar.JarEntry) : java.security.CodeSource;
	
	@:overload @:public public function setEagerValidation(eager : Bool) : Void;
	
	@:overload @:public @:synchronized public function getManifestDigests() : java.util.List<Dynamic>;
	
	
}
@:native('java$util$jar$JarVerifier$VerifierStream') @:internal extern class JarVerifier_VerifierStream extends java.io.InputStream
{
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:public override public function close() : Void;
	
	@:overload @:public override public function available() : Int;
	
	
}
/*
* Instances of this class hold uncopied references to internal
* signing data that can be compared by object reference identity.
*/
@:native('java$util$jar$JarVerifier$VerifierCodeSource') @:internal extern class JarVerifier_VerifierCodeSource extends java.security.CodeSource
{
	/*
	* All VerifierCodeSource instances are constructed based on
	* singleton signerCache or signerCacheCert entries for each unique signer.
	* No CodeSigner<->Certificate[] conversion is required.
	* We use these assumptions to optimize equality comparisons.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	
}
