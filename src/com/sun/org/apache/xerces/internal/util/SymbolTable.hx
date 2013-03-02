package com.sun.org.apache.xerces.internal.util;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
/**
* This class is a symbol table implementation that guarantees that
* strings used as identifiers are unique references. Multiple calls
* to <code>addSymbol</code> will always return the same string
* reference.
* <p>
* The symbol table performs the same task as <code>String.intern()</code>
* with the following differences:
* <ul>
*  <li>
*   A new string object does not need to be created in order to
*   retrieve a unique reference. Symbols can be added by using
*   a series of characters in a character array.
*  </li>
*  <li>
*   Users of the symbol table can provide their own symbol hashing
*   implementation. For example, a simple string hashing algorithm
*   may fail to produce a balanced set of hashcodes for symbols
*   that are <em>mostly</em> unique. Strings with similar leading
*   characters are especially prone to this poor hashing behavior.
*  </li>
* </ul>
*
* @see SymbolHash
*
* @author Andy Clark
*
*/
extern class SymbolTable
{
	/** Default table size. */
	private static var TABLE_SIZE(default, null) : Int;
	
	/** Buckets. */
	private var fBuckets : java.NativeArray<com.sun.org.apache.xerces.internal.util.SymbolTable.SymbolTable_Entry>;
	
	private var fTableSize : Int;
	
	/** Constructs a symbol table with a default number of buckets. */
	@:overload public function new() : Void;
	
	/** Constructs a symbol table with a specified number of buckets. */
	@:overload public function new(tableSize : Int) : Void;
	
	/**
	* Adds the specified symbol to the symbol table and returns a
	* reference to the unique symbol. If the symbol already exists,
	* the previous symbol reference is returned instead, in order
	* guarantee that symbol references remain unique.
	*
	* @param symbol The new symbol.
	*/
	@:overload public function addSymbol(symbol : String) : String;
	
	/**
	* Adds the specified symbol to the symbol table and returns a
	* reference to the unique symbol. If the symbol already exists,
	* the previous symbol reference is returned instead, in order
	* guarantee that symbol references remain unique.
	*
	* @param buffer The buffer containing the new symbol.
	* @param offset The offset into the buffer of the new symbol.
	* @param length The length of the new symbol in the buffer.
	*/
	@:overload public function addSymbol(buffer : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : String;
	
	/**
	* Returns a hashcode value for the specified symbol. The value
	* returned by this method must be identical to the value returned
	* by the <code>hash(char[],int,int)</code> method when called
	* with the character array that comprises the symbol string.
	*
	* @param symbol The symbol to hash.
	*/
	@:overload public function hash(symbol : String) : Int;
	
	/**
	* Returns a hashcode value for the specified symbol information.
	* The value returned by this method must be identical to the value
	* returned by the <code>hash(String)</code> method when called
	* with the string object created from the symbol information.
	*
	* @param buffer The character buffer containing the symbol.
	* @param offset The offset into the character buffer of the start
	*               of the symbol.
	* @param length The length of the symbol.
	*/
	@:overload public function hash(buffer : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Int;
	
	/**
	* Returns true if the symbol table already contains the specified
	* symbol.
	*
	* @param symbol The symbol to look for.
	*/
	@:overload public function containsSymbol(symbol : String) : Bool;
	
	/**
	* Returns true if the symbol table already contains the specified
	* symbol.
	*
	* @param buffer The buffer containing the symbol to look for.
	* @param offset The offset into the buffer.
	* @param length The length of the symbol in the buffer.
	*/
	@:overload public function containsSymbol(buffer : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Bool;
	
	
}
/**
* This class is a symbol table entry. Each entry acts as a node
* in a linked list.
*/
@:native('com$sun$org$apache$xerces$internal$util$SymbolTable$Entry') extern class SymbolTable_Entry
{
	/** Symbol. */
	public var symbol : String;
	
	/**
	* Symbol characters. This information is duplicated here for
	* comparison performance.
	*/
	public var characters : java.NativeArray<java.StdTypes.Char16>;
	
	/** The next entry. */
	public var next : com.sun.org.apache.xerces.internal.util.SymbolTable.SymbolTable_Entry;
	
	/**
	* Constructs a new entry from the specified symbol and next entry
	* reference.
	*/
	@:overload public function new(symbol : String, next : com.sun.org.apache.xerces.internal.util.SymbolTable.SymbolTable_Entry) : Void;
	
	/**
	* Constructs a new entry from the specified symbol information and
	* next entry reference.
	*/
	@:overload public function new(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, next : com.sun.org.apache.xerces.internal.util.SymbolTable.SymbolTable_Entry) : Void;
	
	
}
