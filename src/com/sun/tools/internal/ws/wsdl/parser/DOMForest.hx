package com.sun.tools.internal.ws.wsdl.parser;
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
/**
* @author Vivek Pandey
*/
extern class DOMForest
{
	/**
	* To correctly feed documents to a schema parser, we need to remember
	* which documents (of the forest) were given as the root
	* documents, and which of them are read as included/imported
	* documents.
	* <p/>
	* <p/>
	* Set of system ids as strings.
	*/
	private var rootDocuments(default, null) : java.util.Set<String>;
	
	/**
	* Contains wsdl:import(s)
	*/
	private var externalReferences(default, null) : java.util.Set<String>;
	
	/**
	* actual data storage map&lt;SystemId,Document>.
	*/
	private var core(default, null) : java.util.Map<String, org.w3c.dom.Document>;
	
	private var errorReceiver(default, null) : com.sun.tools.internal.ws.wscompile.ErrorReceiver;
	
	/**
	* inlined schema elements inside wsdl:type section
	*/
	private var inlinedSchemaElements(default, null) : java.util.List<org.w3c.dom.Element>;
	
	/**
	* Stores location information for all the trees in this forest.
	*/
	public var locatorTable(default, null) : com.sun.tools.internal.xjc.reader.internalizer.LocatorTable;
	
	private var entityResolver(default, null) : org.xml.sax.EntityResolver;
	
	/**
	* Stores all the outer-most &lt;jaxb:bindings> customizations.
	*/
	public var outerMostBindings(default, null) : java.util.Set<org.w3c.dom.Element>;
	
	/**
	* Schema language dependent part of the processing.
	*/
	private var logic(default, null) : com.sun.tools.internal.ws.wsdl.parser.InternalizationLogic;
	
	private var options(default, null) : com.sun.tools.internal.ws.wscompile.WsimportOptions;
	
	@:overload public function new(logic : com.sun.tools.internal.ws.wsdl.parser.InternalizationLogic, entityResolver : org.xml.sax.EntityResolver, options : com.sun.tools.internal.ws.wscompile.WsimportOptions, errReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload public function getInlinedSchemaElement() : java.util.List<org.w3c.dom.Element>;
	
	@:overload public function parse(source : org.xml.sax.InputSource, root : Bool) : org.w3c.dom.Document;
	
	/**
	* Parses an XML at the given location (
	* and XMLs referenced by it) into DOM trees
	* and stores them to this forest.
	*
	* @return the parsed DOM document object.
	*/
	@:overload public function parse(systemId : String, root : Bool) : org.w3c.dom.Document;
	
	private var resolvedCache : java.util.Map<String, String>;
	
	@:overload public function getReferencedEntityMap() : java.util.Map<String, String>;
	
	@:overload public function addExternalReferences(ref : String) : Void;
	
	@:overload public function getExternalReferences() : java.util.Set<String>;
	
	/**
	* Gets the DOM tree associated with the specified system ID,
	* or null if none is found.
	*/
	@:overload public function get(systemId : String) : org.w3c.dom.Document;
	
	/**
	* Gets all the system IDs of the documents.
	*/
	@:overload public function listSystemIDs() : java.NativeArray<String>;
	
	/**
	* Gets the system ID from which the given DOM is parsed.
	* <p/>
	* Poor-man's base URI.
	*/
	@:overload public function getSystemId(dom : org.w3c.dom.Document) : String;
	
	/**
	* Gets the first one (which is more or less random) in {@link #rootDocuments}.
	*/
	@:overload public function getFirstRootDocument() : String;
	
	@:overload public function getRootDocuments() : java.util.Set<String>;
	
	/**
	* Dumps the contents of the forest to the specified stream.
	* <p/>
	* This is a debug method. As such, error handling is sloppy.
	*/
	@:overload public function dump(out : java.io.OutputStream) : Void;
	
	
}
@:native('com$sun$tools$internal$ws$wsdl$parser$DOMForest$Handler') extern interface DOMForest_Handler extends java.net.ContentHandler
{
	/**
	* Gets the DOM that was built.
	*/
	@:overload public function getDocument() : org.w3c.dom.Document;
	
	
}
