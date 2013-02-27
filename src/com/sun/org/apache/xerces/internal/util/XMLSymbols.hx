package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002,2004 The Apache Software Foundation.
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
* All internalized xml symbols. They can be compared using "==".
*
* @author Sandy Gao, IBM
*/
extern class XMLSymbols
{
	@:overload public function new() : Void;
	
	/**
	* The empty string.
	*/
	public static var EMPTY_STRING(default, null) : String;
	
	/**
	* The internalized "xml" prefix.
	*/
	public static var PREFIX_XML(default, null) : String;
	
	/**
	* The internalized "xmlns" prefix.
	*/
	public static var PREFIX_XMLNS(default, null) : String;
	
	/** Symbol: "ANY". */
	public static var fANYSymbol(default, null) : String;
	
	/** Symbol: "CDATA". */
	public static var fCDATASymbol(default, null) : String;
	
	/** Symbol: "ID". */
	public static var fIDSymbol(default, null) : String;
	
	/** Symbol: "IDREF". */
	public static var fIDREFSymbol(default, null) : String;
	
	/** Symbol: "IDREFS". */
	public static var fIDREFSSymbol(default, null) : String;
	
	/** Symbol: "ENTITY". */
	public static var fENTITYSymbol(default, null) : String;
	
	/** Symbol: "ENTITIES". */
	public static var fENTITIESSymbol(default, null) : String;
	
	/** Symbol: "NMTOKEN". */
	public static var fNMTOKENSymbol(default, null) : String;
	
	/** Symbol: "NMTOKENS". */
	public static var fNMTOKENSSymbol(default, null) : String;
	
	/** Symbol: "NOTATION". */
	public static var fNOTATIONSymbol(default, null) : String;
	
	/** Symbol: "ENUMERATION". */
	public static var fENUMERATIONSymbol(default, null) : String;
	
	/** Symbol: "#IMPLIED. */
	public static var fIMPLIEDSymbol(default, null) : String;
	
	/** Symbol: "#REQUIRED". */
	public static var fREQUIREDSymbol(default, null) : String;
	
	/** Symbol: "#FIXED". */
	public static var fFIXEDSymbol(default, null) : String;
	
	
}
