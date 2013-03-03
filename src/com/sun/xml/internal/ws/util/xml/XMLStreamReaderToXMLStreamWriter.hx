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
	//@:protected private var _in : javax.xml.stream.XMLStreamReader;
	
	@:protected private var out : javax.xml.stream.XMLStreamWriter;
	
	/**
	* Reads one subtree and writes it out.
	*
	* <p>
	* The {@link XMLStreamWriter} never receives a start/end document event.
	* Those need to be written separately by the caller.
	*/
	@:overload @:public public function bridge(_in : javax.xml.stream.XMLStreamReader, out : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:protected private function handlePI() : Void;
	
	@:overload @:protected private function handleCharacters() : Void;
	
	@:overload @:protected private function handleEndElement() : Void;
	
	@:overload @:protected private function handleStartElement() : Void;
	
	/**
	* Writes out the {@code i}-th attribute of the current element.
	*
	* <p>
	* Used from {@link #handleStartElement()}.
	*/
	@:overload @:protected private function handleAttribute(i : Int) : Void;
	
	@:overload @:protected private function handleDTD() : Void;
	
	@:overload @:protected private function handleComment() : Void;
	
	@:overload @:protected private function handleEntityReference() : Void;
	
	@:overload @:protected private function handleSpace() : Void;
	
	@:overload @:protected private function handleCDATA() : Void;
	
	
}
