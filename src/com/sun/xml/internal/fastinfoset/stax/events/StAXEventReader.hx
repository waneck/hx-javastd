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
extern class StAXEventReader implements javax.xml.stream.XMLEventReader
{
	@:protected private var _streamReader : javax.xml.stream.XMLStreamReader;
	
	@:protected private var _eventAllocator : javax.xml.stream.util.XMLEventAllocator;
	
	@:overload @:public public function new(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function nextEvent() : javax.xml.stream.events.XMLEvent;
	
	@:overload @:public public function remove() : Void;
	
	@:overload @:public public function close() : Void;
	
	/** Reads the content of a text-only element. Precondition:
	* the current event is START_ELEMENT. Postcondition:
	* The current event is the corresponding END_ELEMENT.
	* @throws XMLStreamException if the current event is not a START_ELEMENT
	* or if a non text element is encountered
	*/
	@:overload @:public public function getElementText() : String;
	
	/** Get the value of a feature/property from the underlying implementation
	* @param name The name of the property
	* @return The value of the property
	* @throws IllegalArgumentException if the property is not supported
	*/
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	/** Skips any insignificant space events until a START_ELEMENT or
	* END_ELEMENT is reached. If anything other than space characters are
	* encountered, an exception is thrown. This method should
	* be used when processing element-only content because
	* the parser is not able to recognize ignorable whitespace if
	* the DTD is missing or not interpreted.
	* @throws XMLStreamException if anything other than space characters are encountered
	*/
	@:overload @:public public function nextTag() : javax.xml.stream.events.XMLEvent;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function peek() : javax.xml.stream.events.XMLEvent;
	
	@:overload @:public public function setAllocator(allocator : javax.xml.stream.util.XMLEventAllocator) : Void;
	
	
}
