package com.sun.beans.decoder;
/*
* Copyright (c) 2008, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class DocumentHandler extends org.xml.sax.helpers.DefaultHandler
{
	/**
	* Creates new instance of document handler.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns the class loader used to instantiate objects.
	* If the class loader has not been explicitly set
	* then {@code null} is returned.
	*
	* @return the class loader used to instantiate objects
	*/
	@:overload public function getClassLoader() : java.lang.ClassLoader;
	
	/**
	* Sets the class loader used to instantiate objects.
	* If the class loader is not set
	* then default class loader will be used.
	*
	* @param loader  a classloader to use
	*/
	@:overload public function setClassLoader(loader : java.lang.ClassLoader) : Void;
	
	/**
	* Returns the exception listener for parsing.
	* The exception listener is notified
	* when handler catches recoverable exceptions.
	* If the exception listener has not been explicitly set
	* then default exception listener is returned.
	*
	* @return the exception listener for parsing
	*/
	@:overload public function getExceptionListener() : java.beans.ExceptionListener;
	
	/**
	* Sets the exception listener for parsing.
	* The exception listener is notified
	* when handler catches recoverable exceptions.
	*
	* @param listener  the exception listener for parsing
	*/
	@:overload public function setExceptionListener(listener : java.beans.ExceptionListener) : Void;
	
	/**
	* Returns the owner of this document handler.
	*
	* @return the owner of this document handler
	*/
	@:overload public function getOwner() : Dynamic;
	
	/**
	* Sets the owner of this document handler.
	*
	* @param owner  the owner of this document handler
	*/
	@:overload public function setOwner(owner : Dynamic) : Void;
	
	/**
	* Returns the handler for the element with specified name.
	*
	* @param name  the name of the element
	* @return the corresponding element handler
	*/
	@:overload public function getElementHandler(name : String) : Class<com.sun.beans.decoder.ElementHandler>;
	
	/**
	* Sets the handler for the element with specified name.
	*
	* @param name     the name of the element
	* @param handler  the corresponding element handler
	*/
	@:overload public function setElementHandler(name : String, handler : Class<com.sun.beans.decoder.ElementHandler>) : Void;
	
	/**
	* Indicates whether the variable with specified identifier is defined.
	*
	* @param id  the identifier
	* @return @{code true} if the variable is defined;
	*         @{code false} otherwise
	*/
	@:overload public function hasVariable(id : String) : Bool;
	
	/**
	* Returns the value of the variable with specified identifier.
	*
	* @param id  the identifier
	* @return the value of the variable
	*/
	@:overload public function getVariable(id : String) : Dynamic;
	
	/**
	* Sets new value of the variable with specified identifier.
	*
	* @param id     the identifier
	* @param value  new value of the variable
	*/
	@:overload public function setVariable(id : String, value : Dynamic) : Void;
	
	/**
	* Returns the array of readed objects.
	*
	* @return the array of readed objects
	*/
	@:overload public function getObjects() : java.NativeArray<Dynamic>;
	
	/**
	* Prepares this handler to read objects from XML document.
	*/
	@:overload public function startDocument() : Void;
	
	/**
	* Parses opening tag of XML element
	* using corresponding element handler.
	*
	* @param uri         the namespace URI, or the empty string
	*                    if the element has no namespace URI or
	*                    if namespace processing is not being performed
	* @param localName   the local name (without prefix), or the empty string
	*                    if namespace processing is not being performed
	* @param qName       the qualified name (with prefix), or the empty string
	*                    if qualified names are not available
	* @param attributes  the attributes attached to the element
	*/
	@:overload public function startElement(uri : String, localName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	/**
	* Parses closing tag of XML element
	* using corresponding element handler.
	*
	* @param uri        the namespace URI, or the empty string
	*                   if the element has no namespace URI or
	*                   if namespace processing is not being performed
	* @param localName  the local name (without prefix), or the empty string
	*                   if namespace processing is not being performed
	* @param qName      the qualified name (with prefix), or the empty string
	*                   if qualified names are not available
	*/
	@:overload public function endElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* Parses character data inside XML element.
	*
	* @param chars   the array of characters
	* @param start   the start position in the character array
	* @param length  the number of characters to use
	*/
	@:overload public function characters(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Handles an exception using current exception listener.
	*
	* @param exception  an exception to handle
	* @see #setExceptionListener
	*/
	@:overload public function handleException(exception : java.lang.Exception) : Void;
	
	/**
	* Starts parsing of the specified input source.
	*
	* @param input  the input source to parse
	*/
	@:overload public function parse(input : org.xml.sax.InputSource) : Void;
	
	/**
	* Resolves class by name using current class loader.
	* This method handles exception using current exception listener.
	*
	* @param name  the name of the class
	* @return the object that represents the class
	*/
	@:overload public function findClass(name : String) : Class<Dynamic>;
	
	
}
