package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: SAXSourceLocator.java,v 1.2.4.1 2005/09/15 08:15:52 suresh_emailid Exp $
*/
extern class SAXSourceLocator extends org.xml.sax.helpers.LocatorImpl implements javax.xml.transform.SourceLocator implements java.io.Serializable
{
	/**
	* Constructor SAXSourceLocator
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructor SAXSourceLocator
	*
	*
	* @param locator Source locator
	*/
	@:overload @:public public function new(locator : org.xml.sax.Locator) : Void;
	
	/**
	* Constructor SAXSourceLocator
	*
	*
	* @param locator Source locator
	*/
	@:overload @:public public function new(locator : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* Constructor SAXSourceLocator
	*
	*
	* @param spe SAXParseException exception.
	*/
	@:overload @:public public function new(spe : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Return the public identifier for the current document event.
	*
	* <p>The return value is the public identifier of the document
	* entity or of the external parsed entity in which the markup
	* triggering the event appears.</p>
	*
	* @return A string containing the public identifier, or
	*         null if none is available.
	* @see #getSystemId
	*/
	@:overload @:public override public function getPublicId() : String;
	
	/**
	* Return the system identifier for the current document event.
	*
	* <p>The return value is the system identifier of the document
	* entity or of the external parsed entity in which the markup
	* triggering the event appears.</p>
	*
	* <p>If the system identifier is a URL, the parser must resolve it
	* fully before passing it to the application.</p>
	*
	* @return A string containing the system identifier, or null
	*         if none is available.
	* @see #getPublicId
	*/
	@:overload @:public override public function getSystemId() : String;
	
	/**
	* Return the line number where the current document event ends.
	*
	* <p><strong>Warning:</strong> The return value from the method
	* is intended only as an approximation for the sake of error
	* reporting; it is not intended to provide sufficient information
	* to edit the character content of the original XML document.</p>
	*
	* <p>The return value is an approximation of the line number
	* in the document entity or external parsed entity where the
	* markup triggering the event appears.</p>
	*
	* @return The line number, or -1 if none is available.
	* @see #getColumnNumber
	*/
	@:overload @:public override public function getLineNumber() : Int;
	
	/**
	* Return the column number where the current document event ends.
	*
	* <p><strong>Warning:</strong> The return value from the method
	* is intended only as an approximation for the sake of error
	* reporting; it is not intended to provide sufficient information
	* to edit the character content of the original XML document.</p>
	*
	* <p>The return value is an approximation of the column number
	* in the document entity or external parsed entity where the
	* markup triggering the event appears.</p>
	*
	* @return The column number, or -1 if none is available.
	* @see #getLineNumber
	*/
	@:overload @:public override public function getColumnNumber() : Int;
	
	
}
