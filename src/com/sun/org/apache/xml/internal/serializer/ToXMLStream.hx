package com.sun.org.apache.xml.internal.serializer;
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
* $Id: ToXMLStream.java,v 1.2.4.2 2005/09/15 12:01:25 suresh_emailid Exp $
*/
extern class ToXMLStream extends com.sun.org.apache.xml.internal.serializer.ToStream
{
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Copy properties from another SerializerToXML.
	*
	* @param xmlListener non-null reference to a SerializerToXML object.
	*/
	@:overload public function CopyFrom(xmlListener : ToXMLStream) : Void;
	
	/**
	* Receive notification of the beginning of a document.
	*
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function startDocumentInternal() : Void;
	
	/**
	* Receive notification of the end of a document.
	*
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function endDocument() : Void;
	
	/**
	* Starts a whitespace preserving section. All characters printed
	* within a preserving section are printed without indentation and
	* without consolidating multiple spaces. This is equivalent to
	* the <tt>xml:space=&quot;preserve&quot;</tt> attribute. Only XML
	* and HTML serializers need to support this method.
	* <p>
	* The contents of the whitespace preserving section will be delivered
	* through the regular <tt>characters</tt> event.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload public function startPreserving() : Void;
	
	/**
	* Ends a whitespace preserving section.
	*
	* @see #startPreserving
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload public function endPreserving() : Void;
	
	/**
	* Receive notification of a processing instruction.
	*
	* @param target The processing instruction target.
	* @param data The processing instruction data, or null if
	*        none was supplied.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Receive notivication of a entityReference.
	*
	* @param name The name of the entity.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function entityReference(name : String) : Void;
	
	/**
	* This method is used to add an attribute to the currently open element.
	* The caller has guaranted that this attribute is unique, which means that it
	* not been seen before and will not be seen again.
	*
	* @param name the qualified name of the attribute
	* @param value the value of the attribute which can contain only
	* ASCII printable characters characters in the range 32 to 127 inclusive.
	* @param flags the bit values of this integer give optimization information.
	*/
	@:overload override public function addUniqueAttribute(name : String, value : String, flags : Int) : Void;
	
	/**
	* Add an attribute to the current element.
	* @param uri the URI associated with the element name
	* @param localName local part of the attribute name
	* @param rawName   prefix:localName
	* @param type
	* @param value the value of the attribute
	* @param xslAttribute true if this attribute is from an xsl:attribute,
	* false if declared within the elements opening tag.
	* @throws SAXException
	*/
	@:overload override public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String, xslAttribute : Bool) : Void;
	
	/**
	* @see ExtendedContentHandler#endElement(String)
	*/
	@:overload override public function endElement(elemName : String) : Void;
	
	/**
	* This method is used to notify the serializer of a namespace mapping (or node)
	* that applies to the current element whose startElement() call has already been seen.
	* The official SAX startPrefixMapping(prefix,uri) is to define a mapping for a child
	* element that is soon to be seen with a startElement() call. The official SAX call
	* does not apply to the current element, hence the reason for this method.
	*/
	@:overload override public function namespaceAfterStartElement(prefix : String, uri : String) : Void;
	
	/**
	* From XSLTC
	* Declare a prefix to point to a namespace URI. Inform SAX handler
	* if this is a new prefix mapping.
	*/
	@:overload private function pushNamespace(prefix : String, uri : String) : Bool;
	
	/**
	* Try's to reset the super class and reset this class for
	* re-use, so that you don't need to create a new serializer
	* (mostly for performance reasons).
	*
	* @return true if the class was successfuly reset.
	*/
	@:overload override public function reset() : Bool;
	
	
}
