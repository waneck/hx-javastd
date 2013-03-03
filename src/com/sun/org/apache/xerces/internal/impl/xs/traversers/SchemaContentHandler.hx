package com.sun.org.apache.xerces.internal.impl.xs.traversers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
@:internal extern class SchemaContentHandler implements org.xml.sax.ContentHandler
{
	/**
	* <p>Constructs an SchemaContentHandler.</p>
	*/
	@:overload @:public public function new() : Void;
	
	/*
	* @see org.xml.sax.ContentHandler#setDocumentLocator(org.xml.sax.Locator)
	*/
	@:overload @:public public function getDocument() : org.w3c.dom.Document;
	
	/*
	* @see org.xml.sax.ContentHandler#setDocumentLocator(org.xml.sax.Locator)
	*/
	@:overload @:public public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/*
	* @see org.xml.sax.ContentHandler#startDocument()
	*/
	@:overload @:public public function startDocument() : Void;
	
	/*
	* @see org.xml.sax.ContentHandler#endDocument()
	*/
	@:overload @:public public function endDocument() : Void;
	
	/*
	* @see org.xml.sax.ContentHandler#startPrefixMapping(java.lang.String, java.lang.String)
	*/
	@:overload @:public public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/*
	* @see org.xml.sax.ContentHandler#endPrefixMapping(java.lang.String)
	*/
	@:overload @:public public function endPrefixMapping(prefix : String) : Void;
	
	/*
	* @see org.xml.sax.ContentHandler#startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes)
	*/
	@:overload @:public public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/*
	* @see org.xml.sax.ContentHandler#endElement(java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload @:public public function endElement(uri : String, localName : String, qName : String) : Void;
	
	/*
	* @see org.xml.sax.ContentHandler#characters(char[], int, int)
	*/
	@:overload @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/*
	* @see org.xml.sax.ContentHandler#ignorableWhitespace(char[], int, int)
	*/
	@:overload @:public public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/*
	* @see org.xml.sax.ContentHandler#processingInstruction(java.lang.String, java.lang.String)
	*/
	@:overload @:public public function processingInstruction(target : String, data : String) : Void;
	
	/*
	* @see org.xml.sax.ContentHandler#skippedEntity(java.lang.String)
	*/
	@:overload @:public public function skippedEntity(arg : String) : Void;
	
	@:overload @:public public function reset(schemaDOMParser : com.sun.org.apache.xerces.internal.impl.xs.opti.SchemaDOMParser, symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, namespacePrefixes : Bool, stringsInternalized : Bool) : Void;
	
	
}
