package com.sun.xml.internal.ws.encoding;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class TagInfoset
{
	/**
	* Namespace declarations on this tag. Read-only.
	*
	* This is an array of the even length of the form { prefix0, uri0, prefix1, uri1, ... }.
	*
	* URIs/prefixes can be null (StAX-style)
	*/
	public var ns(default, null) : java.NativeArray<String>;
	
	/**
	* Attributes on this tag. Read-only.
	*/
	public var atts(default, null) : org.xml.sax.helpers.AttributesImpl;
	
	/**
	* Prefix of the start tag in stax-style.
	*/
	public var prefix(default, null) : String;
	
	/**
	* Namespace URI of the start tag in stax-style.
	*/
	public var nsUri(default, null) : String;
	
	/**
	* Local name of the start tag.
	*/
	public var localName(default, null) : String;
	
	@:overload public function new(nsUri : String, localName : String, prefix : String, atts : org.xml.sax.helpers.AttributesImpl, ns : java.NativeArray<String>) : Void;
	
	/**
	* Fills a {@link TagInfoset} object by the current element
	* that the reader points to.
	*/
	@:overload public function new(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	/**
	* Writes the start element event.
	*/
	@:overload public function writeStart(contentHandler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Writes the end element event.
	*/
	@:overload public function writeEnd(contentHandler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Writes the start element event.
	*/
	@:overload public function writeStart(w : javax.xml.stream.XMLStreamWriter) : Void;
	
	
}
