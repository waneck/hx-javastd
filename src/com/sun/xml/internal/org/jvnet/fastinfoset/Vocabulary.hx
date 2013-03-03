package com.sun.xml.internal.org.jvnet.fastinfoset;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class Vocabulary
{
	/**
	* The restricted alphabet table, containing String objects.
	*/
	@:public @:final public var restrictedAlphabets(default, null) : java.util.Set<Dynamic>;
	
	/**
	* The encoding algorithm table, containing String objects.
	*/
	@:public @:final public var encodingAlgorithms(default, null) : java.util.Set<Dynamic>;
	
	/**
	* The prefix table, containing String objects.
	*/
	@:public @:final public var prefixes(default, null) : java.util.Set<Dynamic>;
	
	/**
	* The namespace name table, containing String objects.
	*/
	@:public @:final public var namespaceNames(default, null) : java.util.Set<Dynamic>;
	
	/**
	* The local name table, containing String objects.
	*/
	@:public @:final public var localNames(default, null) : java.util.Set<Dynamic>;
	
	/**
	* The "other NCName" table, containing String objects.
	*/
	@:public @:final public var otherNCNames(default, null) : java.util.Set<Dynamic>;
	
	/**
	* The "other URI" table, containing String objects.
	*/
	@:public @:final public var otherURIs(default, null) : java.util.Set<Dynamic>;
	
	/**
	* The "attribute value" table, containing String objects.
	*/
	@:public @:final public var attributeValues(default, null) : java.util.Set<Dynamic>;
	
	/**
	* The "other string" table, containing String objects.
	*/
	@:public @:final public var otherStrings(default, null) : java.util.Set<Dynamic>;
	
	/**
	* The "character content chunk" table, containing String objects.
	*/
	@:public @:final public var characterContentChunks(default, null) : java.util.Set<Dynamic>;
	
	/**
	* The element table, containing QName objects.
	*/
	@:public @:final public var elements(default, null) : java.util.Set<Dynamic>;
	
	/**
	* The attribute table, containing QName objects.
	*/
	@:public @:final public var attributes(default, null) : java.util.Set<Dynamic>;
	
	
}
