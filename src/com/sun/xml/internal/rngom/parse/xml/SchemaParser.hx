package com.sun.xml.internal.rngom.parse.xml;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
/*
* Copyright (C) 2004-2011
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/
@:internal extern class SchemaParser
{
	@:overload public function getParsedPattern() : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$PrefixMapping') @:internal extern class SchemaParser_PrefixMapping
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$AbstractContext') @:internal extern class SchemaParser_AbstractContext extends com.sun.xml.internal.rngom.parse.xml.DtdContext implements com.sun.xml.internal.rngom.parse.Context
{
	@:overload override public function resolveNamespacePrefix(prefix : String) : String;
	
	@:overload public function prefixes() : java.util.Enumeration<Dynamic>;
	
	@:overload public function copy() : com.sun.xml.internal.rngom.parse.Context;
	
	/**
	* Returns the base URI of the context.  The null string may be returned
	* if no base URI is known.
	*/
	@:overload override public function getBaseUri() : String;
	
	/**
	* Checks if an unparsed entity is declared with the
	* specified name.
	*
	* @return
	*  true
	*              if the DTD has an unparsed entity declaration for
	*              the specified name.
	*  false
	*              otherwise.
	*/
	@:overload override public function isUnparsedEntity(entityName : String) : Bool;
	
	/**
	* Checks if a notation is declared with the
	* specified name.
	*
	* @return
	*  true
	*              if the DTD has a notation declaration for the specified name.
	*  false
	*              otherwise.
	*/
	@:overload override public function isNotation(notationName : String) : Bool;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$SavedContext') @:internal extern class SchemaParser_SavedContext extends SchemaParser_AbstractContext
{
	@:overload override public function getBaseUri() : String;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$ContextImpl') @:internal extern class SchemaParser_ContextImpl extends SchemaParser_AbstractContext
{
	@:overload override public function getBaseUri() : String;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$CommentHandler') @:internal extern interface SchemaParser_CommentHandler
{
	@:overload public function comment(value : String) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$Handler') @:internal extern class SchemaParser_Handler implements org.xml.sax.ContentHandler implements SchemaParser_CommentHandler
{
	@:overload public function comment(value : String) : Void;
	
	@:overload public function processingInstruction(target : String, date : String) : Void;
	
	@:overload public function skippedEntity(name : String) : Void;
	
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	@:overload public function startDocument() : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	@:overload public function setDocumentLocator(loc : org.xml.sax.Locator) : Void;
	
	/**
	* Receive notification of the beginning of an element.
	*
	* <p>The Parser will invoke this method at the beginning of every
	* element in the XML document; there will be a corresponding
	* {@link #endElement endElement} event for every startElement event
	* (even when the element is empty). All of the element's content will be
	* reported, in order, before the corresponding endElement
	* event.</p>
	*
	* <p>This event allows up to three name components for each
	* element:</p>
	*
	* <ol>
	* <li>the Namespace URI;</li>
	* <li>the local name; and</li>
	* <li>the qualified (prefixed) name.</li>
	* </ol>
	*
	* <p>Any or all of these may be provided, depending on the
	* values of the <var>http://xml.org/sax/features/namespaces</var>
	* and the <var>http://xml.org/sax/features/namespace-prefixes</var>
	* properties:</p>
	*
	* <ul>
	* <li>the Namespace URI and local name are required when
	* the namespaces property is <var>true</var> (the default), and are
	* optional when the namespaces property is <var>false</var> (if one is
	* specified, both must be);</li>
	* <li>the qualified name is required when the namespace-prefixes property
	* is <var>true</var>, and is optional when the namespace-prefixes property
	* is <var>false</var> (the default).</li>
	* </ul>
	*
	* <p>Note that the attribute list provided will contain only
	* attributes with explicit values (specified or defaulted):
	* #IMPLIED attributes will be omitted.  The attribute list
	* will contain attributes used for Namespace declarations
	* (xmlns* attributes) only if the
	* <code>http://xml.org/sax/features/namespace-prefixes</code>
	* property is true (it is false by default, and support for a
	* true value is optional).</p>
	*
	* <p>Like {@link #characters characters()}, attribute values may have
	* characters that need more than one <code>char</code> value.  </p>
	*
	* @param uri the Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed
	* @param localName the local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed
	* @param qName the qualified name (with prefix), or the
	*        empty string if qualified names are not available
	* @param atts the attributes attached to the element.  If
	*        there are no attributes, it shall be an empty
	*        Attributes object.  The value of this object after
	*        startElement returns is undefined
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see #endElement
	* @see org.xml.sax.Attributes
	* @see org.xml.sax.helpers.AttributesImpl
	*/
	@:overload @:public @:public @:public public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Receive notification of character data.
	*
	* <p>The Parser will call this method to report each chunk of
	* character data.  SAX parsers may return all contiguous character
	* data in a single chunk, or they may split it into several
	* chunks; however, all of the characters in any single event
	* must come from the same external entity so that the Locator
	* provides useful information.</p>
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Individual characters may consist of more than one Java
	* <code>char</code> value.  There are two important cases where this
	* happens, because characters can't be represented in just sixteen bits.
	* In one case, characters are represented in a <em>Surrogate Pair</em>,
	* using two special Unicode values. Such characters are in the so-called
	* "Astral Planes", with a code point above U+FFFF.  A second case involves
	* composite characters, such as a base character combining with one or
	* more accent characters. </p>
	*
	* <p> Your code should not assume that algorithms using
	* <code>char</code>-at-a-time idioms will be working in character
	* units; in some cases they will split characters.  This is relevant
	* wherever XML permits arbitrary characters, such as attribute values,
	* processing instruction data, and comments as well as in data reported
	* from this method.  It's also generally relevant whenever Java code
	* manipulates internationalized text; the issue isn't unique to XML.</p>
	*
	* <p>Note that some parsers will report whitespace in element
	* content using the {@link #ignorableWhitespace ignorableWhitespace}
	* method rather than this one (validating parsers <em>must</em>
	* do so).</p>
	*
	* @param ch the characters from the XML document
	* @param start the start position in the array
	* @param length the number of characters to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see #ignorableWhitespace
	* @see org.xml.sax.Locator
	*/
	@:overload @:public @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of the end of an element.
	*
	* <p>The SAX parser will invoke this method at the end of every
	* element in the XML document; there will be a corresponding
	* {@link #startElement startElement} event for every endElement
	* event (even when the element is empty).</p>
	*
	* <p>For information on the names, see startElement.</p>
	*
	* @param uri the Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed
	* @param localName the local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed
	* @param qName the qualified XML name (with prefix), or the
	*        empty string if qualified names are not available
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload @:public @:public @:public public function endElement(uri : String, localName : String, qName : String) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$State') @:internal extern class SchemaParser_State extends SchemaParser_Handler
{
	@:overload override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload override public function startDocument() : Void;
	
	@:overload override public function endDocument() : Void;
	
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$ForeignElementHandler') @:internal extern class SchemaParser_ForeignElementHandler extends SchemaParser_Handler
{
	@:overload override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload override public function comment(value : String) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$Skipper') @:internal extern class SchemaParser_Skipper extends org.xml.sax.helpers.DefaultHandler implements SchemaParser_CommentHandler
{
	@:overload override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload public function comment(value : String) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$EmptyContentState') @:internal extern class SchemaParser_EmptyContentState extends SchemaParser_State
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$PatternContainerState') @:internal extern class SchemaParser_PatternContainerState extends SchemaParser_State
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$GroupState') @:internal extern class SchemaParser_GroupState extends SchemaParser_PatternContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$ZeroOrMoreState') @:internal extern class SchemaParser_ZeroOrMoreState extends SchemaParser_PatternContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$OneOrMoreState') @:internal extern class SchemaParser_OneOrMoreState extends SchemaParser_PatternContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$OptionalState') @:internal extern class SchemaParser_OptionalState extends SchemaParser_PatternContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$ListState') @:internal extern class SchemaParser_ListState extends SchemaParser_PatternContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$ChoiceState') @:internal extern class SchemaParser_ChoiceState extends SchemaParser_PatternContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$InterleaveState') @:internal extern class SchemaParser_InterleaveState extends SchemaParser_PatternContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$MixedState') @:internal extern class SchemaParser_MixedState extends SchemaParser_PatternContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$NameClassRef') @:internal extern interface SchemaParser_NameClassRef
{
	@:overload public function setNameClass(nc : com.sun.xml.internal.rngom.ast.om.ParsedNameClass) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$ElementState') @:internal extern class SchemaParser_ElementState extends SchemaParser_PatternContainerState implements SchemaParser_NameClassRef
{
	@:overload public function setNameClass(nc : com.sun.xml.internal.rngom.ast.om.ParsedNameClass) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$RootState') @:internal extern class SchemaParser_RootState extends SchemaParser_PatternContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$NotAllowedState') @:internal extern class SchemaParser_NotAllowedState extends SchemaParser_EmptyContentState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$EmptyState') @:internal extern class SchemaParser_EmptyState extends SchemaParser_EmptyContentState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$TextState') @:internal extern class SchemaParser_TextState extends SchemaParser_EmptyContentState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$ValueState') @:internal extern class SchemaParser_ValueState extends SchemaParser_EmptyContentState
{
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$DataState') @:internal extern class SchemaParser_DataState extends SchemaParser_State
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$ParamState') @:internal extern class SchemaParser_ParamState extends SchemaParser_State
{
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$AttributeState') @:internal extern class SchemaParser_AttributeState extends SchemaParser_PatternContainerState implements SchemaParser_NameClassRef
{
	@:overload public function setNameClass(nc : com.sun.xml.internal.rngom.ast.om.ParsedNameClass) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$SinglePatternContainerState') @:internal extern class SchemaParser_SinglePatternContainerState extends SchemaParser_PatternContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$GrammarSectionState') @:internal extern class SchemaParser_GrammarSectionState extends SchemaParser_State
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$DivState') @:internal extern class SchemaParser_DivState extends SchemaParser_GrammarSectionState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$IncludeState') @:internal extern class SchemaParser_IncludeState extends SchemaParser_GrammarSectionState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$MergeGrammarState') @:internal extern class SchemaParser_MergeGrammarState extends SchemaParser_GrammarSectionState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$GrammarState') @:internal extern class SchemaParser_GrammarState extends SchemaParser_GrammarSectionState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$RefState') @:internal extern class SchemaParser_RefState extends SchemaParser_EmptyContentState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$ParentRefState') @:internal extern class SchemaParser_ParentRefState extends SchemaParser_RefState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$ExternalRefState') @:internal extern class SchemaParser_ExternalRefState extends SchemaParser_EmptyContentState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$DefinitionState') @:internal extern class SchemaParser_DefinitionState extends SchemaParser_PatternContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$DefineState') @:internal extern class SchemaParser_DefineState extends SchemaParser_DefinitionState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$StartState') @:internal extern class SchemaParser_StartState extends SchemaParser_DefinitionState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$NameClassContainerState') @:internal extern class SchemaParser_NameClassContainerState extends SchemaParser_State
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$NameClassChildState') @:internal extern class SchemaParser_NameClassChildState extends SchemaParser_NameClassContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$NameClassBaseState') @:internal extern class SchemaParser_NameClassBaseState extends SchemaParser_State
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$NameState') @:internal extern class SchemaParser_NameState extends SchemaParser_NameClassBaseState
{
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$AnyNameState') @:internal extern class SchemaParser_AnyNameState extends SchemaParser_NameClassBaseState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$NsNameState') @:internal extern class SchemaParser_NsNameState extends SchemaParser_AnyNameState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$NameClassChoiceState') @:internal extern class SchemaParser_NameClassChoiceState extends SchemaParser_NameClassContainerState
{
	
}
@:native('com$sun$xml$internal$rngom$parse$xml$SchemaParser$LexicalHandlerImpl') @:internal extern class SchemaParser_LexicalHandlerImpl extends com.sun.xml.internal.rngom.xml.sax.AbstractLexicalHandler
{
	@:overload override public function startDTD(s : String, s1 : String, s2 : String) : Void;
	
	@:overload override public function endDTD() : Void;
	
	@:overload override public function comment(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	
}
