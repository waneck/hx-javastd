package com.sun.xml.internal.fastinfoset.stax.factory;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class StAXOutputFactory extends javax.xml.stream.XMLOutputFactory
{
	/** Creates a new instance of StAXOutputFactory */
	@:overload public function new() : Void;
	
	@:overload override public function createXMLEventWriter(result : javax.xml.transform.Result) : javax.xml.stream.XMLEventWriter;
	
	@:overload override public function createXMLEventWriter(writer : java.io.Writer) : javax.xml.stream.XMLEventWriter;
	
	@:overload override public function createXMLEventWriter(outputStream : java.io.OutputStream) : javax.xml.stream.XMLEventWriter;
	
	@:overload override public function createXMLEventWriter(outputStream : java.io.OutputStream, encoding : String) : javax.xml.stream.XMLEventWriter;
	
	@:overload override public function createXMLStreamWriter(result : javax.xml.transform.Result) : javax.xml.stream.XMLStreamWriter;
	
	/** this is assumed that user wants to write the file in xml format
	*
	*/
	@:overload override public function createXMLStreamWriter(writer : java.io.Writer) : javax.xml.stream.XMLStreamWriter;
	
	@:overload override public function createXMLStreamWriter(outputStream : java.io.OutputStream) : javax.xml.stream.XMLStreamWriter;
	
	@:overload override public function createXMLStreamWriter(outputStream : java.io.OutputStream, encoding : String) : javax.xml.stream.XMLStreamWriter;
	
	@:overload override public function getProperty(name : String) : Dynamic;
	
	@:overload override public function isPropertySupported(name : String) : Bool;
	
	@:overload override public function setProperty(name : String, value : Dynamic) : Void;
	
	
}