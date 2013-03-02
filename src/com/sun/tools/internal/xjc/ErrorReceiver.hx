package com.sun.tools.internal.xjc;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
/*
* Use is subject to the license terms.
*/
extern class ErrorReceiver implements org.xml.sax.ErrorHandler implements com.sun.xml.internal.bind.api.ErrorListener
{
	/**
	* @param loc
	*      can be null if the location is unknown
	*/
	@:overload @:final public function error(loc : org.xml.sax.Locator, msg : String) : Void;
	
	@:overload @:final public function error(loc : org.xml.sax.Locator, msg : String, e : java.lang.Exception) : Void;
	
	@:overload @:final public function error(msg : String, e : java.lang.Exception) : Void;
	
	@:overload public function error(e : java.lang.Exception) : Void;
	
	/**
	* @param loc
	*      can be null if the location is unknown
	*/
	@:overload @:final public function warning(loc : org.xml.sax.Locator, msg : String) : Void;
	
	@:overload @:abstract public function error(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:abstract public function fatalError(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:abstract public function warning(exception : org.xml.sax.SAXParseException) : Void;
	
	/**
	* This method will be invoked periodically to allow {@link AbortException}
	* to be thrown, especially when this is driven by some kind of GUI.
	*/
	@:overload public function pollAbort() : Void;
	
	/**
	* Reports verbose messages to users.
	*
	* This method can be used to report additional non-essential
	* messages. The implementation usually discards them
	* unless some specific debug option is turned on.
	*/
	@:overload @:abstract public function info(exception : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Reports a debug message to users.
	*
	* @see #info(SAXParseException)
	*/
	@:overload @:final public function debug(msg : String) : Void;
	
	/**
	* Returns the human readable string representation of the
	* {@link org.xml.sax.Locator} part of the specified
	* {@link SAXParseException}.
	*
	* @return  non-null valid object.
	*/
	@:overload @:final private function getLocationString(e : org.xml.sax.SAXParseException) : String;
	
	
}
