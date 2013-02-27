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
extern class XMLStreamBufferResult extends javax.xml.transform.sax.SAXResult
{
	/**
	* A JAXP Result implementation that supports the serialization to an
	* {@link MutableXMLStreamBuffer} for use by applications that expect a Result.
	*
	* <p>
	* Reuse of a XMLStreamBufferResult more than once will require that the
	* MutableXMLStreamBuffer is reset by called
	* {@link #.getXMLStreamBuffer()}.reset(), or by calling
	* {@link #.setXMLStreamBuffer()} with a new instance of
	* {@link MutableXMLStreamBuffer}.
	*
	* <p>
	* The derivation of XMLStreamBufferResult from SAXResult is an implementation
	* detail.
	*
	* <p>General applications shall not call the following methods:
	* <ul>
	* <li>setHandler</li>
	* <li>setLexicalHandler</li>
	* <li>setSystemId</li>
	* </ul>
	*/
	private var _buffer : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer;
	
	private var _bufferCreator : com.sun.xml.internal.stream.buffer.sax.SAXBufferCreator;
	
	/**
	* The default XMLStreamBufferResult constructor.
	*
	* <p>
	* A {@link MutableXMLStreamBuffer} is instantiated and used.
	*/
	@:overload public function new() : Void;
	
	/**
	* XMLStreamBufferResult constructor.
	*
	* @param buffer the {@link MutableXMLStreamBuffer} to use.
	*/
	@:overload public function new(buffer : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer) : Void;
	
	/**
	* Get the {@link MutableXMLStreamBuffer} that is used.
	*
	* @return the {@link MutableXMLStreamBuffer}.
	*/
	@:overload public function getXMLStreamBuffer() : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer;
	
	/**
	* Set the {@link MutableXMLStreamBuffer} to use.
	*
	* @param buffer the {@link MutableXMLStreamBuffer}.
	*/
	@:overload public function setXMLStreamBuffer(buffer : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer) : Void;
	
	@:overload override public function getHandler() : org.xml.sax.ContentHandler;
	
	@:overload override public function getLexicalHandler() : org.xml.sax.ext.LexicalHandler;
	
	
}
