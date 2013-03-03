package com.sun.xml.internal.xsom.parser;
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
extern class XSOMParser
{
	/**
	* Creates a new XSOMParser by using a SAX parser from JAXP.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new XSOMParser that uses the given SAXParserFactory
	* for creating new SAX parsers.
	*
	* The caller needs to configure
	* it properly. Don't forget to call <code>setNamespaceAware(true)</code>
	* or you'll see some strange errors.
	*/
	@:overload @:public public function new(factory : javax.xml.parsers.SAXParserFactory) : Void;
	
	/**
	* Creates a new XSOMParser that reads XML Schema from non-standard
	* inputs.
	*
	* By implementing the {@link XMLParser} interface, XML Schema
	* can be read from something other than XML.
	*
	* @param   parser
	*      This parser will be called to parse XML Schema documents.
	*/
	@:overload @:public public function new(parser : com.sun.xml.internal.xsom.parser.XMLParser) : Void;
	
	/**
	* Parses a new XML Schema document.
	*
	* <p>
	* When using this method, XSOM does not know the system ID of
	* this document, therefore, when this stream contains relative
	* references to other schemas, XSOM will fail to resolve them.
	* To specify an system ID with a stream, use {@link InputSource}
	*/
	@:overload @:public public function parse(is : java.io.InputStream) : Void;
	
	/**
	* Parses a new XML Schema document.
	*
	* <p>
	* When using this method, XSOM does not know the system ID of
	* this document, therefore, when this reader contains relative
	* references to other schemas, XSOM will fail to resolve them.
	* To specify an system ID with a reader, use {@link InputSource}
	*/
	@:overload @:public public function parse(reader : java.io.Reader) : Void;
	
	/**
	* Parses a new XML Schema document.
	*/
	@:overload @:public public function parse(schema : java.io.File) : Void;
	
	/**
	* Parses a new XML Schema document.
	*/
	@:overload @:public public function parse(url : java.net.URL) : Void;
	
	/**
	* Parses a new XML Schema document.
	*/
	@:overload @:public public function parse(systemId : String) : Void;
	
	/**
	* Parses a new XML Schema document.
	*
	* <p>
	* Note that if the {@link InputSource} does not have a system ID,
	* XSOM will fail to resolve them.
	*/
	@:overload @:public public function parse(source : org.xml.sax.InputSource) : Void;
	
	/**
	* Gets the parser implemented as a ContentHandler.
	*
	* One can feed XML Schema as SAX events to this interface to
	* parse a schema. To parse multiple schema files, feed multiple
	* sets of events.
	*
	* <p>
	* If you don't send a complete event sequence from a startDocument
	* event to an endDocument event, the state of XSOMParser can become
	* unstable. This sometimes happen when you encounter an error while
	* generating SAX events. Don't call the getResult method in that case.
	*
	* <p>
	* This way of reading XML Schema can be useful when XML Schema is
	* not available as a stand-alone XML document.
	* For example, one can feed XML Schema inside a WSDL document.
	*/
	@:overload @:public public function getParserHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Gets the parsed result. Don't call this method until
	* you parse all the schemas.
	*
	* @return
	*      If there was any parse error, this method returns null.
	*      To receive error information, specify your error handler
	*      through the setErrorHandler method.
	* @exception SAXException
	*      This exception will never be thrown unless it is thrown
	*      by an error handler.
	*/
	@:overload @:public public function getResult() : com.sun.xml.internal.xsom.XSSchemaSet;
	
	/**
	* Gets the set of {@link SchemaDocument} that represents
	* parsed documents so far.
	*
	* @return
	*      can be empty but never null.
	*/
	@:overload @:public public function getDocuments() : java.util.Set<com.sun.xml.internal.xsom.parser.SchemaDocument>;
	
	@:overload @:public public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	/**
	* Set an entity resolver that is used to resolve things
	* like &lt;xsd:import> and &lt;xsd:include>.
	*/
	@:overload @:public public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	@:overload @:public public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* Set an error handler that receives all the errors encountered
	* during the parsing.
	*/
	@:overload @:public public function setErrorHandler(errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Sets the annotation parser.
	*
	* Annotation parser can be used to parse application-specific
	* annotations inside a schema.
	*
	* <p>
	* For each annotation, new instance of this class will be
	* created and used to parse &lt;xs:annotation>.
	*/
	@:overload @:public public function setAnnotationParser(annParser : Class<Dynamic>) : Void;
	
	/**
	* Sets the annotation parser factory.
	*
	* <p>
	* The specified factory will be used to create AnnotationParsers.
	*/
	@:overload @:public public function setAnnotationParser(factory : com.sun.xml.internal.xsom.parser.AnnotationParserFactory) : Void;
	
	@:overload @:public public function getAnnotationParserFactory() : com.sun.xml.internal.xsom.parser.AnnotationParserFactory;
	
	
}
