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
extern class DummyEvent implements javax.xml.stream.events.XMLEvent
{
	@:protected private var fLocation : javax.xml.stream.Location;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(i : Int) : Void;
	
	@:overload @:public public function getEventType() : Int;
	
	@:overload @:protected private function setEventType(eventType : Int) : Void;
	
	@:overload @:public public function isStartElement() : Bool;
	
	@:overload @:public public function isEndElement() : Bool;
	
	@:overload @:public public function isEntityReference() : Bool;
	
	@:overload @:public public function isProcessingInstruction() : Bool;
	
	@:overload @:public public function isCharacterData() : Bool;
	
	@:overload @:public public function isStartDocument() : Bool;
	
	@:overload @:public public function isEndDocument() : Bool;
	
	@:overload @:public public function getLocation() : javax.xml.stream.Location;
	
	/** Returns this event as Characters, may result in
	* a class cast exception if this event is not Characters.
	*/
	@:overload @:public public function asCharacters() : javax.xml.stream.events.Characters;
	
	/** Returns this event as an end  element event, may result in
	* a class cast exception if this event is not a end element.
	*/
	@:overload @:public public function asEndElement() : javax.xml.stream.events.EndElement;
	
	/** Returns this event as a start element event, may result in
	* a class cast exception if this event is not a start element.
	*/
	@:overload @:public public function asStartElement() : javax.xml.stream.events.StartElement;
	
	/** This method is provided for implementations to provide
	* optional type information about the associated event.
	* It is optional and will return null if no information
	* is available.
	*/
	@:overload @:public public function getSchemaType() : javax.xml.namespace.QName;
	
	/** A utility function to check if this event is an Attribute.
	* @see Attribute
	*/
	@:overload @:public public function isAttribute() : Bool;
	
	/** A utility function to check if this event is Characters.
	* @see Characters
	*/
	@:overload @:public public function isCharacters() : Bool;
	
	/** A utility function to check if this event is a Namespace.
	* @see Namespace
	*/
	@:overload @:public public function isNamespace() : Bool;
	
	/** This method will write the XMLEvent as per the XML 1.0 specification as Unicode characters.
	* No indentation or whitespace should be outputted.
	*
	* Any user defined event type SHALL have this method
	* called when being written to on an output stream.
	* Built in Event types MUST implement this method,
	* but implementations MAY choose not call these methods
	* for optimizations reasons when writing out built in
	* Events to an output stream.
	* The output generated MUST be equivalent in terms of the
	* infoset expressed.
	*
	* @param writer The writer that will output the data
	* @throws XMLStreamException if there is a fatal error writing the event
	*/
	@:overload @:public public function writeAsEncodedUnicode(writer : java.io.Writer) : Void;
	
	/** Helper method in order to expose IOException.
	* @param writer The writer that will output the data
	* @throws XMLStreamException if there is a fatal error writing the event
	* @throws IOException if there is an IO error
	*/
	@:overload @:protected @:abstract private function writeAsEncodedUnicodeEx(writer : java.io.Writer) : Void;
	
	/** Helper method to escape < > & for characters event and
	*  quotes, lt and amps for Entity
	*/
	@:overload @:protected private function charEncode(writer : java.io.Writer, data : String) : Void;
	
	
}
@:native('com$sun$xml$internal$stream$events$DummyEvent$DummyLocation') @:internal extern class DummyEvent_DummyLocation implements javax.xml.stream.Location
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function getCharacterOffset() : Int;
	
	@:overload @:public public function getColumnNumber() : Int;
	
	@:overload @:public public function getLineNumber() : Int;
	
	@:overload @:public public function getPublicId() : String;
	
	@:overload @:public public function getSystemId() : String;
	
	
}
