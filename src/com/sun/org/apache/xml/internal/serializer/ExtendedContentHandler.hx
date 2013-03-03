package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2004 The Apache Software Foundation.
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
* $Id: ExtendedContentHandler.java,v 1.2.4.1 2005/09/15 08:15:17 suresh_emailid Exp $
*/
@:internal extern interface ExtendedContentHandler extends org.xml.sax.ContentHandler
{
	/**
	* Add at attribute to the current element
	* @param uri the namespace URI of the attribute name
	* @param localName the local name of the attribute (without prefix)
	* @param rawName the qualified name of the attribute
	* @param type the attribute type typically character data (CDATA)
	* @param value the value of the attribute
	* @param XSLAttribute true if the added attribute is coming from an xsl:attribute element
	* @throws SAXException
	*/
	@:overload @:public public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String, XSLAttribute : Bool) : Void;
	
	/**
	* Add attributes to the current element
	* @param atts the attributes to add.
	* @throws SAXException
	*/
	@:overload @:public public function addAttributes(atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Add an attribute to the current element. The namespace URI of the
	* attribute will be calculated from the prefix of qName. The local name
	* will be derived from qName and the type will be assumed to be "CDATA".
	* @param qName
	* @param value
	*/
	@:overload @:public public function addAttribute(qName : String, value : String) : Void;
	
	/**
	* This method is used to notify of a character event, but passing the data
	* as a character String rather than the standard character array.
	* @param chars the character data
	* @throws SAXException
	*/
	@:overload @:public public function characters(chars : String) : Void;
	
	/**
	* This method is used to notify of a character event, but passing the data
	* as a DOM Node rather than the standard character array.
	* @param node a DOM Node containing text.
	* @throws SAXException
	*/
	@:overload @:public public function characters(node : org.w3c.dom.Node) : Void;
	
	/**
	* This method is used to notify that an element has ended. Unlike the
	* standard SAX method
	* <pre>
	* endElement(namespaceURI,localName,qName)
	* </pre>
	* only the last parameter is passed. If needed the serializer can derive
	* the localName from the qualified name and derive the namespaceURI from
	* its implementation.
	* @param elemName the fully qualified element name.
	* @throws SAXException
	*/
	@:overload @:public public function endElement(elemName : String) : Void;
	
	/**
	* This method is used to notify that an element is starting.
	* This method is just like the standard SAX method
	* <pre>
	* startElement(uri,localName,qname,atts)
	* </pre>
	* but without the attributes.
	* @param uri the namespace URI of the element
	* @param localName the local name (without prefix) of the element
	* @param qName the qualified name of the element
	*
	* @throws SAXException
	*/
	@:overload @:public public function startElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* This method is used to notify of the start of an element
	* @param qName the fully qualified name of the element
	* @throws SAXException
	*/
	@:overload @:public public function startElement(qName : String) : Void;
	
	/**
	* This method is used to notify that a prefix mapping is to start, but
	* after an element is started. The SAX method call
	* <pre>
	* startPrefixMapping(prefix,uri)
	* </pre>
	* is used just before an element starts and applies to the element to come,
	* not to the current element.  This method applies to the current element.
	* For example one could make the calls in this order:
	* <pre>
	* startElement("prfx8:elem9")
	* namespaceAfterStartElement("http://namespace8","prfx8")
	* </pre>
	*
	* @param uri the namespace URI being declared
	* @param prefix the prefix that maps to the given namespace
	* @throws SAXException
	*/
	@:overload @:public public function namespaceAfterStartElement(uri : String, prefix : String) : Void;
	
	/**
	* This method is used to notify that a prefix maping is to start, which can
	* be for the current element, or for the one to come.
	* @param prefix the prefix that maps to the given URI
	* @param uri the namespace URI of the given prefix
	* @param shouldFlush if true this call is like the SAX
	* startPrefixMapping(prefix,uri) call and the mapping applies to the
	* element to come.  If false the mapping applies to the current element.
	* @return boolean false if the prefix mapping was already in effect (in
	* other words we are just re-declaring), true if this is a new, never
	* before seen mapping for the element.
	* @throws SAXException
	*/
	@:overload @:public public function startPrefixMapping(prefix : String, uri : String, shouldFlush : Bool) : Bool;
	
	/**
	* Notify of an entity reference.
	* @param entityName the name of the entity
	* @throws SAXException
	*/
	@:overload @:public public function entityReference(entityName : String) : Void;
	
	/**
	* This method returns an object that has the current namespace mappings in
	* effect.
	*
	* @return NamespaceMappings an object that has the current namespace
	* mappings in effect.
	*/
	@:overload @:public public function getNamespaceMappings() : com.sun.org.apache.xml.internal.serializer.NamespaceMappings;
	
	/**
	* This method returns the prefix that currently maps to the given namespace
	* URI.
	* @param uri the namespace URI
	* @return String the prefix that currently maps to the given URI.
	*/
	@:overload @:public public function getPrefix(uri : String) : String;
	
	/**
	* This method gets the prefix associated with a current element or
	* attribute name.
	* @param name the qualified name of an element, or attribute
	* @param isElement true if it is an element name, false if it is an
	* atttribute name
	* @return String the namespace URI associated with the element or
	* attribute.
	*/
	@:overload @:public public function getNamespaceURI(name : String, isElement : Bool) : String;
	
	/**
	* This method returns the namespace URI currently associated with the
	* prefix.
	* @param prefix a prefix of an element or attribute.
	* @return String the namespace URI currently associated with the prefix.
	*/
	@:overload @:public public function getNamespaceURIFromPrefix(prefix : String) : String;
	
	/**
	* This method is used to set the source locator, which might be used to
	* generated an error message.
	* @param locator the source locator
	*/
	@:overload @:public public function setSourceLocator(locator : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* Add a unique attribute to the current element.
	* The attribute is guaranteed to be unique here. The serializer can write
	* it out immediately without saving it in a table first. The integer
	* flag contains information about the attribute, which helps the serializer
	* to decide whether a particular processing is needed.
	*
	* @param qName the fully qualified attribute name.
	* @param value the attribute value
	* @param flags a bitwise flag
	*/
	@:overload @:public public function addUniqueAttribute(qName : String, value : String, flags : Int) : Void;
	
	/**
	* Add an attribute from an xsl:attribute element.
	* @param qName the qualified attribute name (prefix:localName)
	* @param value the attributes value
	* @param uri the uri that the prefix of the qName is mapped to.
	*/
	@:overload @:public public function addXSLAttribute(qName : String, value : String, uri : String) : Void;
	
	/**
	* Add at attribute to the current element, not from an xsl:attribute
	* element.
	* @param uri the namespace URI of the attribute name
	* @param localName the local name of the attribute (without prefix)
	* @param rawName the qualified name of the attribute
	* @param type the attribute type typically character data (CDATA)
	* @param value the value of the attribute
	* @throws SAXException
	*/
	@:overload @:public public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String) : Void;
	
	
}
