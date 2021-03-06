package com.sun.xml.internal.fastinfoset.stax.events;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class StAXFilteredEvent implements javax.xml.stream.XMLEventReader
{
	/** Creates a new instance of StAXFilteredEvent */
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(reader : javax.xml.stream.XMLEventReader, filter : javax.xml.stream.EventFilter) : Void;
	
	@:overload @:public public function setEventReader(reader : javax.xml.stream.XMLEventReader) : Void;
	
	@:overload @:public public function setFilter(filter : javax.xml.stream.EventFilter) : Void;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function nextEvent() : javax.xml.stream.events.XMLEvent;
	
	@:overload @:public public function getElementText() : String;
	
	@:overload @:public public function nextTag() : javax.xml.stream.events.XMLEvent;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function remove() : Void;
	
	@:overload @:public public function peek() : javax.xml.stream.events.XMLEvent;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	
}
