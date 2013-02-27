package com.sun.xml.internal.stream.buffer.stax;
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
extern class StreamReaderBufferCreator extends com.sun.xml.internal.stream.buffer.stax.StreamBufferCreator
{
	/**
	* Create a stream reader buffer creator.
	* <p>
	* A stream buffer will be created for storing the infoset
	* from a stream reader.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create a stream reader buffer creator using a mutable stream buffer.
	* <p>
	* @param buffer the mutable stream buffer.
	*/
	@:overload public function new(buffer : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer) : Void;
	
	/**
	* Create the buffer from a stream reader.
	* <p>
	* The stream reader must be positioned at the start of the document
	* or the start of an element.
	* <p>
	* If the stream is positioned at the start of the document then the
	* whole document is stored and after storing the stream will be positioned
	* at the end of the document.
	* <p>
	* If the stream is positioned at the start of an element then the
	* element and all its children will be stored and after storing the stream
	* will be positioned at the next event after the end of the element.
	* <p>
	* @return the mutable stream buffer.
	* @throws XMLStreamException if the stream reader is not positioned at
	*         the start of the document or at an element.
	*/
	@:overload public function create(reader : javax.xml.stream.XMLStreamReader) : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer;
	
	/**
	* Creates the buffer from a stream reader that is an element fragment.
	* <p>
	* The stream reader will be moved to the position of the next start of
	* an element if the stream reader is not already positioned at the start
	* of an element.
	* <p>
	* The element and all its children will be stored and after storing the stream
	* will be positioned at the next event after the end of the element.
	* <p>
	* @param storeInScopeNamespaces true if in-scope namespaces of the element
	*        fragment should be stored.
	* @return the mutable stream buffer.
	* @throws XMLStreamException if the stream reader cannot be positioned at
	*         the start of an element.
	*/
	@:overload public function createElementFragment(reader : javax.xml.stream.XMLStreamReader, storeInScopeNamespaces : Bool) : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer;
	
	/**
	* A low level method a create a structure element explicitly. This is useful when xsb is
	* created from a fragment's XMLStreamReader and inscope namespaces can be passed using
	* this method. Note that there is no way to enumerate namespaces from XMLStreamReader.
	*
	* For e.g: Say the SOAP message is as follows
	*
	*  <S:Envelope xmlns:n1=".."><S:Body><ns2:A> ...
	*
	* when xsb is to be created using a reader that is at <ns2:A> tag, the inscope
	* namespace like 'n1' can be passed using this method.
	*
	* WARNING: Instead of using this, try other methods(if you don't know what you are
	* doing).
	*
	* @param ns an array of the even length of the form { prefix0, uri0, prefix1, uri1, ... }.
	*/
	@:overload public function storeElement(nsURI : String, localName : String, prefix : String, ns : java.NativeArray<String>) : Void;
	
	/**
	* A low level method a create a structure element explicitly. This is
	* required to support {@link #storeElement} method.
	*
	* WARNING: Instead of using this, try other methods(if you don't know what
	* you are doing).
	*/
	@:overload public function storeEndElement() : Void;
	
	
}
