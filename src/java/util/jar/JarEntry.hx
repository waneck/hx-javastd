package java.util.jar;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class JarEntry extends java.util.zip.ZipEntry
{
	/**
	* Creates a new <code>JarEntry</code> for the specified JAR file
	* entry name.
	*
	* @param name the JAR file entry name
	* @exception NullPointerException if the entry name is <code>null</code>
	* @exception IllegalArgumentException if the entry name is longer than
	*            0xFFFF bytes.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Creates a new <code>JarEntry</code> with fields taken from the
	* specified <code>ZipEntry</code> object.
	* @param ze the <code>ZipEntry</code> object to create the
	*           <code>JarEntry</code> from
	*/
	@:overload @:public public function new(ze : java.util.zip.ZipEntry) : Void;
	
	/**
	* Creates a new <code>JarEntry</code> with fields taken from the
	* specified <code>JarEntry</code> object.
	*
	* @param je the <code>JarEntry</code> to copy
	*/
	@:overload @:public public function new(je : java.util.jar.JarEntry) : Void;
	
	/**
	* Returns the <code>Manifest</code> <code>Attributes</code> for this
	* entry, or <code>null</code> if none.
	*
	* @return the <code>Manifest</code> <code>Attributes</code> for this
	* entry, or <code>null</code> if none
	*/
	@:overload @:public public function getAttributes() : java.util.jar.Attributes;
	
	/**
	* Returns the <code>Certificate</code> objects for this entry, or
	* <code>null</code> if none. This method can only be called once
	* the <code>JarEntry</code> has been completely verified by reading
	* from the entry input stream until the end of the stream has been
	* reached. Otherwise, this method will return <code>null</code>.
	*
	* <p>The returned certificate array comprises all the signer certificates
	* that were used to verify this entry. Each signer certificate is
	* followed by its supporting certificate chain (which may be empty).
	* Each signer certificate and its supporting certificate chain are ordered
	* bottom-to-top (i.e., with the signer certificate first and the (root)
	* certificate authority last).
	*
	* @return the <code>Certificate</code> objects for this entry, or
	* <code>null</code> if none.
	*/
	@:overload @:public public function getCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the <code>CodeSigner</code> objects for this entry, or
	* <code>null</code> if none. This method can only be called once
	* the <code>JarEntry</code> has been completely verified by reading
	* from the entry input stream until the end of the stream has been
	* reached. Otherwise, this method will return <code>null</code>.
	*
	* <p>The returned array comprises all the code signers that have signed
	* this entry.
	*
	* @return the <code>CodeSigner</code> objects for this entry, or
	* <code>null</code> if none.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getCodeSigners() : java.NativeArray<java.security.CodeSigner>;
	
	
}
