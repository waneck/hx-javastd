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
extern class ManifestEntryVerifier
{
	/**
	* Create a new ManifestEntryVerifier object.
	*/
	@:overload @:public public function new(man : java.util.jar.Manifest) : Void;
	
	/**
	* Find the hashes in the
	* manifest for this entry, save them, and set the MessageDigest
	* objects to calculate the hashes on the fly. If name is
	* null it signifies that update/verify should ignore this entry.
	*/
	@:overload @:public public function setEntry(name : String, entry : java.util.jar.JarEntry) : Void;
	
	/**
	* update the digests for the digests we are interested in
	*/
	@:overload @:public public function update(buffer : java.StdTypes.Int8) : Void;
	
	/**
	* update the digests for the digests we are interested in
	*/
	@:overload @:public public function update(buffer : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* get the JarEntry for this object
	*/
	@:overload @:public public function getEntry() : java.util.jar.JarEntry;
	
	/**
	* go through all the digests, calculating the final digest
	* and comparing it to the one in the manifest. If this is
	* the first time we have verified this object, remove its
	* code signers from sigFileSigners and place in verifiedSigners.
	*
	*
	*/
	@:overload @:public public function verify(verifiedSigners : java.util.Hashtable<String, java.NativeArray<java.security.CodeSigner>>, sigFileSigners : java.util.Hashtable<String, java.NativeArray<java.security.CodeSigner>>) : java.NativeArray<java.security.CodeSigner>;
	
	
}
/**
* Holder class to lazily load Sun provider. NOTE: if
* Providers.getSunProvider returned a cached provider, we could avoid the
* need for caching the provider with this holder class; we should try to
* revisit this in JDK 8.
*/
@:native('sun$security$util$ManifestEntryVerifier$SunProviderHolder') @:internal extern class ManifestEntryVerifier_SunProviderHolder
{
	
}
