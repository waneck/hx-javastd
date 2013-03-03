package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
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
extern class TagName
{
	/**
	* URI of the attribute/element name.
	*
	* Can be empty, but never null. Interned.
	*/
	@:public public var uri : String;
	
	/**
	* Local part of the attribute/element name.
	*
	* Never be null. Interned.
	*/
	@:public public var local : String;
	
	/**
	* Used only for the enterElement event.
	* Otherwise the value is undefined.
	*
	* This might be {@link AttributesEx}.
	*/
	@:public public var atts : org.xml.sax.Attributes;
	
	@:overload @:public public function new() : Void;
	
	/**
	* Checks if the given name pair matches this name.
	*/
	@:overload @:public @:final public function matches(nsUri : String, local : String) : Bool;
	
	/**
	* Checks if the given name pair matches this name.
	*/
	@:overload @:public @:final public function matches(name : com.sun.xml.internal.bind.v2.runtime.Name) : Bool;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Gets the qualified name of the tag.
	*
	* @return never null.
	*/
	@:overload @:public @:abstract public function getQname() : String;
	
	/**
	* Gets the prefix. This is slow.
	*
	* @return can be "" but never null.
	*/
	@:overload @:public public function getPrefix() : String;
	
	/**
	* Creates {@link QName}.
	*/
	@:overload @:public public function createQName() : javax.xml.namespace.QName;
	
	
}
