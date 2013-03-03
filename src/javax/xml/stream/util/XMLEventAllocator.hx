package javax.xml.stream.util;
/*
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
/*
* Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
*/
extern interface XMLEventAllocator
{
	/**
	* This method creates an instance of the XMLEventAllocator. This
	* allows the XMLInputFactory to allocate a new instance per reader.
	*/
	@:overload @:public public function newInstance() : javax.xml.stream.util.XMLEventAllocator;
	
	/**
	* This method allocates an event given the current
	* state of the XMLStreamReader.  If this XMLEventAllocator
	* does not have a one-to-one mapping between reader states
	* and events this method will return null.  This method
	* must not modify the state of the XMLStreamReader.
	* @param reader The XMLStreamReader to allocate from
	* @return the event corresponding to the current reader state
	*/
	@:overload @:public public function allocate(reader : javax.xml.stream.XMLStreamReader) : javax.xml.stream.events.XMLEvent;
	
	/**
	* This method allocates an event or set of events
	* given the current
	* state of the XMLStreamReader and adds the event
	* or set of events to the
	* consumer that was passed in.  This method can be used
	* to expand or contract reader states into event states.
	* This method may modify the state of the XMLStreamReader.
	* @param reader The XMLStreamReader to allocate from
	* @param consumer The XMLEventConsumer to add to.
	*/
	@:overload @:public public function allocate(reader : javax.xml.stream.XMLStreamReader, consumer : javax.xml.stream.util.XMLEventConsumer) : Void;
	
	
}
