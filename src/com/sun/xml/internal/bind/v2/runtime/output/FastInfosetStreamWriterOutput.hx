package com.sun.xml.internal.bind.v2.runtime.output;
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
extern class FastInfosetStreamWriterOutput extends com.sun.xml.internal.bind.v2.runtime.output.XMLStreamWriterOutput
{
	@:overload public function new(out : com.sun.xml.internal.fastinfoset.stax.StAXDocumentSerializer, context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : Void;
	
	@:overload override public function startDocument(serializer : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, fragment : Bool, nsUriIndex2prefixIndex : java.NativeArray<Int>, nsContext : com.sun.xml.internal.bind.v2.runtime.output.NamespaceContextImpl) : Void;
	
	@:overload override public function endDocument(fragment : Bool) : Void;
	
	@:overload override public function beginStartTag(name : com.sun.xml.internal.bind.v2.runtime.Name) : Void;
	
	@:overload public function beginStartTagWithNamespaces(name : com.sun.xml.internal.bind.v2.runtime.Name) : Void;
	
	@:overload override public function attribute(name : com.sun.xml.internal.bind.v2.runtime.Name, value : String) : Void;
	
	@:overload override public function endStartTag() : Void;
	
	@:overload override public function endTag(name : com.sun.xml.internal.bind.v2.runtime.Name) : Void;
	
	@:overload override public function endTag(prefix : Int, localName : String) : Void;
	
	@:overload override public function text(value : com.sun.xml.internal.bind.v2.runtime.output.Pcdata, needsSeparatingWhitespace : Bool) : Void;
	
	@:overload override public function text(value : String, needsSeparatingWhitespace : Bool) : Void;
	
	@:overload override public function beginStartTag(prefix : Int, localName : String) : Void;
	
	@:overload override public function attribute(prefix : Int, localName : String, value : String) : Void;
	
	
}
/**
* Holder for the optimzed element, attribute and
* local name tables.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$output$FastInfosetStreamWriterOutput$TablesPerJAXBContext') @:internal extern class FastInfosetStreamWriterOutput_TablesPerJAXBContext
{
	/**
	* Require that tables are cleared.
	*/
	@:overload public function requireClearTables() : Void;
	
	/**
	* Clear or reset the tables.
	* <p>
	* @param initialIndexOffset the initial index offset to calculate
	*                           the maximum possible index
	*/
	@:overload public function clearOrResetTables(intialIndexOffset : Int) : Void;
	
	/**
	* Increment the maximum know index value
	* <p>
	* The indexes are preserved.
	*/
	@:overload public function incrementMaxIndexValue() : Void;
	
	
}
/**
* Holder of JAXB contexts -> tables.
* <p>
* An instance will be registered with the
* {@link LowLevelStAXDocumentSerializer}.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$output$FastInfosetStreamWriterOutput$AppData') @:internal extern class FastInfosetStreamWriterOutput_AppData implements com.sun.xml.internal.org.jvnet.fastinfoset.VocabularyApplicationData
{
	/**
	* Clear all the tables.
	*/
	@:overload public function clear() : Void;
	
	
}
