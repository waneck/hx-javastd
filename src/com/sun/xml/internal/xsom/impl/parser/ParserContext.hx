package com.sun.xml.internal.xsom.impl.parser;
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
extern class ParserContext
{
	/** SchemaSet to which a newly parsed schema is put in. */
	public var schemaSet(default, null) : com.sun.xml.internal.xsom.impl.SchemaSetImpl;
	
	/**
	* Documents that are parsed already. Used to avoid cyclic inclusion/double
	* inclusion of schemas. Set of {@link SchemaDocumentImpl}s.
	*
	* The actual data structure is map from {@link SchemaDocumentImpl} to itself,
	* so that we can access the {@link SchemaDocumentImpl} itself.
	*/
	public var parsedDocuments(default, null) : java.util.Map<com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl, com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl>;
	
	@:overload public function new(owner : com.sun.xml.internal.xsom.parser.XSOMParser, parser : com.sun.xml.internal.xsom.parser.XMLParser) : Void;
	
	@:overload public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	@:overload public function getAnnotationParserFactory() : com.sun.xml.internal.xsom.parser.AnnotationParserFactory;
	
	/**
	* Parses a new XML Schema document.
	*/
	@:overload public function parse(source : org.xml.sax.InputSource) : Void;
	
	@:overload public function getResult() : com.sun.xml.internal.xsom.XSSchemaSet;
	
	@:overload public function newNGCCRuntime() : com.sun.xml.internal.xsom.impl.parser.NGCCRuntimeEx;
	
	
}
