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
extern class SAXDocumentSerializerWithPrefixMapping extends com.sun.xml.internal.fastinfoset.sax.SAXDocumentSerializer
{
	/**
	* The Fast Infoset SAX serializer that maps prefixes to user specified prefixes
	* that are specified in a namespace URI to prefix map.
	* <p>
	* This serializer will not preserve the original prefixes and this serializer
	* should not be used when prefixes need to be preserved, such as the case
	* when there are qualified names in content.
	* <p>
	* A namespace URI to prefix map is utilized such that the prefixes
	* in the map are utilized rather than the prefixes specified in
	* the qualified name for elements and attributes.
	* <p>
	* Any namespace declarations with a namespace URI that is not present in
	* the map are added.
	* <p>
	*/
	private var _namespaceToPrefixMapping : java.util.Map<Dynamic, Dynamic>;
	
	private var _prefixToPrefixMapping : java.util.Map<Dynamic, Dynamic>;
	
	private var _lastCheckedNamespace : String;
	
	private var _lastCheckedPrefix : String;
	
	private var _declaredNamespaces : com.sun.xml.internal.fastinfoset.util.StringIntMap;
	
	@:overload public function new(namespaceToPrefixMapping : java.util.Map<Dynamic, Dynamic>) : Void;
	
	@:overload @:final override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:final override private function encodeElement(namespaceURI : String, qName : String, localName : String) : Void;
	
	@:overload private function encodeElementMapEntry(entry : com.sun.xml.internal.fastinfoset.util.LocalNameQualifiedNamesMap.LocalNameQualifiedNamesMap_Entry, namespaceURI : String) : Bool;
	
	@:overload @:final override private function encodeAttributes(atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:final override private function encodeAttribute(namespaceURI : String, qName : String, localName : String) : Bool;
	
	@:overload private function encodeAttributeMapEntry(entry : com.sun.xml.internal.fastinfoset.util.LocalNameQualifiedNamesMap.LocalNameQualifiedNamesMap_Entry, namespaceURI : String) : Bool;
	
	@:overload @:final private function getPrefix(namespaceURI : String) : String;
	
	@:overload @:final private function putPrefix(namespaceURI : String, prefix : String) : Void;
	
	
}
