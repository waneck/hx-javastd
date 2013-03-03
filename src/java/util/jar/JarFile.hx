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
extern class JarFile extends java.util.zip.ZipFile
{
	/**
	* The JAR manifest file name.
	*/
	@:public @:static @:final public static var MANIFEST_NAME(default, null) : String;
	
	/**
	* Creates a new <code>JarFile</code> to read from the specified
	* file <code>name</code>. The <code>JarFile</code> will be verified if
	* it is signed.
	* @param name the name of the jar file to be opened for reading
	* @throws IOException if an I/O error has occurred
	* @throws SecurityException if access to the file is denied
	*         by the SecurityManager
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Creates a new <code>JarFile</code> to read from the specified
	* file <code>name</code>.
	* @param name the name of the jar file to be opened for reading
	* @param verify whether or not to verify the jar file if
	* it is signed.
	* @throws IOException if an I/O error has occurred
	* @throws SecurityException if access to the file is denied
	*         by the SecurityManager
	*/
	@:overload @:public public function new(name : String, verify : Bool) : Void;
	
	/**
	* Creates a new <code>JarFile</code> to read from the specified
	* <code>File</code> object. The <code>JarFile</code> will be verified if
	* it is signed.
	* @param file the jar file to be opened for reading
	* @throws IOException if an I/O error has occurred
	* @throws SecurityException if access to the file is denied
	*         by the SecurityManager
	*/
	@:overload @:public public function new(file : java.io.File) : Void;
	
	/**
	* Creates a new <code>JarFile</code> to read from the specified
	* <code>File</code> object.
	* @param file the jar file to be opened for reading
	* @param verify whether or not to verify the jar file if
	* it is signed.
	* @throws IOException if an I/O error has occurred
	* @throws SecurityException if access to the file is denied
	*         by the SecurityManager.
	*/
	@:overload @:public public function new(file : java.io.File, verify : Bool) : Void;
	
	/**
	* Creates a new <code>JarFile</code> to read from the specified
	* <code>File</code> object in the specified mode.  The mode argument
	* must be either <tt>OPEN_READ</tt> or <tt>OPEN_READ | OPEN_DELETE</tt>.
	*
	* @param file the jar file to be opened for reading
	* @param verify whether or not to verify the jar file if
	* it is signed.
	* @param mode the mode in which the file is to be opened
	* @throws IOException if an I/O error has occurred
	* @throws IllegalArgumentException
	*         if the <tt>mode</tt> argument is invalid
	* @throws SecurityException if access to the file is denied
	*         by the SecurityManager
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function new(file : java.io.File, verify : Bool, mode : Int) : Void;
	
	/**
	* Returns the jar file manifest, or <code>null</code> if none.
	*
	* @return the jar file manifest, or <code>null</code> if none
	*
	* @throws IllegalStateException
	*         may be thrown if the jar file has been closed
	*/
	@:overload @:public public function getManifest() : java.util.jar.Manifest;
	
	/**
	* Returns the <code>JarEntry</code> for the given entry name or
	* <code>null</code> if not found.
	*
	* @param name the jar file entry name
	* @return the <code>JarEntry</code> for the given entry name or
	*         <code>null</code> if not found.
	*
	* @throws IllegalStateException
	*         may be thrown if the jar file has been closed
	*
	* @see java.util.jar.JarEntry
	*/
	@:overload @:public public function getJarEntry(name : String) : java.util.jar.JarEntry;
	
	/**
	* Returns the <code>ZipEntry</code> for the given entry name or
	* <code>null</code> if not found.
	*
	* @param name the jar file entry name
	* @return the <code>ZipEntry</code> for the given entry name or
	*         <code>null</code> if not found
	*
	* @throws IllegalStateException
	*         may be thrown if the jar file has been closed
	*
	* @see java.util.zip.ZipEntry
	*/
	@:overload @:public override public function getEntry(name : String) : java.util.zip.ZipEntry;
	
	/**
	* Returns an enumeration of the zip file entries.
	*/
	@:overload @:public override public function entries() : java.util.Enumeration<java.util.jar.JarEntry>;
	
	/**
	* Returns an input stream for reading the contents of the specified
	* zip file entry.
	* @param ze the zip file entry
	* @return an input stream for reading the contents of the specified
	*         zip file entry
	* @throws ZipException if a zip file format error has occurred
	* @throws IOException if an I/O error has occurred
	* @throws SecurityException if any of the jar file entries
	*         are incorrectly signed.
	* @throws IllegalStateException
	*         may be thrown if the jar file has been closed
	*/
	@:overload @:public @:synchronized override public function getInputStream(ze : java.util.zip.ZipEntry) : java.io.InputStream;
	
	
}
@:native('java$util$jar$JarFile$JarFileEntry') @:internal extern class JarFile_JarFileEntry extends java.util.jar.JarEntry
{
	@:overload @:public override public function getAttributes() : java.util.jar.Attributes;
	
	@:overload @:public override public function getCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	@:overload @:public override public function getCodeSigners() : java.NativeArray<java.security.CodeSigner>;
	
	
}
