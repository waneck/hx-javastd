package com.sun.org.apache.xml.internal.resolver;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// CatalogEntry.java - Represents Catalog entries
/*
* Copyright 2001-2004 The Apache Software Foundation or its licensors,
* as applicable.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class CatalogEntry
{
	/** The nextEntry is the ordinal number of the next entry type. */
	private static var nextEntry : Int;
	
	/**
	* The entryTypes vector maps catalog entry names
	* (e.g., 'BASE' or 'SYSTEM') to their type (1, 2, etc.).
	* Names are case sensitive.
	*/
	private static var entryTypes : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** The entryTypes vector maps catalog entry types to the
	number of arguments they're required to have. */
	private static var entryArgs : java.util.Vector<Dynamic>;
	
	/**
	* Adds a new catalog entry type.
	*
	* @param name The name of the catalog entry type. This must be
	* unique among all types and is case-sensitive. (Adding a duplicate
	* name effectively replaces the old type with the new type.)
	* @param numArgs The number of arguments that this entry type
	* is required to have. There is no provision for variable numbers
	* of arguments.
	* @return The type for the new entry.
	*/
	@:overload public static function addEntryType(name : String, numArgs : Int) : Int;
	
	/**
	* Lookup an entry type
	*
	* @param name The name of the catalog entry type.
	* @return The type of the catalog entry with the specified name.
	* @throws InvalidCatalogEntryTypeException if no entry has the
	* specified name.
	*/
	@:native('getEntryType') @:overload public static function _getEntryType(name : String) : Int;
	
	/**
	* Find out how many arguments an entry is required to have.
	*
	* @param name The name of the catalog entry type.
	* @return The number of arguments that entry type is required to have.
	* @throws InvalidCatalogEntryTypeException if no entry has the
	* specified name.
	*/
	@:overload public static function getEntryArgCount(name : String) : Int;
	
	/**
	* Find out how many arguments an entry is required to have.
	*
	* @param type A valid catalog entry type.
	* @return The number of arguments that entry type is required to have.
	* @throws InvalidCatalogEntryTypeException if the type is invalid.
	*/
	@:overload public static function getEntryArgCount(type : Int) : Int;
	
	/** The entry type of this entry */
	private var entryType : Int;
	
	/** The arguments associated with this entry */
	private var args : java.util.Vector<Dynamic>;
	
	/**
	* Null constructor; something for subclasses to call.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a catalog entry of the specified type.
	*
	* @param name The name of the entry type
	* @param args A String Vector of arguments
	* @throws InvalidCatalogEntryTypeException if no such entry type
	* exists.
	* @throws InvalidCatalogEntryException if the wrong number of arguments
	* is passed.
	*/
	@:overload public function new(name : String, args : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Construct a catalog entry of the specified type.
	*
	* @param type The entry type
	* @param args A String Vector of arguments
	* @throws InvalidCatalogEntryTypeException if no such entry type
	* exists.
	* @throws InvalidCatalogEntryException if the wrong number of arguments
	* is passed.
	*/
	@:overload public function new(type : Int, args : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Get the entry type.
	*
	* @return The entry type of the CatalogEntry
	*/
	@:overload public function getEntryType() : Int;
	
	/**
	* Get an entry argument.
	*
	* @param argNum The argument number (arguments are numbered from 0).
	* @return The specified argument or null if an invalid argNum is
	* provided.
	*/
	@:overload public function getEntryArg(argNum : Int) : String;
	
	/**
	* Set an entry argument.
	*
	* <p>Catalogs sometimes need to adjust the catlog entry parameters,
	* for example to make a relative URI absolute with respect to the
	* current base URI. But in general, this function should only be
	* called shortly after object creation to do some sort of cleanup.
	* Catalog entries should not mutate over time.</p>
	*
	* @param argNum The argument number (arguments are numbered from 0).
	* @throws ArrayIndexOutOfBoundsException if an invalid argument
	* number is provided.
	*/
	@:overload public function setEntryArg(argNum : Int, newspec : String) : Void;
	
	
}
