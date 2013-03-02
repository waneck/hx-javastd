package com.sun.xml.internal.stream.events;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class StartElementEvent extends com.sun.xml.internal.stream.events.DummyEvent implements javax.xml.stream.events.StartElement
{
	@:overload public function new(prefix : String, uri : String, localpart : String) : Void;
	
	@:overload public function new(qname : javax.xml.namespace.QName) : Void;
	
	@:overload public function new(startelement : javax.xml.stream.events.StartElement) : Void;
	
	@:overload private function init() : Void;
	
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function setName(qname : javax.xml.namespace.QName) : Void;
	
	@:overload public function getAttributes() : java.util.Iterator<Dynamic>;
	
	@:overload public function getNamespaces() : java.util.Iterator<Dynamic>;
	
	@:overload public function getAttributeByName(qname : javax.xml.namespace.QName) : javax.xml.stream.events.Attribute;
	
	@:overload public function getNamespace() : String;
	
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	/**
	* <p>Return a <code>String</code> representation of this
	* <code>StartElement</code> formatted as XML.</p>
	*
	* @return <code>String</code> representation of this
	*   <code>StartElement</code> formatted as XML.
	*/
	@:overload public function toString() : String;
	
	/** Return this event as String
	* @return String Event returned as string.
	*/
	@:overload public function nameAsString() : String;
	
	/** Gets a read-only namespace context. If no context is
	* available this method will return an empty namespace context.
	* The NamespaceContext contains information about all namespaces
	* in scope for this StartElement.
	*
	* @return the current namespace context
	*/
	@:overload public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	@:overload public function setNamespaceContext(nc : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload private function writeAsEncodedUnicodeEx(writer : java.io.Writer) : Void;
	
	
}
