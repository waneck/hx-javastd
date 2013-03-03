package javax.xml.stream.events;
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
extern interface XMLEvent extends javax.xml.stream.XMLStreamConstants
{
	/**
	* Returns an integer code for this event.
	* @see #START_ELEMENT
	* @see #END_ELEMENT
	* @see #CHARACTERS
	* @see #ATTRIBUTE
	* @see #NAMESPACE
	* @see #PROCESSING_INSTRUCTION
	* @see #COMMENT
	* @see #START_DOCUMENT
	* @see #END_DOCUMENT
	* @see #DTD
	*/
	@:overload @:public public function getEventType() : Int;
	
	/**
	* Return the location of this event.  The Location
	* returned from this method is non-volatile and
	* will retain its information.
	* @see javax.xml.stream.Location
	*/
	@:overload public function getLocation() : javax.xml.stream.Location;
	
	/**
	* A utility function to check if this event is a StartElement.
	* @see StartElement
	*/
	@:overload @:public public function isStartElement() : Bool;
	
	/**
	* A utility function to check if this event is an Attribute.
	* @see Attribute
	*/
	@:overload @:public public function isAttribute() : Bool;
	
	/**
	* A utility function to check if this event is a Namespace.
	* @see Namespace
	*/
	@:overload @:public public function isNamespace() : Bool;
	
	/**
	* A utility function to check if this event is a EndElement.
	* @see EndElement
	*/
	@:overload @:public public function isEndElement() : Bool;
	
	/**
	* A utility function to check if this event is an EntityReference.
	* @see EntityReference
	*/
	@:overload @:public public function isEntityReference() : Bool;
	
	/**
	* A utility function to check if this event is a ProcessingInstruction.
	* @see ProcessingInstruction
	*/
	@:overload @:public public function isProcessingInstruction() : Bool;
	
	/**
	* A utility function to check if this event is Characters.
	* @see Characters
	*/
	@:overload @:public public function isCharacters() : Bool;
	
	/**
	* A utility function to check if this event is a StartDocument.
	* @see StartDocument
	*/
	@:overload @:public public function isStartDocument() : Bool;
	
	/**
	* A utility function to check if this event is an EndDocument.
	* @see EndDocument
	*/
	@:overload @:public public function isEndDocument() : Bool;
	
	/**
	* Returns this event as a start element event, may result in
	* a class cast exception if this event is not a start element.
	*/
	@:overload @:public public function asStartElement() : javax.xml.stream.events.StartElement;
	
	/**
	* Returns this event as an end  element event, may result in
	* a class cast exception if this event is not a end element.
	*/
	@:overload @:public public function asEndElement() : javax.xml.stream.events.EndElement;
	
	/**
	* Returns this event as Characters, may result in
	* a class cast exception if this event is not Characters.
	*/
	@:overload @:public public function asCharacters() : javax.xml.stream.events.Characters;
	
	/**
	* This method is provided for implementations to provide
	* optional type information about the associated event.
	* It is optional and will return null if no information
	* is available.
	*/
	@:overload @:public public function getSchemaType() : javax.xml.namespace.QName;
	
	/**
	* This method will write the XMLEvent as per the XML 1.0 specification as Unicode characters.
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
	
	
}
