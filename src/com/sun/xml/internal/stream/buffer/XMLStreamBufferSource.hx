package com.sun.xml.internal.stream.buffer;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLStreamBufferSource extends javax.xml.transform.sax.SAXSource
{
	/**
	* A JAXP Source implementation that supports the parsing
	* of {@link XMLStreamBuffer} for use by applications that expect a Source.
	*
	* <p>
	* The derivation of XMLStreamBufferSource from SAXSource is an implementation
	* detail.
	*
	* <p>Applications shall obey the following restrictions:
	* <ul>
	* <li>The setXMLReader and setInputSource shall not be called.</li>
	* <li>The XMLReader object obtained by the getXMLReader method shall
	*     be used only for parsing the InputSource object returned by
	*     the getInputSource method.</li>
	* <li>The InputSource object obtained by the getInputSource method shall
	*     be used only for being parsed by the XMLReader object returned by
	*     the getXMLReader method.</li>
	* </ul>
	*/
	private var _buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer;
	
	private var _bufferProcessor : com.sun.xml.internal.stream.buffer.sax.SAXBufferProcessor;
	
	/**
	* XMLStreamBufferSource constructor.
	*
	* @param buffer the {@link XMLStreamBuffer} to use.
	*/
	@:overload public function new(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	/**
	* Get the {@link XMLStreamBuffer} that is used.
	*
	* @return the {@link XMLStreamBuffer}.
	*/
	@:overload public function getXMLStreamBuffer() : com.sun.xml.internal.stream.buffer.XMLStreamBuffer;
	
	/**
	* Set the {@link XMLStreamBuffer} to use.
	*
	* @param buffer the {@link XMLStreamBuffer}.
	*/
	@:overload public function setXMLStreamBuffer(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	@:overload override public function getXMLReader() : org.xml.sax.XMLReader;
	
	
}
