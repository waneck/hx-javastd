package javax.swing.text.html.parser;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Entity implements javax.swing.text.html.parser.DTDConstants
{
	/**
	* An entity is described in a DTD using the ENTITY construct.
	* It defines the type and value of the the entity.
	*
	* @see DTD
	* @author Arthur van Hoff
	*/
	public var name : String;
	
	public var type : Int;
	
	public var data : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Creates an entity.
	* @param name the name of the entity
	* @param type the type of the entity
	* @param data the char array of data
	*/
	@:overload public function new(name : String, type : Int, data : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Gets the name of the entity.
	* @return the name of the entity, as a <code>String</code>
	*/
	@:overload public function getName() : String;
	
	/**
	* Gets the type of the entity.
	* @return the type of the entity
	*/
	@:overload public function getType() : Int;
	
	/**
	* Returns <code>true</code> if it is a parameter entity.
	* @return <code>true</code> if it is a parameter entity
	*/
	@:overload public function isParameter() : Bool;
	
	/**
	* Returns <code>true</code> if it is a general entity.
	* @return <code>true</code> if it is a general entity
	*/
	@:overload public function isGeneral() : Bool;
	
	/**
	* Returns the <code>data</code>.
	* @return the <code>data</code>
	*/
	@:overload public function getData() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Returns the data as a <code>String</code>.
	* @return the data as a <code>String</code>
	*/
	@:overload public function getString() : String;
	
	/**
	* Converts <code>nm</code> string to the corresponding
	* entity type.  If the string does not have a corresponding
	* entity type, returns the type corresponding to "CDATA".
	* Valid entity types are: "PUBLIC", "CDATA", "SDATA", "PI",
	* "STARTTAG", "ENDTAG", "MS", "MD", "SYSTEM".
	*
	* @param nm the string to be converted
	* @return the corresponding entity type, or the type corresponding
	*   to "CDATA", if none exists
	*/
	@:overload public static function name2type(nm : String) : Int;
	
	
}
