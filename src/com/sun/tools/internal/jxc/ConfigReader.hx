package com.sun.tools.internal.jxc;
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
extern class ConfigReader
{
	/**
	*
	* @param classes
	*      The set of classes passed to the AnnotationProcessor
	* @param xmlFile
	*      The configuration file.
	* @throws SAXException
	*      If this is thrown, the error has already been reported.
	* @throws IOException
	*     If any IO errors occur.
	*/
	@:overload public function new(env : com.sun.mirror.apt.AnnotationProcessorEnvironment, classes : java.util.Collection<com.sun.mirror.declaration.TypeDeclaration>, xmlFile : java.io.File, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* This creates creates a regular expression
	* for the user pattern , matches the input classes
	* passed by the user and returns the final
	* list of classes that need to be included for a config file
	* after applying those patterns
	*
	*/
	@:overload public function getClassesToBeIncluded() : java.util.Collection<com.sun.tools.internal.xjc.api.Reference>;
	
	/**
	* This returns the SchemaOutputResolver to generate the schemas
	*/
	@:overload public function getSchemaOutputResolver() : javax.xml.bind.SchemaOutputResolver;
	
	
}
/**
* Controls where the JAXB RI puts the generates
* schema files.
* @author
*     Bhakti Mehta (bhakti.mehta@sun.com)
*/
@:native('com$sun$tools$internal$jxc$ConfigReader$SchemaOutputResolverImpl') @:internal extern class ConfigReader_SchemaOutputResolverImpl extends javax.xml.bind.SchemaOutputResolver
{
	/**
	* Decides where the schema file (of the given namespace URI)
	* will be written, and return it as a {@link Result} object.
	*
	*/
	@:overload override public function createOutput(namespaceUri : String, suggestedFileName : String) : javax.xml.transform.Result;
	
	@:overload public function new(baseDir : java.io.File) : Void;
	
	@:overload public function addSchemaInfo(namespaceUri : String, location : java.io.File) : Void;
	
	
}
