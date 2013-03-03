package com.sun.xml.internal.xsom;
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
extern class XmlString
{
	/**
	* Textual value. AKA lexical representation.
	*/
	@:public @:final public var value(default, null) : String;
	
	/**
	* Used to resole in-scope namespace bindings.
	*/
	@:public @:final public var context(default, null) : org.relaxng.datatype.ValidationContext;
	
	/**
	* Creates a new {@link XmlString} from a lexical representation and in-scope namespaces.
	*/
	@:overload @:public public function new(value : String, context : org.relaxng.datatype.ValidationContext) : Void;
	
	/**
	* Creates a new {@link XmlString} with empty in-scope namespace bindings.
	*/
	@:overload @:public public function new(value : String) : Void;
	
	/**
	* Resolves a namespace prefix to the corresponding namespace URI.
	*
	* This method is used for resolving prefixes in the {@link #value}
	* (such as when {@link #value} represents a QName type.)
	*
	* <p>
	* If the prefix is "" (empty string), the method
	* returns the default namespace URI.
	*
	* <p>
	* If the prefix is "xml", then the method returns
	* "http://www.w3.org/XML/1998/namespace",
	* as defined in the XML Namespaces Recommendation.
	*
	* @return
	*          namespace URI of this prefix.
	*          If the specified prefix is not declared,
	*          the implementation returns null.
	*/
	@:overload @:public @:final public function resolvePrefix(prefix : String) : String;
	
	@:overload @:public public function toString() : String;
	
	
}
