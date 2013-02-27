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
extern class SAXDocumentSerializer extends com.sun.xml.internal.fastinfoset.Encoder implements com.sun.xml.internal.org.jvnet.fastinfoset.sax.FastInfosetWriter
{
	/**
	* The Fast Infoset SAX serializer.
	* <p>
	* Instantiate this serializer to serialize a fast infoset document in accordance
	* with the SAX API.
	* <p>
	* This utilizes the SAX API in a reverse manner to that of parsing. It is the
	* responsibility of the client to call the appropriate event methods on the
	* SAX handlers, and to ensure that such a sequence of methods calls results
	* in the production well-formed fast infoset documents. The
	* SAXDocumentSerializer performs no well-formed checks.
	*
	* <p>
	* More than one fast infoset document may be encoded to the
	* {@link java.io.OutputStream}.
	*/
	private var _elementHasNamespaces : Bool;
	
	private var _charactersAsCDATA : Bool;
	
	@:overload private function new(v : Bool) : Void;
	
	@:overload public function new() : Void;
	
	@:overload override public function reset() : Void;
	
	@:overload @:final override public function startDocument() : Void;
	
	@:overload @:final override public function endDocument() : Void;
	
	@:overload override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:final override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:final override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload @:final override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:final override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:final override public function processingInstruction(target : String, data : String) : Void;
	
	@:overload @:final override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:final override public function skippedEntity(name : String) : Void;
	
	@:overload @:final public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:final public function startCDATA() : Void;
	
	@:overload @:final public function endCDATA() : Void;
	
	@:overload @:final public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:final public function endDTD() : Void;
	
	@:overload @:final public function startEntity(name : String) : Void;
	
	@:overload @:final public function endEntity(name : String) : Void;
	
	@:overload @:final public function octets(URI : String, id : Int, b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Void;
	
	@:overload @:final public function object(URI : String, id : Int, data : Dynamic) : Void;
	
	@:overload @:final public function bytes(b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Void;
	
	@:overload @:final public function shorts(s : java.NativeArray<java.StdTypes.Int16>, start : Int, length : Int) : Void;
	
	@:overload @:final public function ints(i : java.NativeArray<Int>, start : Int, length : Int) : Void;
	
	@:overload @:final public function longs(l : java.NativeArray<haxe.Int64>, start : Int, length : Int) : Void;
	
	@:overload @:final public function booleans(b : java.NativeArray<Bool>, start : Int, length : Int) : Void;
	
	@:overload @:final public function floats(f : java.NativeArray<Single>, start : Int, length : Int) : Void;
	
	@:overload @:final public function doubles(d : java.NativeArray<Float>, start : Int, length : Int) : Void;
	
	@:overload public function uuids(msblsb : java.NativeArray<haxe.Int64>, start : Int, length : Int) : Void;
	
	@:overload public function numericCharacters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function dateTimeCharacters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function alphabetCharacters(alphabet : String, ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int, index : Bool) : Void;
	
	@:overload @:final private function countAttributes(atts : org.xml.sax.Attributes) : Int;
	
	@:overload private function encodeAttributes(atts : org.xml.sax.Attributes) : Void;
	
	@:overload private function encodeElement(namespaceURI : String, qName : String, localName : String) : Void;
	
	@:overload private function encodeAttribute(namespaceURI : String, qName : String, localName : String) : Bool;
	
	
}
