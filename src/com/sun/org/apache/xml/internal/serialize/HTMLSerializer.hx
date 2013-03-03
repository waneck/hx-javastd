package com.sun.org.apache.xml.internal.serialize;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
//// Sep 14, 2000:
////  Fixed serializer to report IO exception directly, instead at
////  the end of document processing.
////  Reported by Patrick Higgins <phiggins@transzap.com>
//// Aug 21, 2000:
////  Fixed bug in startDocument not calling prepare.
////  Reported by Mikael Staldal <d96-mst-ingen-reklam@d.kth.se>
//// Aug 21, 2000:
////  Added ability to omit DOCTYPE declaration.
//// Sep 1, 2000:
////   If no output format is provided the serializer now defaults
////   to ISO-8859-1 encoding. Reported by Mikael Staldal
////   <d96-mst@d.kth.se>
extern class HTMLSerializer extends com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
{
	@:public @:static @:final public static var XHTMLNamespace(default, null) : String;
	
	/**
	* Constructs a new HTML/XHTML serializer depending on the value of
	* <tt>xhtml</tt>. The serializer cannot be used without calling
	* {@link #setOutputCharStream} or {@link #setOutputByteStream} first.
	*
	* @param xhtml True if XHTML serializing
	*/
	@:overload @:protected private function new(xhtml : Bool, format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	/**
	* Constructs a new serializer. The serializer cannot be used without
	* calling {@link #setOutputCharStream} or {@link #setOutputByteStream}
	* first.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new serializer. The serializer cannot be used without
	* calling {@link #setOutputCharStream} or {@link #setOutputByteStream}
	* first.
	*/
	@:overload @:public public function new(format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	/**
	* Constructs a new serializer that writes to the specified writer
	* using the specified output format. If <tt>format</tt> is null,
	* will use a default output format.
	*
	* @param writer The writer to use
	* @param format The output format to use, null for the default
	*/
	@:overload @:public public function new(writer : java.io.Writer, format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	/**
	* Constructs a new serializer that writes to the specified output
	* stream using the specified output format. If <tt>format</tt>
	* is null, will use a default output format.
	*
	* @param output The output stream to use
	* @param format The output format to use, null for the default
	*/
	@:overload @:public public function new(output : java.io.OutputStream, format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	@:overload @:public override public function setOutputFormat(format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	@:overload @:public public function setXHTMLNamespace(newNamespace : String) : Void;
	
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, rawName : String, attrs : org.xml.sax.Attributes) : Void;
	
	@:overload @:public override public function endElement(namespaceURI : String, localName : String, rawName : String) : Void;
	
	@:overload @:public public function endElementIO(namespaceURI : String, localName : String, rawName : String) : Void;
	
	@:overload @:public override public function characters(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function startElement(tagName : String, attrs : org.xml.sax.AttributeList) : Void;
	
	@:overload @:public override public function endElement(tagName : String) : Void;
	
	/**
	* Called to serialize the document's DOCTYPE by the root element.
	* The document type declaration must name the root element,
	* but the root element is only known when that element is serialized,
	* and not at the start of the document.
	* <p>
	* This method will check if it has not been called before ({@link #_started}),
	* will serialize the document type declaration, and will serialize all
	* pre-root comments and PIs that were accumulated in the document
	* (see {@link #serializePreRoot}). Pre-root will be serialized even if
	* this is not the first root element of the document.
	*/
	@:overload @:protected private function startDocument(rootTagName : String) : Void;
	
	/**
	* Called to serialize a DOM element. Equivalent to calling {@link
	* #startElement}, {@link #endElement} and serializing everything
	* inbetween, but better optimized.
	*/
	@:overload @:protected override private function serializeElement(elem : org.w3c.dom.Element) : Void;
	
	@:overload @:protected override private function characters(text : String) : Void;
	
	@:overload @:protected override private function getEntityRef(ch : Int) : String;
	
	@:overload @:protected private function escapeURI(uri : String) : String;
	
	
}
