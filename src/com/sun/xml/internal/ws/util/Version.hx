package com.sun.xml.internal.ws.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Version
{
	/**
	* Represents the build id, which is a string like "b13" or "hudson-250".
	*/
	public var BUILD_ID(default, null) : String;
	
	/**
	* Represents the complete version string, such as "JAX-WS RI 2.0-b19"
	*/
	public var BUILD_VERSION(default, null) : String;
	
	/**
	* Represents the major JAX-WS version, such as "2.0".
	*/
	public var MAJOR_VERSION(default, null) : String;
	
	@:overload public static function create(is : java.io.InputStream) : com.sun.xml.internal.ws.util.Version;
	
	@:overload public function toString() : String;
	
	
}
