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
extern class Name implements java.lang.Comparable<Name>
{
	/**
	* Namespace URI. interned.
	*/
	public var nsUri(default, null) : String;
	
	/**
	* Local name. interned.
	*/
	public var localName(default, null) : String;
	
	/**
	* Index -1 is reserved for representing the empty namespace URI of attributes.
	*/
	public var nsUriIndex(default, null) : java.StdTypes.Int16;
	
	public var localNameIndex(default, null) : java.StdTypes.Int16;
	
	/**
	* Index of the Name for an EII or AII
	*/
	public var qNameIndex(default, null) : java.StdTypes.Int16;
	
	/**
	* Specifies if the Name is associated with an EII or AII
	*/
	public var isAttribute(default, null) : Bool;
	
	@:overload public function toString() : String;
	
	/**
	* Creates a {@link QName} from this.
	*/
	@:overload public function toQName() : javax.xml.namespace.QName;
	
	@:overload public function equals(nsUri : String, localName : String) : Bool;
	
	@:overload public function compareTo(that : Name) : Int;
	
	
}