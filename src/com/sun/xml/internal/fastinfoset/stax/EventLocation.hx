package com.sun.xml.internal.fastinfoset.stax;
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
extern class EventLocation implements javax.xml.stream.Location
{
	@:overload public static function getNilLocation() : javax.xml.stream.Location;
	
	/**
	* Return the line number where the current event ends,
	* returns -1 if none is available.
	* @return the current line number
	*/
	@:overload public function getLineNumber() : Int;
	
	/**
	* Return the column number where the current event ends,
	* returns -1 if none is available.
	* @return the current column number
	*/
	@:overload public function getColumnNumber() : Int;
	
	/**
	* Return the byte or character offset into the input source this location
	* is pointing to. If the input source is a file or a byte stream then
	* this is the byte offset into that stream, but if the input source is
	* a character media then the offset is the character offset.
	* Returns -1 if there is no offset available.
	* @return the current offset
	*/
	@:overload public function getCharacterOffset() : Int;
	
	/**
	* Returns the public ID of the XML
	* @return the public ID, or null if not available
	*/
	@:overload public function getPublicId() : String;
	
	/**
	* Returns the system ID of the XML
	* @return the system ID, or null if not available
	*/
	@:overload public function getSystemId() : String;
	
	@:overload public function setLineNumber(line : Int) : Void;
	
	@:overload public function setColumnNumber(col : Int) : Void;
	
	@:overload public function setCharacterOffset(offset : Int) : Void;
	
	@:overload public function setPublicId(id : String) : Void;
	
	@:overload public function setSystemId(id : String) : Void;
	
	@:overload public function toString() : String;
	
	
}
