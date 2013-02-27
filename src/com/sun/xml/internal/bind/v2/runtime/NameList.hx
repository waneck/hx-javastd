package com.sun.xml.internal.bind.v2.runtime;
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
/**
* Namespace URIs and local names sorted by their indices.
* Number of Names used for EIIs and AIIs
*
* @author Kohsuke Kawaguchi
*/
extern class NameList
{
	/**
	* Namespace URIs by their indices. No nulls in this array.
	* Read-only.
	*/
	public var namespaceURIs(default, null) : java.NativeArray<String>;
	
	/**
	* For each entry in {@link #namespaceURIs}, whether the namespace URI
	* can be declared as the default. If namespace URI is used in attributes,
	* we always need a prefix, so we can't.
	*
	* True if this URI has to have a prefix.
	*/
	public var nsUriCannotBeDefaulted(default, null) : java.NativeArray<Bool>;
	
	/**
	* Local names by their indices. No nulls in this array.
	* Read-only.
	*/
	public var localNames(default, null) : java.NativeArray<String>;
	
	/**
	* Number of Names for elements
	*/
	public var numberOfElementNames(default, null) : Int;
	
	/**
	* Number of Names for attributes
	*/
	public var numberOfAttributeNames(default, null) : Int;
	
	@:overload public function new(namespaceURIs : java.NativeArray<String>, nsUriCannotBeDefaulted : java.NativeArray<Bool>, localNames : java.NativeArray<String>, numberElementNames : Int, numberAttributeNames : Int) : Void;
	
	
}
