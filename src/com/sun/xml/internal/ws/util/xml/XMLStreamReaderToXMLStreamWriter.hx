package com.sun.xml.internal.ws.util.xml;
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
extern class XMLStreamReaderToXMLStreamWriter
{
	//private var _in : javax.xml.stream.XMLStreamReader;
	
	private var out : javax.xml.stream.XMLStreamWriter;
	
	/**
	* Reads one subtree and writes it out.
	*
	* <p>
	* The {@link XMLStreamWriter} never receives a start/end document event.
	* Those need to be written separately by the caller.
	*/
	@:overload public function bridge(_in : javax.xml.stream.XMLStreamReader, out : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload private function handlePI() : Void;
	
	@:overload private function handleCharacters() : Void;
	
	@:overload private function handleEndElement() : Void;
	
	@:overload private function handleStartElement() : Void;
	
	/**
	* Writes out the {@code i}-th attribute of the current element.
	*
	* <p>
	* Used from {@link #handleStartElement()}.
	*/
	@:overload private function handleAttribute(i : Int) : Void;
	
	@:overload private function handleDTD() : Void;
	
	@:overload private function handleComment() : Void;
	
	@:overload private function handleEntityReference() : Void;
	
	@:overload private function handleSpace() : Void;
	
	@:overload private function handleCDATA() : Void;
	
	
}
