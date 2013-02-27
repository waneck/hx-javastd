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
extern class CharactersEvent extends com.sun.xml.internal.fastinfoset.stax.events.EventBase implements javax.xml.stream.events.Characters
{
	@:overload public function new() : Void;
	
	/**
	*
	* @param data Character Data.
	*/
	@:overload public function new(data : String) : Void;
	
	/**
	*
	* @param data Character Data.
	* @param isCData true if is CData
	*/
	@:overload public function new(data : String, isCData : Bool) : Void;
	
	/**
	* Get the character data of this event
	*/
	@:overload public function getData() : String;
	
	@:overload public function setData(data : String) : Void;
	
	/**
	*
	* @return boolean returns true if the data is CData
	*/
	@:overload public function isCData() : Bool;
	
	/**
	*
	* @return String return the String representation of this event.
	*/
	@:overload public function toString() : String;
	
	/**
	* Return true if this is ignorableWhiteSpace.  If
	* this event is ignorableWhiteSpace its event type will
	* be SPACE.
	* @return boolean true if this is ignorableWhiteSpace.
	*/
	@:overload public function isIgnorableWhiteSpace() : Bool;
	
	/**
	* Returns true if this set of Characters are all whitespace.  Whitspace inside a document
	* is reported as CHARACTERS.  This method allows checking of CHARACTERS events to see
	* if they are composed of only whitespace characters
	* @return boolean true if this set of Characters are all whitespace
	*/
	@:overload public function isWhiteSpace() : Bool;
	
	@:overload public function setSpace(isSpace : Bool) : Void;
	
	@:overload public function setIgnorable(isIgnorable : Bool) : Void;
	
	
}
