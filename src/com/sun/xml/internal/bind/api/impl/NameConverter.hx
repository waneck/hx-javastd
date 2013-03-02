package com.sun.xml.internal.bind.api.impl;
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
extern interface NameConverter
{
	/**
	* converts a string into an identifier suitable for classes.
	*
	* In general, this operation should generate "NamesLikeThis".
	*/
	@:overload public function toClassName(token : String) : String;
	
	/**
	* converts a string into an identifier suitable for interfaces.
	*
	* In general, this operation should generate "NamesLikeThis".
	* But for example, it can prepend every interface with 'I'.
	*/
	@:overload public function toInterfaceName(token : String) : String;
	
	/**
	* converts a string into an identifier suitable for properties.
	*
	* In general, this operation should generate "NamesLikeThis",
	* which will be used with known prefixes like "get" or "set".
	*/
	@:overload public function toPropertyName(token : String) : String;
	
	/**
	* converts a string into an identifier suitable for constants.
	*
	* In the standard Java naming convention, this operation should
	* generate "NAMES_LIKE_THIS".
	*/
	@:overload public function toConstantName(token : String) : String;
	
	/**
	* Converts a string into an identifier suitable for variables.
	*
	* In general it should generate "namesLikeThis".
	*/
	@:overload public function toVariableName(token : String) : String;
	
	/**
	* Converts a namespace URI into a package name.
	* This method should expect strings like
	* "http://foo.bar.zot/org", "urn:abc:def:ghi" "", or even "###"
	* (basically anything) and expected to return a package name,
	* liks "org.acme.foo".
	*
	*/
	@:overload public function toPackageName(namespaceUri : String) : String;
	
	
}
@:native('com$sun$xml$internal$bind$api$impl$NameConverter$Standard') @:internal extern class NameConverter_Standard extends com.sun.xml.internal.bind.api.impl.NameUtil implements com.sun.xml.internal.bind.api.impl.NameConverter
{
	@:overload public function toClassName(s : String) : String;
	
	@:overload public function toVariableName(s : String) : String;
	
	@:overload public function toInterfaceName(token : String) : String;
	
	@:overload public function toPropertyName(s : String) : String;
	
	@:overload public function toConstantName(token : String) : String;
	
	/**
	* Computes a Java package name from a namespace URI,
	* as specified in the spec.
	*
	* @return
	*      null if it fails to derive a package name.
	*/
	@:overload public function toPackageName(nsUri : String) : String;
	
	
}
