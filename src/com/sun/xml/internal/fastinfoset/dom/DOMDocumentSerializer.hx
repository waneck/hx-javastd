package com.sun.xml.internal.fastinfoset.dom;
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
extern class DOMDocumentSerializer extends com.sun.xml.internal.fastinfoset.Encoder
{
	/**
	* Serialize a {@link Node}.
	*
	* @param n the node to serialize.
	*/
	@:overload @:final public function serialize(n : org.w3c.dom.Node) : Void;
	
	/**
	* Serialize a {@link Document}.
	*
	* @param d the document to serialize.
	*/
	@:overload @:final public function serialize(d : org.w3c.dom.Document) : Void;
	
	@:overload @:final private function serializeElementAsDocument(e : org.w3c.dom.Node) : Void;
	
	private var _namespaceScopeContext : com.sun.xml.internal.fastinfoset.util.NamespaceContextImplementation;
	
	private var _attributes : java.NativeArray<org.w3c.dom.Node>;
	
	@:overload @:final private function serializeElement(e : org.w3c.dom.Node) : Void;
	
	@:overload @:final private function serializeText(t : org.w3c.dom.Node) : Void;
	
	@:overload @:final private function serializeCDATA(t : org.w3c.dom.Node) : Void;
	
	@:overload @:final private function serializeComment(c : org.w3c.dom.Node) : Void;
	
	@:overload @:final private function serializeProcessingInstruction(pi : org.w3c.dom.Node) : Void;
	
	@:overload @:final private function encodeElement(namespaceURI : String, qName : String, localName : String) : Void;
	
	@:overload @:final private function encodeAttribute(namespaceURI : String, qName : String, localName : String) : Void;
	
	
}
