package com.sun.tools.internal.xjc.api;
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
extern interface SchemaCompiler
{
	/**
	* Parses schemas or external bindings
	* through SAX events by feeding events into
	* SAX {@link ContentHandler}.
	*
	* @param systemId
	*      The system ID of the document to be read in.
	*
	* @see #parseSchema(String, XMLStreamReader)
	*/
	@:overload public function getParserHandler(systemId : String) : org.xml.sax.ContentHandler;
	
	/**
	* Parses a schema or an external binding file
	* from an external source.
	*
	* @param source
	*      Its system Id must be set to an absolute URI.
	*/
	@:overload public function parseSchema(source : org.xml.sax.InputSource) : Void;
	
	/**
	* Specifies the target spec version for this compilaion.
	*
	* @param version
	*      If null, XJC will generate the source code that
	*      takes advantage of the latest JAXB spec that it understands.
	* @since 2.1 EA2
	*/
	@:require(java1) @:overload public function setTargetVersion(version : com.sun.tools.internal.xjc.api.SpecVersion) : Void;
	
	/**
	* Parses a schema or an external binding file
	* from the specified DOM element.
	*
	* <p>
	* The given DOM element is treated as if it's the root of a
	* virtual document.
	*
	* <p>
	* XJC will not be able to print location information for
	* errors found in this document, since DOM doesn't have them.
	* For this reason, use of this method is strongly discouraged.
	*
	* @param systemId
	*      We need an absolute system ID that uniquely designates the virtual
	*      document. This should be different from the system ID of
	*      the document which contains this element.
	*      <p>
	*      One way to do that is by adding a fragment identifier
	*      to the system ID of the document. For example, if the document
	*      is "foo.wsdl" and you are passing in its types section, you
	*      can use an unique identifier like "foo.wsdl#types"
	*/
	@:overload public function parseSchema(systemId : String, element : org.w3c.dom.Element) : Void;
	
	/**
	* Parses a schema or an external binding file
	* from the given source.
	*
	* <p>
	* A stream reader must be pointing at the element or
	* at the start of the document.
	* XML is parsed until the corresponding end tag, then the
	* sub tree is processed as a schema document.
	*
	* <p>
	* When this method returns successfully, the parser is at
	* the next token of the end element.
	*
	* @param systemId
	*      The absolute system ID of the document that is being parsed.
	*      This information is necessary to avoid double-inclusion
	*      and etc.
	*
	*      Note that {@link XMLStreamReader#getLocation()} only
	*      returns the system ID of the entity it is parsing, not
	*      necessarily the system ID of the document itself.
	*
	* @throws XMLStreamException
	*      If an error happens while parsing a document.
	*      Note that not only the parser but also the XJC itself
	*      may throw this error (as a result of the additional validation
	*      for example.)
	*/
	@:overload public function parseSchema(systemId : String, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function setErrorListener(errorListener : com.sun.tools.internal.xjc.api.ErrorListener) : Void;
	
	@:overload public function setEntityResolver(entityResolver : org.xml.sax.EntityResolver) : Void;
	
	/**
	* Sets the default Java package name into which the generated code will be placed.
	*
	* <p>
	* Customizations in the binding files/schemas will have precedence over this setting.
	* Set to null to use the default package name computation algorithm as specified by
	* the JAXB spec (which is the default behavior.)
	*
	* <p>
	* Initially this parameter is set to null.
	*
	* @param packageName
	*      Java pckage name such as "org.foo.bar". Use "" to represent the root package,
	*      and null to defer to the default computation algorithm.
	*
	* @see #forcePackageName(String)
	*/
	@:overload public function setDefaultPackageName(packageName : String) : Void;
	
	/**
	* Forces all the JAXB-generated classes to go into the specific package.
	*
	* <p>
	* This setting takes precedence over the {@link #setDefaultPackageName(String)}
	* or any of the customization found in the JAXB binding files. This method
	* is designed to implement the semantics of the command-line '-p' option.
	*
	* <p>
	* This somewhat ugly semantics actually have a long history now and too late
	* to change.
	*
	* @see #setDefaultPackageName(String)
	*/
	@:overload public function forcePackageName(packageName : String) : Void;
	
	/**
	* Sets the {@link ClassNameAllocator} to be used for the binding operation.
	*
	* <p>
	* This mechanism would allow the caller to participate in the binding operation.
	*
	* @see ClassNameAllocator
	*/
	@:overload public function setClassNameAllocator(allocator : com.sun.tools.internal.xjc.api.ClassNameAllocator) : Void;
	
	/**
	* Clears all the schema files parsed so far.
	*
	* @since 2.1.1
	*/
	@:require(java1) @:overload public function resetSchema() : Void;
	
	/**
	* Obtains the compiled schema object model.
	*
	* Once this method is called, no other method should be
	* invoked on the {@link SchemaCompiler}.
	*
	* @return
	*      null if the compilation fails. The errors should have been
	*      delivered to the registered error handler in such a case.
	*/
	@:overload public function bind() : com.sun.tools.internal.xjc.api.S2JJAXBModel;
	
	/**
	* Allows the calling code to tweak more schema compilation details.
	*
	* <p>
	* The caller can use this method to obtain an {@link Options} instance,
	* then tweak settings on it. The updated settings will be used when the
	* {@link #bind()} method is invoked.
	*
	* <p>
	* The returned {@link Options} object is useful for example to specify
	* command-line arguments.
	*
	* @since 2.0.2
	* @deprecated
	*      This method is not really "deprecated" (in the sense of being removed
	*      from future versions), but the JAXB team is not committed to evolve
	*      {@link Options} class in the compatible fashion. So please don't
	*      use this method unless you know what you're doing.
	*/
	@:require(java0) @:overload public function getOptions() : com.sun.tools.internal.xjc.Options;
	
	
}
