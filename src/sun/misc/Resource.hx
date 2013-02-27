package sun.misc;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class Resource
{
	/**
	* Returns the name of the Resource.
	*/
	@:overload @:abstract public function getName() : String;
	
	/**
	* Returns the URL of the Resource.
	*/
	@:overload @:abstract public function getURL() : java.net.URL;
	
	/**
	* Returns the CodeSource URL for the Resource.
	*/
	@:overload @:abstract public function getCodeSourceURL() : java.net.URL;
	
	/**
	* Returns an InputStream for reading the Resource data.
	*/
	@:overload @:abstract public function getInputStream() : java.io.InputStream;
	
	/**
	* Returns the length of the Resource data, or -1 if unknown.
	*/
	@:overload @:abstract public function getContentLength() : Int;
	
	/**
	* Returns the Resource data as an array of bytes.
	*/
	@:overload public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the Resource data as a ByteBuffer, but only if the input stream
	* was implemented on top of a ByteBuffer. Return <tt>null</tt> otherwise.
	*/
	@:overload public function getByteBuffer() : java.nio.ByteBuffer;
	
	/**
	* Returns the Manifest for the Resource, or null if none.
	*/
	@:overload public function getManifest() : java.util.jar.Manifest;
	
	/**
	* Returns theCertificates for the Resource, or null if none.
	*/
	@:overload public function getCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the code signers for the Resource, or null if none.
	*/
	@:overload public function getCodeSigners() : java.NativeArray<java.security.CodeSigner>;
	
	
}
