package javax.xml.stream.util;
/*
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
* Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
*/
extern class EventReaderDelegate implements javax.xml.stream.XMLEventReader
{
	/**
	* Construct an empty filter with no parent.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct an filter with the specified parent.
	* @param reader the parent
	*/
	@:overload public function new(reader : javax.xml.stream.XMLEventReader) : Void;
	
	/**
	* Set the parent of this instance.
	* @param reader the new parent
	*/
	@:overload public function setParent(reader : javax.xml.stream.XMLEventReader) : Void;
	
	/**
	* Get the parent of this instance.
	* @return the parent or null if none is set
	*/
	@:overload public function getParent() : javax.xml.stream.XMLEventReader;
	
	@:overload public function nextEvent() : javax.xml.stream.events.XMLEvent;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function peek() : javax.xml.stream.events.XMLEvent;
	
	@:overload public function close() : Void;
	
	@:overload public function getElementText() : String;
	
	@:overload public function nextTag() : javax.xml.stream.events.XMLEvent;
	
	@:overload public function getProperty(name : String) : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
