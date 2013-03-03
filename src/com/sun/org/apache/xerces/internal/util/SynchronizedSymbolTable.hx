package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
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
* Synchronized symbol table.
*
* This class moved into the util package since it's needed by multiple
* other classes (CachingParserPool, XMLGrammarCachingConfiguration).
*
* @author Andy Clark, IBM
*/
extern class SynchronizedSymbolTable extends com.sun.org.apache.xerces.internal.util.SymbolTable
{
	/** Main symbol table. */
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Constructs a synchronized symbol table. */
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(size : Int) : Void;
	
	/**
	* Adds the specified symbol to the symbol table and returns a
	* reference to the unique symbol. If the symbol already exists,
	* the previous symbol reference is returned instead, in order
	* guarantee that symbol references remain unique.
	*
	* @param symbol The new symbol.
	*/
	@:overload @:public override public function addSymbol(symbol : String) : String;
	
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
	@:overload @:public override public function addSymbol(buffer : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : String;
	
	/**
	* Returns true if the symbol table already contains the specified
	* symbol.
	*
	* @param symbol The symbol to look for.
	*/
	@:overload @:public override public function containsSymbol(symbol : String) : Bool;
	
	/**
	* Returns true if the symbol table already contains the specified
	* symbol.
	*
	* @param buffer The buffer containing the symbol to look for.
	* @param offset The offset into the buffer.
	* @param length The length of the symbol in the buffer.
	*/
	@:overload @:public override public function containsSymbol(buffer : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Bool;
	
	
}
