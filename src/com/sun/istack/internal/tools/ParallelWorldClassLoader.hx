package com.sun.istack.internal.tools;
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
extern class ParallelWorldClassLoader extends java.lang.ClassLoader implements java.io.Closeable
{
	@:overload public function new(parent : java.lang.ClassLoader, prefix : String) : Void;
	
	@:overload private function findClass(name : String) : Class<Dynamic>;
	
	@:overload private function findResource(name : String) : java.net.URL;
	
	@:overload private function findResources(name : String) : java.util.Enumeration<java.net.URL>;
	
	@:overload @:synchronized public function close() : Void;
	
	/**
	* Given the URL inside jar, returns the URL to the jar itself.
	*/
	@:overload public static function toJarUrl(res : java.net.URL) : java.net.URL;
	
	
}
