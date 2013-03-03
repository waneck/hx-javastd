package java.util.jar;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* The <code>JarOutputStream</code> class is used to write the contents
* of a JAR file to any output stream. It extends the class
* <code>java.util.zip.ZipOutputStream</code> with support
* for writing an optional <code>Manifest</code> entry. The
* <code>Manifest</code> can be used to specify meta-information about
* the JAR file and its entries.
*
* @author  David Connelly
* @see     Manifest
* @see     java.util.zip.ZipOutputStream
* @since   1.2
*/
@:require(java2) extern class JarOutputStream extends java.util.zip.ZipOutputStream
{
	/**
	* Creates a new <code>JarOutputStream</code> with the specified
	* <code>Manifest</code>. The manifest is written as the first
	* entry to the output stream.
	*
	* @param out the actual output stream
	* @param man the optional <code>Manifest</code>
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:public public function new(out : java.io.OutputStream, man : java.util.jar.Manifest) : Void;
	
	/**
	* Creates a new <code>JarOutputStream</code> with no manifest.
	* @param out the actual output stream
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Begins writing a new JAR file entry and positions the stream
	* to the start of the entry data. This method will also close
	* any previous entry. The default compression method will be
	* used if no compression method was specified for the entry.
	* The current time will be used if the entry has no set modification
	* time.
	*
	* @param ze the ZIP/JAR entry to be written
	* @exception ZipException if a ZIP error has occurred
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:public override public function putNextEntry(ze : java.util.zip.ZipEntry) : Void;
	
	
}
