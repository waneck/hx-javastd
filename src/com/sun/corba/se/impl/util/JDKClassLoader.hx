package com.sun.corba.se.impl.util;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
@:internal extern class JDKClassLoader
{
	
}
/**
* Private cache implementation specific to JDKClassLoader.
*/
@:native('com$sun$corba$se$impl$util$JDKClassLoader$JDKClassLoaderCache') @:internal extern class JDKClassLoader_JDKClassLoaderCache
{
	@:overload @:public @:final public function recordFailure(key : Dynamic) : Void;
	
	@:overload @:public @:final public function createKey(className : String, latestLoader : java.lang.ClassLoader) : Dynamic;
	
	@:overload @:public @:final public function knownToFail(key : Dynamic) : Bool;
	
	
}
@:native('com$sun$corba$se$impl$util$JDKClassLoader$JDKClassLoaderCache$CacheKey') @:internal extern class JDKClassLoader_JDKClassLoaderCache_CacheKey
{
	@:overload @:public public function new(className : String, loader : java.lang.ClassLoader) : Void;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
