package com.sun.naming.internal;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
* VersionHelper was used by JNDI to accommodate differences between
* JDK 1.1.x and the Java 2 platform. As this is no longer necessary
* since JNDI's inclusion in the platform, this class currently
* serves as a set of utilities for performing system-level things,
* such as class-loading and reading system properties.
*
* @author Rosanna Lee
* @author Scott Seligman
*/
@:internal extern class VersionHelper12 extends com.sun.naming.internal.VersionHelper
{
	@:overload override public function loadClass(className : String) : Class<Dynamic>;
	
	/**
	* @param className A non-null fully qualified class name.
	* @param codebase A non-null, space-separated list of URL strings.
	*/
	@:overload override public function loadClass(className : String, codebase : String) : Class<Dynamic>;
	
	
}
/**
* Given an enumeration of URLs, an instance of this class represents
* an enumeration of their InputStreams.  Each operation on the URL
* enumeration is performed within a doPrivileged block.
* This is used to enumerate the resources under a foreign codebase.
* This class is not MT-safe.
*/
@:native('com$sun$naming$internal$VersionHelper12$InputStreamEnumeration') @:internal extern class VersionHelper12_InputStreamEnumeration implements javax.naming.NamingEnumeration<Dynamic>
{
	@:overload public function hasMore() : Bool;
	
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function nextElement() : Dynamic;
	
	@:overload public function close() : Void;
	
	
}
