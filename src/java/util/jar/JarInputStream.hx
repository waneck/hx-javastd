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
extern class JarInputStream extends java.util.zip.ZipInputStream
{
	/**
	* Creates a new <code>JarInputStream</code> and reads the optional
	* manifest. If a manifest is present, also attempts to verify
	* the signatures if the JarInputStream is signed.
	* @param in the actual input stream
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Creates a new <code>JarInputStream</code> and reads the optional
	* manifest. If a manifest is present and verify is true, also attempts
	* to verify the signatures if the JarInputStream is signed.
	*
	* @param in the actual input stream
	* @param verify whether or not to verify the JarInputStream if
	* it is signed.
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:public public function new(_in : java.io.InputStream, verify : Bool) : Void;
	
	/**
	* Returns the <code>Manifest</code> for this JAR file, or
	* <code>null</code> if none.
	*
	* @return the <code>Manifest</code> for this JAR file, or
	*         <code>null</code> if none.
	*/
	@:overload @:public public function getManifest() : java.util.jar.Manifest;
	
	/**
	* Reads the next ZIP file entry and positions the stream at the
	* beginning of the entry data. If verification has been enabled,
	* any invalid signature detected while positioning the stream for
	* the next entry will result in an exception.
	* @exception ZipException if a ZIP file error has occurred
	* @exception IOException if an I/O error has occurred
	* @exception SecurityException if any of the jar file entries
	*         are incorrectly signed.
	*/
	@:overload @:public override public function getNextEntry() : java.util.zip.ZipEntry;
	
	/**
	* Reads the next JAR file entry and positions the stream at the
	* beginning of the entry data. If verification has been enabled,
	* any invalid signature detected while positioning the stream for
	* the next entry will result in an exception.
	* @return the next JAR file entry, or null if there are no more entries
	* @exception ZipException if a ZIP file error has occurred
	* @exception IOException if an I/O error has occurred
	* @exception SecurityException if any of the jar file entries
	*         are incorrectly signed.
	*/
	@:overload @:public public function getNextJarEntry() : java.util.jar.JarEntry;
	
	/**
	* Reads from the current JAR file entry into an array of bytes.
	* If <code>len</code> is not zero, the method
	* blocks until some input is available; otherwise, no
	* bytes are read and <code>0</code> is returned.
	* If verification has been enabled, any invalid signature
	* on the current entry will be reported at some point before the
	* end of the entry is reached.
	* @param b the buffer into which the data is read
	* @param off the start offset in the destination array <code>b</code>
	* @param len the maximum number of bytes to read
	* @return the actual number of bytes read, or -1 if the end of the
	*         entry is reached
	* @exception  NullPointerException If <code>b</code> is <code>null</code>.
	* @exception  IndexOutOfBoundsException If <code>off</code> is negative,
	* <code>len</code> is negative, or <code>len</code> is greater than
	* <code>b.length - off</code>
	* @exception ZipException if a ZIP file error has occurred
	* @exception IOException if an I/O error has occurred
	* @exception SecurityException if any of the jar file entries
	*         are incorrectly signed.
	*/
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Creates a new <code>JarEntry</code> (<code>ZipEntry</code>) for the
	* specified JAR file entry name. The manifest attributes of
	* the specified JAR file entry name will be copied to the new
	* <CODE>JarEntry</CODE>.
	*
	* @param name the name of the JAR/ZIP file entry
	* @return the <code>JarEntry</code> object just created
	*/
	@:overload @:protected override private function createZipEntry(name : String) : java.util.zip.ZipEntry;
	
	
}
