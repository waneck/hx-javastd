package org.xml.sax.ext;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// Locator2Impl.java - extended LocatorImpl
//// http://www.saxproject.org
//// Public Domain: no warranty.
//// $Id: Locator2Impl.java,v 1.2 2004/11/03 22:49:08 jsuttor Exp $
extern class Locator2Impl extends org.xml.sax.helpers.LocatorImpl implements org.xml.sax.ext.Locator2
{
	/**
	* Construct a new, empty Locator2Impl object.
	* This will not normally be useful, since the main purpose
	* of this class is to make a snapshot of an existing Locator.
	*/
	@:overload public function new() : Void;
	
	/**
	* Copy an existing Locator or Locator2 object.
	* If the object implements Locator2, values of the
	* <em>encoding</em> and <em>version</em>strings are copied,
	* otherwise they set to <em>null</em>.
	*
	* @param locator The existing Locator object.
	*/
	@:overload public function new(locator : org.xml.sax.Locator) : Void;
	
	/**
	* Returns the current value of the version property.
	*
	* @see #setXMLVersion
	*/
	@:overload public function getXMLVersion() : String;
	
	/**
	* Returns the current value of the encoding property.
	*
	* @see #setEncoding
	*/
	@:overload public function getEncoding() : String;
	
	/**
	* Assigns the current value of the version property.
	*
	* @param version the new "version" value
	* @see #getXMLVersion
	*/
	@:overload public function setXMLVersion(version : String) : Void;
	
	/**
	* Assigns the current value of the encoding property.
	*
	* @param encoding the new "encoding" value
	* @see #getEncoding
	*/
	@:overload public function setEncoding(encoding : String) : Void;
	
	
}
