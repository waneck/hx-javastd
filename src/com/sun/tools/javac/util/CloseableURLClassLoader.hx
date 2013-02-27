package com.sun.tools.javac.util;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class CloseableURLClassLoader extends java.net.URLClassLoader implements java.io.Closeable
{
	/**
	* A URLClassLoader that also implements Closeable.
	* Reflection is used to access internal data structures in the URLClassLoader,
	* since no public API exists for this purpose. Therefore this code is somewhat
	* fragile. Caveat emptor.
	* @throws Error if the internal data structures are not as expected.
	*
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	@:overload public function new(urls : java.NativeArray<java.net.URL>, parent : java.lang.ClassLoader) : Void;
	
	/**
	* Close any jar files that may have been opened by the class loader.
	* Reflection is used to access the jar files in the URLClassLoader's
	* internal data structures.
	* @throws java.io.IOException if the jar files cannot be found for any
	* reson, or if closing the jar file itself causes an IOException.
	*/
	@:overload override public function close() : Void;
	
	
}
