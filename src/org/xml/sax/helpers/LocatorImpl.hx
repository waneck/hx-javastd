package org.xml.sax.helpers;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// SAX default implementation for Locator.
//// http://www.saxproject.org
//// No warranty; no copyright -- use this as you will.
//// $Id: LocatorImpl.java,v 1.2 2004/11/03 22:53:09 jsuttor Exp $
extern class LocatorImpl implements org.xml.sax.Locator
{
	/**
	* Zero-argument constructor.
	*
	* <p>This will not normally be useful, since the main purpose
	* of this class is to make a snapshot of an existing Locator.</p>
	*/
	@:overload public function new() : Void;
	
	/**
	* Copy constructor.
	*
	* <p>Create a persistent copy of the current state of a locator.
	* When the original locator changes, this copy will still keep
	* the original values (and it can be used outside the scope of
	* DocumentHandler methods).</p>
	*
	* @param locator The locator to copy.
	*/
	@:overload public function new(locator : org.xml.sax.Locator) : Void;
	
	/**
	* Return the saved public identifier.
	*
	* @return The public identifier as a string, or null if none
	*         is available.
	* @see org.xml.sax.Locator#getPublicId
	* @see #setPublicId
	*/
	@:overload public function getPublicId() : String;
	
	/**
	* Return the saved system identifier.
	*
	* @return The system identifier as a string, or null if none
	*         is available.
	* @see org.xml.sax.Locator#getSystemId
	* @see #setSystemId
	*/
	@:overload public function getSystemId() : String;
	
	/**
	* Return the saved line number (1-based).
	*
	* @return The line number as an integer, or -1 if none is available.
	* @see org.xml.sax.Locator#getLineNumber
	* @see #setLineNumber
	*/
	@:overload public function getLineNumber() : Int;
	
	/**
	* Return the saved column number (1-based).
	*
	* @return The column number as an integer, or -1 if none is available.
	* @see org.xml.sax.Locator#getColumnNumber
	* @see #setColumnNumber
	*/
	@:overload public function getColumnNumber() : Int;
	
	/**
	* Set the public identifier for this locator.
	*
	* @param publicId The new public identifier, or null
	*        if none is available.
	* @see #getPublicId
	*/
	@:overload public function setPublicId(publicId : String) : Void;
	
	/**
	* Set the system identifier for this locator.
	*
	* @param systemId The new system identifier, or null
	*        if none is available.
	* @see #getSystemId
	*/
	@:overload public function setSystemId(systemId : String) : Void;
	
	/**
	* Set the line number for this locator (1-based).
	*
	* @param lineNumber The line number, or -1 if none is available.
	* @see #getLineNumber
	*/
	@:overload public function setLineNumber(lineNumber : Int) : Void;
	
	/**
	* Set the column number for this locator (1-based).
	*
	* @param columnNumber The column number, or -1 if none is available.
	* @see #getColumnNumber
	*/
	@:overload public function setColumnNumber(columnNumber : Int) : Void;
	
	
}
