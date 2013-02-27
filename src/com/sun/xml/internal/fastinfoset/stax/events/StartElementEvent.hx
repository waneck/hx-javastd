package com.sun.xml.internal.fastinfoset.stax.events;
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
extern class StartElementEvent extends com.sun.xml.internal.fastinfoset.stax.events.EventBase implements javax.xml.stream.events.StartElement
{
	@:overload public function reset() : Void;
	
	@:overload public function new() : Void;
	
	@:overload public function new(prefix : String, uri : String, localpart : String) : Void;
	
	@:overload public function new(qname : javax.xml.namespace.QName) : Void;
	
	@:overload public function new(startelement : javax.xml.stream.events.StartElement) : Void;
	
	@:overload private function init() : Void;
	
	/**
	* Get the name of this event
	* @return the qualified name of this event
	*/
	@:overload public function getName() : javax.xml.namespace.QName;
	
	/**
	* Returns an Iterator of non-namespace declared attributes
	* returns an empty iterator if there are no attributes.  The
	* iterator must contain only implementations of the javax.xml.stream.Attribute
	* interface.   Attributes are fundamentally unordered and may not be reported
	* in any order.
	*
	* @return a readonly Iterator over Attribute interfaces, or an
	* empty iterator
	*/
	@:overload public function getAttributes() : java.util.Iterator<Dynamic>;
	
	/**
	* Returns an Iterator of namespaces declared on this element.
	* This Iterator does not contain previously declared namespaces
	* unless they appear on the current START_ELEMENT.
	* Therefore this list may contain redeclared namespaces and duplicate namespace
	* declarations. Use the getNamespaceContext() method to get the
	* current context of namespace declarations.
	*
	* <p>The iterator must contain only implementations of the
	* javax.xml.stream.Namespace interface.
	*
	* <p>A Namespace is an Attribute.  One
	* can iterate over a list of namespaces as a list of attributes.
	* However this method returns only the list of namespaces
	* declared on this START_ELEMENT and does not
	* include the attributes declared on this START_ELEMENT.
	*
	* @return a readonly Iterator over Namespace interfaces, or an
	* empty iterator if there are no namespaces.
	*
	*/
	@:overload public function getNamespaces() : java.util.Iterator<Dynamic>;
	
	/**
	* Returns the attribute referred to by this name
	* @param qname the qname of the desired name
	* @return the attribute corresponding to the name value or null
	*/
	@:overload public function getAttributeByName(qname : javax.xml.namespace.QName) : javax.xml.stream.events.Attribute;
	
	/** Gets a read-only namespace context. If no context is
	* available this method will return an empty namespace context.
	* The NamespaceContext contains information about all namespaces
	* in scope for this StartElement.
	*
	* @return the current namespace context
	*/
	@:overload public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	@:overload public function setName(qname : javax.xml.namespace.QName) : Void;
	
	@:overload public function getNamespace() : String;
	
	/**
	* Gets the value that the prefix is bound to in the
	* context of this element.  Returns null if
	* the prefix is not bound in this context
	* @param prefix the prefix to lookup
	* @return the uri bound to the prefix or null
	*/
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	@:overload public function toString() : String;
	
	/** Return this event as String
	* @return String Event returned as string.
	*/
	@:overload public function nameAsString() : String;
	
	@:overload public function setNamespaceContext(context : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload public function addAttribute(attr : javax.xml.stream.events.Attribute) : Void;
	
	@:overload public function addAttributes(attrs : java.util.Iterator<Dynamic>) : Void;
	
	@:overload public function addNamespace(namespace : javax.xml.stream.events.Namespace) : Void;
	
	@:overload public function addNamespaces(namespaces : java.util.Iterator<Dynamic>) : Void;
	
	
}
