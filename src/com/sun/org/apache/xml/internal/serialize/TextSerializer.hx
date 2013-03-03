package com.sun.org.apache.xml.internal.serialize;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern class TextSerializer extends com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
{
	/**
	* Constructs a new serializer. The serializer cannot be used without
	* calling {@link #setOutputCharStream} or {@link #setOutputByteStream}
	* first.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function setOutputFormat(format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, rawName : String, attrs : org.xml.sax.Attributes) : Void;
	
	@:overload @:public override public function endElement(namespaceURI : String, localName : String, rawName : String) : Void;
	
	@:overload @:public override public function startElement(tagName : String, attrs : org.xml.sax.AttributeList) : Void;
	
	@:overload @:public override public function endElement(tagName : String) : Void;
	
	@:overload @:public public function endElementIO(tagName : String) : Void;
	
	@:overload @:public override public function processingInstructionIO(target : String, code : String) : Void;
	
	@:overload @:public override public function comment(text : String) : Void;
	
	@:overload @:public override public function comment(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function characters(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:protected private function characters(text : String, unescaped : Bool) : Void;
	
	/**
	* Called to serialize the document's DOCTYPE by the root element.
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
	
	/**
	* Serialize the DOM node. This method is unique to the Text serializer.
	*
	* @param node The node to serialize
	*/
	@:overload @:protected override private function serializeNode(node : org.w3c.dom.Node) : Void;
	
	@:overload @:protected override private function content() : com.sun.org.apache.xml.internal.serialize.ElementState;
	
	@:overload @:protected override private function getEntityRef(ch : Int) : String;
	
	
}
