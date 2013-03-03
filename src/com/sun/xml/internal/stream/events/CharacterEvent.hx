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
extern class CharacterEvent extends com.sun.xml.internal.stream.events.DummyEvent implements javax.xml.stream.events.Characters
{
	@:overload @:public public function new() : Void;
	
	/**
	*
	* @param data Character Data.
	*/
	@:overload @:public public function new(data : String) : Void;
	
	/**
	*
	* @param data Character Data.
	* @param flag true if CData
	*/
	@:overload @:public public function new(data : String, flag : Bool) : Void;
	
	/**
	*
	* @param data Character Data.
	* @param flag true if CData
	* @param isIgnorableWhiteSpace true if data is ignorable whitespace.
	*/
	@:overload @:public public function new(data : String, flag : Bool, isIgnorableWhiteSpace : Bool) : Void;
	
	@:overload @:protected private function init() : Void;
	
	/**
	*
	* @return return data.
	*/
	@:overload @:public public function getData() : String;
	
	/**
	*
	* @param String data
	*/
	@:overload @:public public function setData(data : String) : Void;
	
	/**
	*
	* @return boolean returns true if the data is CData
	*/
	@:overload @:public public function isCData() : Bool;
	
	/**
	*
	* @return String return the String representation of this event.
	*/
	@:overload @:public public function toString() : String;
	
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
	@:overload @:protected override private function writeAsEncodedUnicodeEx(writer : java.io.Writer) : Void;
	
	/**
	* Return true if this is ignorableWhiteSpace.  If
	* this event is ignorableWhiteSpace its event type will
	* be SPACE.
	* @return
	*/
	@:overload @:public public function isIgnorableWhiteSpace() : Bool;
	
	/**
	* Returns true if this set of Characters
	* is all whitespace.  Whitspace inside a document
	* is reported as CHARACTERS.  This method allows
	* checking of CHARACTERS events to see if they
	* are composed of only whitespace characters
	* @return
	*/
	@:overload @:public public function isWhiteSpace() : Bool;
	
	
}
