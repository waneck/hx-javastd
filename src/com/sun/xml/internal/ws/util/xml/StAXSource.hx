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
extern class StAXSource extends javax.xml.transform.sax.SAXSource
{
	/**
	* Creates a new {@link javax.xml.transform.Source} for the given
	* {@link XMLStreamReader}.
	*
	* @param reader XMLStreamReader that will be exposed as a Source
	* @param eagerQuit if true, when the conversion is completed, leave the cursor to the last
	*                  event that was fired (such as end element)
	* @see #StAXSource(XMLStreamReader, boolean, String[])
	*/
	@:overload @:public public function new(reader : javax.xml.stream.XMLStreamReader, eagerQuit : Bool) : Void;
	
	/**
	* Creates a new {@link javax.xml.transform.Source} for the given
	* {@link XMLStreamReader}.
	*
	* The XMLStreamReader must be pointing at either a
	* {@link javax.xml.stream.XMLStreamConstants#START_DOCUMENT} or
	* {@link javax.xml.stream.XMLStreamConstants#START_ELEMENT} event.
	*
	* @param reader XMLStreamReader that will be exposed as a Source
	* @param eagerQuit if true, when the conversion is completed, leave the cursor to the last
	*                  event that was fired (such as end element)
	* @param inscope inscope Namespaces
	*                array of the even length of the form { prefix0, uri0, prefix1, uri1, ... }
	* @throws IllegalArgumentException iff the reader is null
	* @throws IllegalStateException iff the reader is not pointing at either a
	* START_DOCUMENT or START_ELEMENT event
	*/
	@:overload @:public public function new(reader : javax.xml.stream.XMLStreamReader, eagerQuit : Bool, inscope : java.NativeArray<String>) : Void;
	
	
}
