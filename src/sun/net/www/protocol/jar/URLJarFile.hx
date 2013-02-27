package sun.net.www.protocol.jar;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class URLJarFile extends java.util.jar.JarFile
{
	/*
	* Changed modifier from private to public in order to be able
	* to instantiate URLJarFile from sun.plugin package.
	*/
	@:overload public function new(file : java.io.File) : Void;
	
	/*
	* Changed modifier from private to public in order to be able
	* to instantiate URLJarFile from sun.plugin package.
	*/
	@:overload public function new(file : java.io.File, closeController : URLJarFile_URLJarFileCloseController) : Void;
	
	/*
	* close the jar file.
	*/
	@:overload override private function finalize() : Void;
	
	/**
	* Returns the <code>ZipEntry</code> for the given entry name or
	* <code>null</code> if not found.
	*
	* @param name the JAR file entry name
	* @return the <code>ZipEntry</code> for the given entry name or
	*         <code>null</code> if not found
	* @see java.util.zip.ZipEntry
	*/
	@:overload override public function getEntry(name : String) : java.util.zip.ZipEntry;
	
	@:overload override public function getManifest() : java.util.jar.Manifest;
	
	/* If close controller is set the notify the controller about the pending close */
	@:overload override public function close() : Void;
	
	/*
	* Set the call back interface to call retrive function in sun.plugin
	* package if plugin is running.
	*/
	@:overload public static function setCallBack(cb : sun.net.www.protocol.jar.URLJarFileCallBack) : Void;
	
	
}
@:native('sun$net$www$protocol$jar$URLJarFile$URLJarFileEntry') @:internal extern class URLJarFile_URLJarFileEntry extends java.util.jar.JarEntry
{
	@:overload override public function getAttributes() : java.util.jar.Attributes;
	
	@:overload override public function getCertificates() : java.NativeArray<java.security.cert.Certificate>;
	
	@:overload override public function getCodeSigners() : java.NativeArray<java.security.CodeSigner>;
	
	
}
@:native('sun$net$www$protocol$jar$URLJarFile$URLJarFileCloseController') extern interface URLJarFile_URLJarFileCloseController
{
	@:overload public function close(jarFile : java.util.jar.JarFile) : Void;
	
	
}
