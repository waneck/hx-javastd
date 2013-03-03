package com.sun.org.apache.xalan.internal.xsltc.runtime.output;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: TransletOutputHandlerFactory.java,v 1.2.4.2 2005/09/15 19:12:05 jeffsuttor Exp $
*/
extern class TransletOutputHandlerFactory
{
	/**
	* @author Santiago Pericas-Geertsen
	*/
	@:public @:static @:final public static var STREAM(default, null) : Int;
	
	@:public @:static @:final public static var SAX(default, null) : Int;
	
	@:public @:static @:final public static var DOM(default, null) : Int;
	
	@:public @:static @:final public static var STAX(default, null) : Int;
	
	@:overload @:static @:public public static function newInstance() : com.sun.org.apache.xalan.internal.xsltc.runtime.output.TransletOutputHandlerFactory;
	
	@:overload @:static @:public public static function newInstance(useServicesMechanism : Bool) : com.sun.org.apache.xalan.internal.xsltc.runtime.output.TransletOutputHandlerFactory;
	
	@:overload @:public public function new(useServicesMechanism : Bool) : Void;
	
	@:overload @:public public function setOutputType(outputType : Int) : Void;
	
	@:overload @:public public function setEncoding(encoding : String) : Void;
	
	@:overload @:public public function setOutputMethod(method : String) : Void;
	
	@:overload @:public public function setOutputStream(ostream : java.io.OutputStream) : Void;
	
	@:overload @:public public function setWriter(writer : java.io.Writer) : Void;
	
	@:overload @:public public function setHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public public function setLexicalHandler(lex : org.xml.sax.ext.LexicalHandler) : Void;
	
	@:overload @:public public function setNode(node : org.w3c.dom.Node) : Void;
	
	@:overload @:public public function getNode() : org.w3c.dom.Node;
	
	@:overload @:public public function setNextSibling(nextSibling : org.w3c.dom.Node) : Void;
	
	@:overload @:public public function getXMLEventWriter() : javax.xml.stream.XMLEventWriter;
	
	@:overload @:public public function setXMLEventWriter(eventWriter : javax.xml.stream.XMLEventWriter) : Void;
	
	@:overload @:public public function getXMLStreamWriter() : javax.xml.stream.XMLStreamWriter;
	
	@:overload @:public public function setXMLStreamWriter(streamWriter : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public public function setIndentNumber(value : Int) : Void;
	
	@:overload @:public public function getSerializationHandler() : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	
}
