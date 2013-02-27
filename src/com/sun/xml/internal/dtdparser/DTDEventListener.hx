package com.sun.xml.internal.dtdparser;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface DTDEventListener extends java.util.EventListener
{
	/**
	* All DTD parsing events are signaled through this interface.
	*/
	@:overload public function setDocumentLocator(loc : org.xml.sax.Locator) : Void;
	
	/**
	* Receive notification of a Processing Instruction.
	* Processing instructions contain information meaningful
	* to the application.
	*
	* @param target The target of the proceessing instruction
	*               which should have meaning to the application.
	* @param data   The instruction itself which should contain
	*               valid XML characters.
	* @throws SAXException
	*/
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Receive notification of a Notation Declaration.
	* Notation declarations are used by elements and entities
	* for identifying embedded non-XML data.
	*
	* @param name     The notation name, referred to by entities and
	*                 elements.
	* @param publicId The public identifier
	* @param systemId The system identifier
	*/
	@:overload public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Receive notification of an unparsed entity declaration.
	* Unparsed entities are non-XML data.
	*
	* @param name         The name of the unparsed entity.
	* @param publicId     The public identifier
	* @param systemId     The system identifier
	* @param notationName The associated notation
	*/
	@:overload public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	/**
	* Receive notification of a internal general entity declaration event.
	*
	* @param name  The internal general entity name.
	* @param value The value of the entity, which may include unexpanded
	*              entity references.  Character references will have been
	*              expanded.
	* @throws SAXException
	* @see #externalGeneralEntityDecl(String, String, String)
	*/
	@:overload public function internalGeneralEntityDecl(name : String, value : String) : Void;
	
	/**
	* Receive notification of an external parsed general entity
	* declaration event.
	* <p/>
	* <p>If a system identifier is present, and it is a relative URL, the
	* parser will have resolved it fully before passing it through this
	* method to a listener.</p>
	*
	* @param name     The entity name.
	* @param publicId The entity's public identifier, or null if
	*                 none was given.
	* @param systemId The entity's system identifier.
	* @throws SAXException
	* @see #unparsedEntityDecl(String, String, String, String)
	*/
	@:overload public function externalGeneralEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Receive notification of a internal parameter entity declaration
	* event.
	*
	* @param name  The internal parameter entity name.
	* @param value The value of the entity, which may include unexpanded
	*              entity references.  Character references will have been
	*              expanded.
	* @throws SAXException
	* @see #externalParameterEntityDecl(String, String, String)
	*/
	@:overload public function internalParameterEntityDecl(name : String, value : String) : Void;
	
	/**
	* Receive notification of an external parameter entity declaration
	* event.
	* <p/>
	* <p>If a system identifier is present, and it is a relative URL, the
	* parser will have resolved it fully before passing it through this
	* method to a listener.</p>
	*
	* @param name     The parameter entity name.
	* @param publicId The entity's public identifier, or null if
	*                 none was given.
	* @param systemId The entity's system identifier.
	* @throws SAXException
	* @see #unparsedEntityDecl(String, String, String, String)
	*/
	@:overload public function externalParameterEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Receive notification of the beginning of the DTD.
	*
	* @param in Current input entity.
	* @see #endDTD()
	*/
	@:overload public function startDTD(_in : com.sun.xml.internal.dtdparser.InputEntity) : Void;
	
	/**
	* Receive notification of the end of a DTD.  The parser will invoke
	* this method only once.
	*
	* @throws SAXException
	* @see #startDTD(InputEntity)
	*/
	@:overload public function endDTD() : Void;
	
	/**
	* Receive notification that a comment has been read.
	* <p/>
	* <P> Note that processing instructions are the mechanism designed
	* to hold information for consumption by applications, not comments.
	* XML systems may rely on applications being able to access information
	* found in processing instructions; this is not true of comments, which
	* are typically discarded.
	*
	* @param text the text within the comment delimiters.
	* @throws SAXException
	*/
	@:overload public function comment(text : String) : Void;
	
	/**
	* Receive notification of character data.
	* <p/>
	* <p>The Parser will call this method to report each chunk of
	* character data.  SAX parsers may return all contiguous character
	* data in a single chunk, or they may split it into several
	* chunks; however, all of the characters in any single event
	* must come from the same external entity, so that the Locator
	* provides useful information.</p>
	* <p/>
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	* <p/>
	* <p>Note that some parsers will report whitespace using the
	* ignorableWhitespace() method rather than this one (validating
	* parsers must do so).</p>
	*
	* @param ch     The characters from the DTD.
	* @param start  The start position in the array.
	* @param length The number of characters to read from the array.
	* @throws SAXException
	* @see #ignorableWhitespace(char[], int, int)
	*/
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of ignorable whitespace in element content.
	* <p/>
	* <p>Validating Parsers must use this method to report each chunk
	* of ignorable whitespace (see the W3C XML 1.0 recommendation,
	* section 2.10): non-validating parsers may also use this method
	* if they are capable of parsing and using content models.</p>
	* <p/>
	* <p>SAX parsers may return all contiguous whitespace in a single
	* chunk, or they may split it into several chunks; however, all of
	* the characters in any single event must come from the same
	* external entity, so that the Locator provides useful
	* information.</p>
	* <p/>
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* @param ch     The characters from the DTD.
	* @param start  The start position in the array.
	* @param length The number of characters to read from the array.
	* @throws SAXException
	* @see #characters(char[], int, int)
	*/
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification that a CDATA section is beginning.  Data in a
	* CDATA section is is reported through the appropriate event, either
	* <em>characters()</em> or <em>ignorableWhitespace</em>.
	*
	* @throws SAXException
	* @see #endCDATA()
	*/
	@:overload public function startCDATA() : Void;
	
	/**
	* Receive notification that the CDATA section finished.
	*
	* @throws SAXException
	* @see #startCDATA()
	*/
	@:overload public function endCDATA() : Void;
	
	@:overload public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload public function error(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload public function warning(err : org.xml.sax.SAXParseException) : Void;
	
	public var CONTENT_MODEL_EMPTY(default, null) : java.StdTypes.Int16;
	
	public var CONTENT_MODEL_ANY(default, null) : java.StdTypes.Int16;
	
	public var CONTENT_MODEL_MIXED(default, null) : java.StdTypes.Int16;
	
	public var CONTENT_MODEL_CHILDREN(default, null) : java.StdTypes.Int16;
	
	/**
	* receives notification that parsing of content model is beginning.
	*
	* @param elementName      name of the element whose content model is going to be defined.
	* @param contentModelType {@link #CONTENT_MODEL_EMPTY}
	*                         this element has EMPTY content model. This notification
	*                         will be immediately followed by the corresponding endContentModel.
	*                         {@link #CONTENT_MODEL_ANY}
	*                         this element has ANY content model. This notification
	*                         will be immediately followed by the corresponding endContentModel.
	*                         {@link #CONTENT_MODEL_MIXED}
	*                         this element has mixed content model. #PCDATA will not be reported.
	*                         each child element will be reported by mixedElement method.
	*                         {@link #CONTENT_MODEL_CHILDREN}
	*                         this elemen has child content model. The actual content model will
	*                         be reported by childElement, startModelGroup, endModelGroup, and
	*                         connector methods. Possible call sequences are:
	*                         <p/>
	*                         START := MODEL_GROUP
	*                         MODEL_GROUP := startModelGroup TOKEN (connector TOKEN)* endModelGroup
	*                         TOKEN := childElement
	*                         | MODEL_GROUP
	*/
	@:overload public function startContentModel(elementName : String, contentModelType : java.StdTypes.Int16) : Void;
	
	/**
	* receives notification that parsing of content model is finished.
	*/
	@:overload public function endContentModel(elementName : String, contentModelType : java.StdTypes.Int16) : Void;
	
	public var USE_NORMAL(default, null) : java.StdTypes.Int16;
	
	public var USE_IMPLIED(default, null) : java.StdTypes.Int16;
	
	public var USE_FIXED(default, null) : java.StdTypes.Int16;
	
	public var USE_REQUIRED(default, null) : java.StdTypes.Int16;
	
	/**
	* For each entry in an ATTLIST declaration,
	* this event will be fired.
	* <p/>
	* <p/>
	* DTD allows the same attributes to be declared more than
	* once, and in that case the first one wins. I think
	* this method will be only fired for the first one,
	* but I need to check.
	*/
	@:overload public function attributeDecl(elementName : String, attributeName : String, attributeType : String, enumeration : java.NativeArray<String>, attributeUse : java.StdTypes.Int16, defaultValue : String) : Void;
	
	@:overload public function childElement(elementName : String, occurence : java.StdTypes.Int16) : Void;
	
	/**
	* receives notification of child element of mixed content model.
	* this method is called for each child element.
	*
	* @see #startContentModel(String, short)
	*/
	@:overload public function mixedElement(elementName : String) : Void;
	
	@:overload public function startModelGroup() : Void;
	
	@:overload public function endModelGroup(occurence : java.StdTypes.Int16) : Void;
	
	public var CHOICE(default, null) : java.StdTypes.Int16;
	
	public var SEQUENCE(default, null) : java.StdTypes.Int16;
	
	/**
	* Connectors in one model group is guaranteed to be the same.
	* <p/>
	* <p/>
	* IOW, you'll never see an event sequence like (a|b,c)
	*
	* @return {@link #CHOICE} or {@link #SEQUENCE}.
	*/
	@:overload public function connector(connectorType : java.StdTypes.Int16) : Void;
	
	public var OCCURENCE_ZERO_OR_MORE(default, null) : java.StdTypes.Int16;
	
	public var OCCURENCE_ONE_OR_MORE(default, null) : java.StdTypes.Int16;
	
	public var OCCURENCE_ZERO_OR_ONE(default, null) : java.StdTypes.Int16;
	
	public var OCCURENCE_ONCE(default, null) : java.StdTypes.Int16;
	
	
}
