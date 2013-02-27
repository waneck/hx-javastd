package com.sun.org.apache.xalan.internal.xsltc.trax;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class StAXEvent2SAX implements org.xml.sax.XMLReader implements org.xml.sax.Locator
{
	@:overload public function new(staxCore : javax.xml.stream.XMLEventReader) : Void;
	
	@:overload public function getContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload public function parse(unused : org.xml.sax.InputSource) : Void;
	
	@:overload public function parse() : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getFeature(name : String) : Bool;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function parse(sysId : String) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function setErrorHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getProperty(name : String) : Dynamic;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getColumnNumber() : Int;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getLineNumber() : Int;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getPublicId() : String;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function getSystemId() : String;
	
	
}
