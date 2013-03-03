package javax.xml.crypto.dom;
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
/*
* $Id: DOMCryptoContext.java,v 1.3 2005/05/09 18:33:26 mullan Exp $
*/
extern class DOMCryptoContext implements javax.xml.crypto.XMLCryptoContext
{
	/**
	* Default constructor. (For invocation by subclass constructors).
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* This implementation uses an internal {@link HashMap} to get the prefix
	* that the specified URI maps to. It returns the <code>defaultPrefix</code>
	* if it maps to <code>null</code>.
	*
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public public function getNamespacePrefix(namespaceURI : String, defaultPrefix : String) : String;
	
	/**
	* This implementation uses an internal {@link HashMap} to map the URI
	* to the specified prefix.
	*
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public public function putNamespacePrefix(namespaceURI : String, prefix : String) : String;
	
	@:overload @:public public function getDefaultNamespacePrefix() : String;
	
	@:overload @:public public function setDefaultNamespacePrefix(defaultPrefix : String) : Void;
	
	@:overload @:public public function getBaseURI() : String;
	
	/**
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function setBaseURI(baseURI : String) : Void;
	
	@:overload @:public public function getURIDereferencer() : javax.xml.crypto.URIDereferencer;
	
	@:overload @:public public function setURIDereferencer(dereferencer : javax.xml.crypto.URIDereferencer) : Void;
	
	/**
	* This implementation uses an internal {@link HashMap} to get the object
	* that the specified name maps to.
	*
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	/**
	* This implementation uses an internal {@link HashMap} to map the name
	* to the specified object.
	*
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload @:public public function setProperty(name : String, value : Dynamic) : Dynamic;
	
	@:overload @:public public function getKeySelector() : javax.xml.crypto.KeySelector;
	
	@:overload @:public public function setKeySelector(ks : javax.xml.crypto.KeySelector) : Void;
	
	/**
	* Returns the <code>Element</code> with the specified ID attribute value.
	*
	* <p>This implementation uses an internal {@link HashMap} to get the
	* element that the specified attribute value maps to.
	*
	* @param idValue the value of the ID
	* @return the <code>Element</code> with the specified ID attribute value,
	*    or <code>null</code> if none.
	* @throws NullPointerException if <code>idValue</code> is <code>null</code>
	* @see #setIdAttributeNS
	*/
	@:overload @:public public function getElementById(idValue : String) : org.w3c.dom.Element;
	
	/**
	* Registers the element's attribute specified by the namespace URI and
	* local name to be of type ID. The attribute must have a non-empty value.
	*
	* <p>This implementation uses an internal {@link HashMap} to map the
	* attribute's value to the specified element.
	*
	* @param element the element
	* @param namespaceURI the namespace URI of the attribute (specify
	*    <code>null</code> if not applicable)
	* @param localName the local name of the attribute
	* @throws IllegalArgumentException if <code>localName</code> is not an
	*    attribute of the specified element or it does not contain a specific
	*    value
	* @throws NullPointerException if <code>element</code> or
	*    <code>localName</code> is <code>null</code>
	* @see #getElementById
	*/
	@:overload @:public public function setIdAttributeNS(element : org.w3c.dom.Element, namespaceURI : String, localName : String) : Void;
	
	/**
	* Returns a read-only iterator over the set of Id/Element mappings of
	* this <code>DOMCryptoContext</code>. Attempts to modify the set via the
	* {@link Iterator#remove} method throw an
	* <code>UnsupportedOperationException</code>. The mappings are returned
	* in no particular order. Each element in the iteration is represented as a
	* {@link java.util.Map.Entry}. If the <code>DOMCryptoContext</code> is
	* modified while an iteration is in progress, the results of the
	* iteration are undefined.
	*
	* @return a read-only iterator over the set of mappings
	*/
	@:overload @:public public function iterator() : java.util.Iterator<Dynamic>;
	
	/**
	* This implementation uses an internal {@link HashMap} to get the object
	* that the specified key maps to.
	*/
	@:overload @:public public function get(key : Dynamic) : Dynamic;
	
	/**
	* This implementation uses an internal {@link HashMap} to map the key
	* to the specified object.
	*
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload @:public public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	
}
