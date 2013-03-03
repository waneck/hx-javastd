package com.sun.org.apache.xml.internal.resolver;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// CatalogException.java - Catalog exception
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
/**
* Signal Catalog exception.
*
* <p>This exception is thrown if an error occurs loading a
* catalog file.</p>
*
* @see Catalog
*
* @author Norman Walsh
* <a href="mailto:Norman.Walsh@Sun.COM">Norman.Walsh@Sun.COM</a>
*
*/
extern class CatalogException extends java.lang.Exception
{
	/** A wrapper around another exception */
	@:public @:static @:final public static var WRAPPER(default, null) : Int;
	
	/** An invalid entry */
	@:public @:static @:final public static var INVALID_ENTRY(default, null) : Int;
	
	/** An invalid entry type */
	@:public @:static @:final public static var INVALID_ENTRY_TYPE(default, null) : Int;
	
	/** Could not instantiate an XML parser */
	@:public @:static @:final public static var NO_XML_PARSER(default, null) : Int;
	
	/** Unknown XML format */
	@:public @:static @:final public static var UNKNOWN_FORMAT(default, null) : Int;
	
	/** Unparseable XML catalog (not XML)*/
	@:public @:static @:final public static var UNPARSEABLE(default, null) : Int;
	
	/** XML but parse failed */
	@:public @:static @:final public static var PARSE_FAILED(default, null) : Int;
	
	/** Text catalog ended in mid-comment */
	@:public @:static @:final public static var UNENDED_COMMENT(default, null) : Int;
	
	/**
	* Create a new CatalogException.
	*
	* @param type The exception type
	* @param message The error or warning message.
	*/
	@:overload @:public public function new(type : Int, message : String) : Void;
	
	/**
	* Create a new CatalogException.
	*
	* @param type The exception type
	*/
	@:overload @:public public function new(type : Int) : Void;
	
	/**
	* Create a new CatalogException wrapping an existing exception.
	*
	* <p>The existing exception will be embedded in the new
	* one, and its message will become the default message for
	* the CatalogException.</p>
	*
	* @param e The exception to be wrapped in a CatalogException.
	*/
	@:overload @:public public function new(e : java.lang.Exception) : Void;
	
	/**
	* Create a new CatalogException from an existing exception.
	*
	* <p>The existing exception will be embedded in the new
	* one, but the new exception will have its own message.</p>
	*
	* @param message The detail message.
	* @param e The exception to be wrapped in a CatalogException.
	*/
	@:overload @:public public function new(message : String, e : java.lang.Exception) : Void;
	
	/**
	* Return a detail message for this exception.
	*
	* <p>If there is an embedded exception, and if the CatalogException
	* has no detail message of its own, this method will return
	* the detail message from the embedded exception.</p>
	*
	* @return The error or warning message.
	*/
	@:overload @:public override public function getMessage() : String;
	
	/**
	* Return the embedded exception, if any.
	*
	* @return The embedded exception, or null if there is none.
	*/
	@:overload @:public public function getException() : java.lang.Exception;
	
	/**
	* Return the exception type
	*
	* @return The exception type
	*/
	@:overload @:public public function getExceptionType() : Int;
	
	/**
	* Override toString to pick up any embedded exception.
	*
	* @return A string representation of this exception.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
