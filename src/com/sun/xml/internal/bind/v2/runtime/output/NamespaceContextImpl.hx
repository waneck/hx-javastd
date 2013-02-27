package com.sun.xml.internal.bind.v2.runtime.output;
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
extern class NamespaceContextImpl implements com.sun.xml.internal.bind.v2.runtime.NamespaceContext2
{
	/**
	* True to allow new URIs to be declared. False otherwise.
	*/
	public var collectionMode : Bool;
	
	@:overload public function new(owner : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload public function setPrefixMapper(mapper : com.sun.xml.internal.bind.marshaller.NamespacePrefixMapper) : Void;
	
	@:overload public function getPrefixMapper() : com.sun.xml.internal.bind.marshaller.NamespacePrefixMapper;
	
	@:overload public function reset() : Void;
	
	/**
	* Returns the prefix index to the specified URI.
	* This method allocates a new URI if necessary.
	*/
	@:overload public function declareNsUri(uri : String, preferedPrefix : String, requirePrefix : Bool) : Int;
	
	@:overload public function force(uri : String, prefix : String) : Int;
	
	/**
	* Puts this new binding into the declared prefixes list
	* without doing any duplicate check.
	*
	* This can be used to forcibly set namespace declarations.
	*
	* <p>
	* Most of the time {@link #declareNamespace(String, String, boolean)} shall be used.
	*
	* @return
	*      the index of this new binding.
	*/
	@:overload public function put(uri : String, prefix : String) : Int;
	
	@:overload public function getCurrent() : NamespaceContextImpl_Element;
	
	/**
	* Returns the prefix index of the specified URI.
	* It is an error if the URI is not declared.
	*/
	@:overload public function getPrefixIndex(uri : String) : Int;
	
	/**
	* Gets the prefix from a prefix index.
	*
	* The behavior is undefined if the index is out of range.
	*/
	@:overload public function getPrefix(prefixIndex : Int) : String;
	
	@:overload public function getNamespaceURI(prefixIndex : Int) : String;
	
	/**
	* Gets the namespace URI that is bound to the specified prefix.
	*
	* @return null
	*      if the prefix is unbound.
	*/
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	/**
	* Returns the prefix of the specified URI,
	* or null if none exists.
	*/
	@:overload public function getPrefix(uri : String) : String;
	
	@:overload public function getPrefixes(uri : String) : java.util.Iterator<String>;
	
	@:overload public function declareNamespace(namespaceUri : String, preferedPrefix : String, requirePrefix : Bool) : String;
	
	/**
	* Number of total bindings declared.
	*/
	@:overload public function count() : Int;
	
	
}
/**
* This model of namespace declarations maintain the following invariants.
*
* <ul>
*  <li>If a non-empty prefix is declared, it will never be reassigned to different namespace URIs.
*  <li>
*/
@:native('com$sun$xml$internal$bind$v2$runtime$output$NamespaceContextImpl$Element') extern class NamespaceContextImpl_Element
{
	public var context(default, null) : NamespaceContextImpl;
	
	/**
	* Returns true if this {@link Element} represents the root element that
	* we are marshalling.
	*/
	@:overload public function isRootElement() : Bool;
	
	@:overload public function push() : NamespaceContextImpl_Element;
	
	@:overload public function pop() : NamespaceContextImpl_Element;
	
	@:overload public function setTagName(prefix : Int, localName : String, outerPeer : Dynamic) : Void;
	
	@:overload public function setTagName(tagName : com.sun.xml.internal.bind.v2.runtime.Name, outerPeer : Dynamic) : Void;
	
	@:overload public function startElement(out : com.sun.xml.internal.bind.v2.runtime.output.XmlOutput, innerPeer : Dynamic) : Void;
	
	@:overload public function endElement(out : com.sun.xml.internal.bind.v2.runtime.output.XmlOutput) : Void;
	
	/**
	* Gets the number of bindings declared on this element.
	*/
	@:overload @:final public function count() : Int;
	
	/**
	* Gets the prefix declared in this context.
	*
	* @param idx
	*      between 0 and {@link #count()}
	*/
	@:overload @:final public function getPrefix(idx : Int) : String;
	
	/**
	* Gets the namespace URI declared in this context.
	*
	* @param idx
	*      between 0 and {@link #count()}
	*/
	@:overload @:final public function getNsUri(idx : Int) : String;
	
	@:overload public function getBase() : Int;
	
	@:overload public function getOuterPeer() : Dynamic;
	
	@:overload public function getInnerPeer() : Dynamic;
	
	/**
	* Gets the parent {@link Element}.
	*/
	@:overload public function getParent() : NamespaceContextImpl_Element;
	
	
}
