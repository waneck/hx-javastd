package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
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
@:internal extern class StAXStreamConnector extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.StAXConnector
{
	/**
	* Creates a {@link StAXConnector} from {@link XMLStreamReader}.
	*
	* This method checks if the parser is FI parser and acts accordingly.
	*/
	@:overload public static function create(reader : javax.xml.stream.XMLStreamReader, visitor : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.StAXConnector;
	
	/**
	* SAX may fire consecutive characters event, but we don't allow it.
	* so use this buffer to perform buffering.
	*/
	private var buffer(default, null) : java.lang.StringBuilder;
	
	/**
	* Set to true if the text() event is reported, and therefore
	* the following text() event should be suppressed.
	*/
	private var textReported : Bool;
	
	@:overload private function new(staxStreamReader : javax.xml.stream.XMLStreamReader, visitor : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor) : Void;
	
	@:overload override public function bridge() : Void;
	
	@:overload override private function getCurrentLocation() : javax.xml.stream.Location;
	
	@:overload override private function getCurrentQName() : String;
	
	@:overload private function handleCharacters() : Void;
	
	@:overload public static function getClassLoader() : java.lang.ClassLoader;
	
	
}
