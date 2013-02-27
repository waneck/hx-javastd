package com.sun.codemodel.internal;
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
extern class CodeWriter
{
	/**
	* Encoding to be used by the writer. Null means platform specific encoding.
	*
	* @since 2.5
	*/
	@:require(java5) private var encoding : String;
	
	/**
	* Called by CodeModel to store the specified file.
	* The callee must allocate a storage to store the specified file.
	*
	* <p>
	* The returned stream will be closed before the next file is
	* stored. So the callee can assume that only one OutputStream
	* is active at any given time.
	*
	* @param   pkg
	*      The package of the file to be written.
	* @param   fileName
	*      File name without the path. Something like
	*      "Foo.java" or "Bar.properties"
	*/
	@:overload @:abstract public function openBinary(pkg : com.sun.codemodel.internal.JPackage, fileName : String) : java.io.OutputStream;
	
	/**
	* Called by CodeModel to store the specified file.
	* The callee must allocate a storage to store the specified file.
	*
	* <p>
	* The returned stream will be closed before the next file is
	* stored. So the callee can assume that only one OutputStream
	* is active at any given time.
	*
	* @param   pkg
	*      The package of the file to be written.
	* @param   fileName
	*      File name without the path. Something like
	*      "Foo.java" or "Bar.properties"
	*/
	@:overload public function openSource(pkg : com.sun.codemodel.internal.JPackage, fileName : String) : java.io.Writer;
	
	/**
	* Called by CodeModel at the end of the process.
	*/
	@:overload @:abstract public function close() : Void;
	
	
}
