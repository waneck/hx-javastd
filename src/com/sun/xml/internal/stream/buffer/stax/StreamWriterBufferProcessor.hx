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
extern class StreamWriterBufferProcessor extends com.sun.xml.internal.stream.buffer.AbstractProcessor
{
	/**
	* A processor of a {@link XMLStreamBuffer} that writes the XML infoset to a
	* {@link XMLStreamWriter}.
	*
	* @author Paul.Sandoz@Sun.Com
	* @author K.Venugopal@sun.com
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* @deprecated
	*      Use {@link #StreamWriterBufferProcessor(XMLStreamBuffer, boolean)}
	*/
	@:overload @:public public function new(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	/**
	* @param produceFragmentEvent
	*      True to generate fragment SAX events without start/endDocument.
	*      False to generate a full document SAX events.
	*/
	@:overload @:public public function new(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer, produceFragmentEvent : Bool) : Void;
	
	@:overload @:public @:final public function process(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer, writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public public function process(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* @deprecated
	*      Use {@link #setXMLStreamBuffer(XMLStreamBuffer, boolean)}
	*/
	@:overload @:public public function setXMLStreamBuffer(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	/**
	* @param produceFragmentEvent
	*      True to generate fragment SAX events without start/endDocument.
	*      False to generate a full document SAX events.
	*/
	@:overload @:public public function setXMLStreamBuffer(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer, produceFragmentEvent : Bool) : Void;
	
	/**
	* Writes a full XML infoset event to the given writer,
	* including start/end document.
	* Any inscope namespaces present will be written as namespace
	* delcarations on each top-level element.
	*/
	@:overload @:public public function write(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Writes the buffer as a fragment, meaning
	* the writer will not receive start/endDocument events.
	* Any inscope namespaces present will be written as namespace
	* delcarations on each top-level element.
	* <p>
	* If {@link XMLStreamBuffer} has a forest, this method will write all the forests.
	*/
	@:overload @:public public function writeFragment(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public public function writeFragmentEx(writer : com.sun.xml.internal.org.jvnet.staxex.XMLStreamWriterEx) : Void;
	
	@:overload @:public public function writeFragmentNoEx(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	
}
