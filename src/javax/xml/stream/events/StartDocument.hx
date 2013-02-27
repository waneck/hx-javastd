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
/**
* An interface for the start document event
*
* @version 1.0
* @author Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
* @since 1.6
*/
@:require(java6) extern interface StartDocument extends javax.xml.stream.events.XMLEvent
{
	/**
	* Returns the system ID of the XML data
	* @return the system ID, defaults to ""
	*/
	@:overload public function getSystemId() : String;
	
	/**
	* Returns the encoding style of the XML data
	* @return the character encoding, defaults to "UTF-8"
	*/
	@:overload public function getCharacterEncodingScheme() : String;
	
	/**
	* Returns true if CharacterEncodingScheme was set in
	* the encoding declaration of the document
	*/
	@:overload public function encodingSet() : Bool;
	
	/**
	* Returns if this XML is standalone
	* @return the standalone state of XML, defaults to "no"
	*/
	@:overload public function isStandalone() : Bool;
	
	/**
	* Returns true if the standalone attribute was set in
	* the encoding declaration of the document.
	*/
	@:overload public function standaloneSet() : Bool;
	
	/**
	* Returns the version of XML of this XML stream
	* @return the version of XML, defaults to "1.0"
	*/
	@:overload public function getVersion() : String;
	
	
}
