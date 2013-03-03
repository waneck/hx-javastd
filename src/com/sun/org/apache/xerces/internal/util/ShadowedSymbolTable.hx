package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
* Shadowed symbol table.
*
* The table has a reference to the main symbol table and is
* not allowed to add new symbols to the main symbol table.
* New symbols are added to the shadow symbol table and are local
* to the component using this table.
*
* @author Andy Clark IBM
*/
extern class ShadowedSymbolTable extends com.sun.org.apache.xerces.internal.util.SymbolTable
{
	/** Main symbol table. */
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Constructs a shadow of the specified symbol table. */
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
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
	* Returns a hashcode value for the specified symbol. The value
	* returned by this method must be identical to the value returned
	* by the <code>hash(char[],int,int)</code> method when called
	* with the character array that comprises the symbol string.
	*
	* @param symbol The symbol to hash.
	*/
	@:overload @:public override public function hash(symbol : String) : Int;
	
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
	@:overload @:public override public function hash(buffer : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Int;
	
	
}
