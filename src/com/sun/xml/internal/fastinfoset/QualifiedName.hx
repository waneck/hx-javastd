package com.sun.xml.internal.fastinfoset;
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
extern class QualifiedName
{
	@:public public var prefix : String;
	
	@:public public var namespaceName : String;
	
	@:public public var localName : String;
	
	@:public public var qName : String;
	
	@:public public var index : Int;
	
	@:public public var prefixIndex : Int;
	
	@:public public var namespaceNameIndex : Int;
	
	@:public public var localNameIndex : Int;
	
	@:public public var attributeId : Int;
	
	@:public public var attributeHash : Int;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(prefix : String, namespaceName : String, localName : String, qName : String) : Void;
	
	@:overload @:public public function set(prefix : String, namespaceName : String, localName : String, qName : String) : Void;
	
	@:overload @:public public function new(prefix : String, namespaceName : String, localName : String, qName : String, index : Int) : Void;
	
	@:overload @:public @:final public function set(prefix : String, namespaceName : String, localName : String, qName : String, index : Int) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:public public function new(prefix : String, namespaceName : String, localName : String, qName : String, index : Int, prefixIndex : Int, namespaceNameIndex : Int, localNameIndex : Int) : Void;
	
	@:overload @:public @:final public function set(prefix : String, namespaceName : String, localName : String, qName : String, index : Int, prefixIndex : Int, namespaceNameIndex : Int, localNameIndex : Int) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:public public function new(prefix : String, namespaceName : String, localName : String) : Void;
	
	@:overload @:public @:final public function set(prefix : String, namespaceName : String, localName : String) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:public public function new(prefix : String, namespaceName : String, localName : String, prefixIndex : Int, namespaceNameIndex : Int, localNameIndex : Int, charBuffer : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:public @:final public function set(prefix : String, namespaceName : String, localName : String, prefixIndex : Int, namespaceNameIndex : Int, localNameIndex : Int, charBuffer : java.NativeArray<java.StdTypes.Char16>) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:public public function new(prefix : String, namespaceName : String, localName : String, index : Int) : Void;
	
	@:overload @:public @:final public function set(prefix : String, namespaceName : String, localName : String, index : Int) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:public public function new(prefix : String, namespaceName : String, localName : String, index : Int, prefixIndex : Int, namespaceNameIndex : Int, localNameIndex : Int) : Void;
	
	@:overload @:public @:final public function set(prefix : String, namespaceName : String, localName : String, index : Int, prefixIndex : Int, namespaceNameIndex : Int, localNameIndex : Int) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:public public function new(prefix : String, namespaceName : String) : Void;
	
	@:overload @:public @:final public function set(prefix : String, namespaceName : String) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:public @:final public function getQName() : javax.xml.namespace.QName;
	
	@:overload @:public @:final public function getQNameString() : String;
	
	@:overload @:public @:final public function createAttributeValues(size : Int) : Void;
	
	
}
