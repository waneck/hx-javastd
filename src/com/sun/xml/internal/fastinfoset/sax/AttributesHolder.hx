package com.sun.xml.internal.fastinfoset.sax;
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
extern class AttributesHolder implements com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmAttributes
{
	@:overload public function new() : Void;
	
	@:overload public function new(registeredEncodingAlgorithms : java.util.Map<Dynamic, Dynamic>) : Void;
	
	@:overload @:final public function getLength() : Int;
	
	@:overload @:final public function getLocalName(index : Int) : String;
	
	@:overload @:final public function getQName(index : Int) : String;
	
	@:overload @:final public function getType(index : Int) : String;
	
	@:overload @:final public function getURI(index : Int) : String;
	
	@:overload @:final public function getValue(index : Int) : String;
	
	@:overload @:final public function getIndex(qName : String) : Int;
	
	@:overload @:final public function getType(qName : String) : String;
	
	@:overload @:final public function getValue(qName : String) : String;
	
	@:overload @:final public function getIndex(uri : String, localName : String) : Int;
	
	@:overload @:final public function getType(uri : String, localName : String) : String;
	
	@:overload @:final public function getValue(uri : String, localName : String) : String;
	
	@:overload @:final public function clear() : Void;
	
	@:overload @:final public function getAlgorithmURI(index : Int) : String;
	
	@:overload @:final public function getAlgorithmIndex(index : Int) : Int;
	
	@:overload @:final public function getAlgorithmData(index : Int) : Dynamic;
	
	@:overload public function getAlpababet(index : Int) : String;
	
	@:overload public function getToIndex(index : Int) : Bool;
	
	@:overload @:final public function addAttribute(name : com.sun.xml.internal.fastinfoset.QualifiedName, value : String) : Void;
	
	@:overload @:final public function addAttributeWithAlgorithmData(name : com.sun.xml.internal.fastinfoset.QualifiedName, URI : String, id : Int, data : Dynamic) : Void;
	
	@:overload @:final public function getQualifiedName(index : Int) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:final public function getPrefix(index : Int) : String;
	
	
}
