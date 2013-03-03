package com.sun.org.apache.xml.internal.serialize;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004,2005 The Apache Software Foundation.
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
////  Fixed problem with namespace handling. Contributed by
////  David Blondeau <blondeau@intalio.com>
//// Sep 14, 2000:
////  Fixed serializer to report IO exception directly, instead at
////  the end of document processing.
////  Reported by Patrick Higgins <phiggins@transzap.com>
//// Aug 21, 2000:
////  Fixed bug in startDocument not calling prepare.
////  Reported by Mikael Staldal <d96-mst-ingen-reklam@d.kth.se>
//// Aug 21, 2000:
////  Added ability to omit DOCTYPE declaration.
extern class XMLSerializer extends com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
{
	/**
	* Implements an XML serializer supporting both DOM and SAX pretty
	* serializing. For usage instructions see {@link Serializer}.
	* <p>
	* If an output stream is used, the encoding is taken from the
	* output format (defaults to <tt>UTF-8</tt>). If a writer is
	* used, make sure the writer uses the same encoding (if applies)
	* as specified in the output format.
	* <p>
	* The serializer supports both DOM and SAX. SAX serializing is done by firing
	* SAX events and using the serializer as a document handler. DOM serializing is done
	* by calling {@link #serialize(Document)} or by using DOM Level 3
	* {@link org.w3c.dom.ls.DOMSerializer} and
	* serializing with {@link org.w3c.dom.ls.DOMSerializer#write},
	* {@link org.w3c.dom.ls.DOMSerializer#writeToString}.
	* <p>
	* If an I/O exception occurs while serializing, the serializer
	* will not throw an exception directly, but only throw it
	* at the end of serializing (either DOM or SAX's {@link
	* org.xml.sax.DocumentHandler#endDocument}.
	* <p>
	* For elements that are not specified as whitespace preserving,
	* the serializer will potentially break long text lines at space
	* boundaries, indent lines, and serialize elements on separate
	* lines. Line terminators will be regarded as spaces, and
	* spaces at beginning of line will be stripped.
	* @author <a href="mailto:arkin@intalio.com">Assaf Arkin</a>
	* @author <a href="mailto:rahul.srivastava@sun.com">Rahul Srivastava</a>
	* @author Elena Litani IBM
	* @see Serializer
	*/
	@:protected @:static @:final private static var DEBUG(default, null) : Bool;
	
	/** stores namespaces in scope */
	@:protected private var fNSBinder : com.sun.org.apache.xerces.internal.util.NamespaceSupport;
	
	/** stores all namespace bindings on the current element */
	@:protected private var fLocalNSBinder : com.sun.org.apache.xerces.internal.util.NamespaceSupport;
	
	/** symbol table for serialization */
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	@:protected @:final @:static private static var PREFIX(default, null) : String;
	
	/**
	* Controls whether namespace fixup should be performed during
	* the serialization.
	* NOTE: if this field is set to true the following
	* fields need to be initialized: fNSBinder, fLocalNSBinder, fSymbolTable,
	* XMLSymbols.EMPTY_STRING, fXmlSymbol, fXmlnsSymbol
	*/
	@:protected private var fNamespaces : Bool;
	
	/**
	* Controls whether namespace prefixes will be printed out during serialization
	*/
	@:protected private var fNamespacePrefixes : Bool;
	
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
	
	/**
	* This methods turns on namespace fixup algorithm during
	* DOM serialization.
	* @see org.w3c.dom.ls.DOMSerializer
	*
	* @param namespaces
	*/
	@:overload @:public public function setNamespaces(namespaces : Bool) : Void;
	
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, rawName : String, attrs : org.xml.sax.Attributes) : Void;
	
	@:overload @:public override public function endElement(namespaceURI : String, localName : String, rawName : String) : Void;
	
	@:overload @:public public function endElementIO(namespaceURI : String, localName : String, rawName : String) : Void;
	
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
	
	@:overload @:protected override private function getEntityRef(ch : Int) : String;
	
	@:overload @:protected override private function printEscaped(source : String) : Void;
	
	/** print text data */
	@:overload @:protected private function printXMLChar(ch : Int) : Void;
	
	@:overload @:protected override private function printText(text : String, preserveSpace : Bool, unescaped : Bool) : Void;
	
	@:overload @:protected override private function printText(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int, preserveSpace : Bool, unescaped : Bool) : Void;
	
	/**
	* DOM Level 3:
	* Check a node to determine if it contains unbound namespace prefixes.
	*
	* @param node The node to check for unbound namespace prefices
	*/
	@:overload @:protected override private function checkUnboundNamespacePrefixedNode(node : org.w3c.dom.Node) : Void;
	
	@:overload @:public override public function reset() : Bool;
	
	
}
