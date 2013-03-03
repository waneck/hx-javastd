package com.sun.xml.internal.ws.api.server;
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
extern class SDDocumentSource
{
	/**
	* Returns the {@link XMLStreamReader} that reads the document.
	*
	* <p>
	* This method maybe invoked multiple times concurrently.
	*
	* @param xif
	*      The implementation may choose to use this object when it wants to
	*      create a new parser (or it can just ignore this parameter completely.)
	* @return
	*      The caller is responsible for closing the reader to avoid resource leak.
	*
	* @throws XMLStreamException
	*      if something goes wrong while creating a parser.
	* @throws IOException
	*      if something goes wrong trying to read the document.
	*/
	@:overload @:public @:abstract public function read(xif : javax.xml.stream.XMLInputFactory) : javax.xml.stream.XMLStreamReader;
	
	/**
	* Returns the {@link XMLStreamReader} that reads the document.
	*
	* <p>
	* This method maybe invoked multiple times concurrently.
	*
	* @return
	*      The caller is responsible for closing the reader to avoid resource leak.
	*
	* @throws XMLStreamException
	*      if something goes wrong while creating a parser.
	* @throws IOException
	*      if something goes wrong trying to read the document.
	*/
	@:overload @:public @:abstract public function read() : javax.xml.stream.XMLStreamReader;
	
	/**
	* System ID of this document.
	*/
	@:overload @:public @:abstract public function getSystemId() : java.net.URL;
	
	/**
	* Creates {@link SDDocumentSource} from an URL.
	*/
	@:overload @:public @:static public static function create(url : java.net.URL) : com.sun.xml.internal.ws.api.server.SDDocumentSource;
	
	/**
	* Creates a {@link SDDocumentSource} from {@link XMLStreamBuffer}.
	*/
	@:overload @:public @:static public static function create(systemId : java.net.URL, xsb : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : com.sun.xml.internal.ws.api.server.SDDocumentSource;
	
	
}
