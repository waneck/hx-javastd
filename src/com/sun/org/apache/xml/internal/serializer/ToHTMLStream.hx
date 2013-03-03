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
* $Id: ToHTMLStream.java,v 1.2.4.1 2005/09/15 08:15:26 suresh_emailid Exp $
*/
extern class ToHTMLStream extends com.sun.org.apache.xml.internal.serializer.ToStream
{
	/** This flag is set while receiving events from the DTD */
	@:protected private var m_inDTD : Bool;
	
	/**
	* Tells if the formatter should use special URL escaping.
	*
	* @param bool True if URLs should be specially escaped with the %xx form.
	*/
	@:overload @:public public function setSpecialEscapeURLs(bool : Bool) : Void;
	
	/**
	* Tells if the formatter should omit the META tag.
	*
	* @param bool True if the META tag should be omitted.
	*/
	@:overload @:public public function setOmitMetaTag(bool : Bool) : Void;
	
	/**
	* Specifies an output format for this serializer. It the
	* serializer has already been associated with an output format,
	* it will switch to the new format. This method should not be
	* called while the serializer is in the process of serializing
	* a document.
	*
	* This method can be called multiple times before starting
	* the serialization of a particular result-tree. In principle
	* all serialization parameters can be changed, with the exception
	* of method="html" (it must be method="html" otherwise we
	* shouldn't even have a ToHTMLStream object here!)
	*
	* @param format The output format or serialzation parameters
	* to use.
	*/
	@:overload @:public override public function setOutputFormat(format : java.util.Properties) : Void;
	
	/**
	* Get a description of the given element.
	*
	* @param name non-null name of element, case insensitive.
	*
	* @return non-null reference to ElemDesc, which may be m_dummy if no
	*         element description matches the given name.
	*/
	@:overload @:public @:static @:final public static function getElemDesc(name : String) : com.sun.org.apache.xml.internal.serializer.ElemDesc;
	
	/**
	* Default constructor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Receive notification of the beginning of a document.
	*
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:protected override private function startDocumentInternal() : Void;
	
	/**
	* Receive notification of the end of a document.
	*
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public @:final override public function endDocument() : Void;
	
	/**
	*  Receive notification of the beginning of an element.
	*
	*
	*  @param namespaceURI
	*  @param localName
	*  @param name The element type name.
	*  @param atts The attributes attached to the element, if any.
	*  @throws org.xml.sax.SAXException Any SAX exception, possibly
	*             wrapping another exception.
	*  @see #endElement
	*  @see org.xml.sax.AttributeList
	*/
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, name : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	*  Receive notification of the end of an element.
	*
	*
	*  @param namespaceURI
	*  @param localName
	*  @param name The element type name
	*  @throws org.xml.sax.SAXException Any SAX exception, possibly
	*             wrapping another exception.
	*/
	@:overload @:public @:final override public function endElement(namespaceURI : String, localName : String, name : String) : Void;
	
	/**
	* Process an attribute.
	* @param   writer The writer to write the processed output to.
	* @param   name   The name of the attribute.
	* @param   value   The value of the attribute.
	* @param   elemDesc The description of the HTML element
	*           that has this attribute.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:protected private function processAttribute(writer : java.io.Writer, name : String, value : String, elemDesc : com.sun.org.apache.xml.internal.serializer.ElemDesc) : Void;
	
	/**
	* Write the specified <var>string</var> after substituting non ASCII characters,
	* with <CODE>%HH</CODE>, where HH is the hex of the byte value.
	*
	* @param   string      String to convert to XML format.
	* @param doURLEscaping True if we should try to encode as
	*                      per http://www.ietf.org/rfc/rfc2396.txt.
	*
	* @throws org.xml.sax.SAXException if a bad surrogate pair is detected.
	*/
	@:overload @:public public function writeAttrURI(writer : java.io.Writer, string : String, doURLEscaping : Bool) : Void;
	
	/**
	* Writes the specified <var>string</var> after substituting <VAR>specials</VAR>,
	* and UTF-16 surrogates for character references <CODE>&amp;#xnn</CODE>.
	*
	* @param   string      String to convert to XML format.
	* @param   encoding    CURRENTLY NOT IMPLEMENTED.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public override public function writeAttrString(writer : java.io.Writer, string : String, encoding : String) : Void;
	
	/**
	* Receive notification of character data.
	*
	* <p>The Parser will call this method to report each chunk of
	* character data.  SAX parsers may return all contiguous character
	* data in a single chunk, or they may split it into several
	* chunks; however, all of the characters in any single event
	* must come from the same external entity, so that the Locator
	* provides useful information.</p>
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Note that some parsers will report whitespace using the
	* ignorableWhitespace() method rather than this one (validating
	* parsers must do so).</p>
	*
	* @param chars The characters from the XML document.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see #ignorableWhitespace
	* @see org.xml.sax.Locator
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public @:final override public function characters(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	*  Receive notification of cdata.
	*
	*  <p>The Parser will call this method to report each chunk of
	*  character data.  SAX parsers may return all contiguous character
	*  data in a single chunk, or they may split it into several
	*  chunks; however, all of the characters in any single event
	*  must come from the same external entity, so that the Locator
	*  provides useful information.</p>
	*
	*  <p>The application must not attempt to read from the array
	*  outside of the specified range.</p>
	*
	*  <p>Note that some parsers will report whitespace using the
	*  ignorableWhitespace() method rather than this one (validating
	*  parsers must do so).</p>
	*
	*  @param ch The characters from the XML document.
	*  @param start The start position in the array.
	*  @param length The number of characters to read from the array.
	*  @throws org.xml.sax.SAXException Any SAX exception, possibly
	*             wrapping another exception.
	*  @see #ignorableWhitespace
	*  @see org.xml.sax.Locator
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public @:final override public function cdata(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	*  Receive notification of a processing instruction.
	*
	*  @param target The processing instruction target.
	*  @param data The processing instruction data, or null if
	*         none was supplied.
	*  @throws org.xml.sax.SAXException Any SAX exception, possibly
	*             wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public override public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Receive notivication of a entityReference.
	*
	* @param name non-null reference to entity name string.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public @:final override public function entityReference(name : String) : Void;
	
	/**
	* @see ExtendedContentHandler#endElement(String)
	*/
	@:overload @:public @:final override public function endElement(elemName : String) : Void;
	
	/**
	* Process the attributes, which means to write out the currently
	* collected attributes to the writer. The attributes are not
	* cleared by this method
	*
	* @param writer the writer to write processed attributes to.
	* @param nAttrs the number of attributes in m_attributes
	* to be processed
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:public override public function processAttributes(writer : java.io.Writer, nAttrs : Int) : Void;
	
	/**
	* For the enclosing elements starting tag write out out any attributes
	* followed by ">"
	*
	*@throws org.xml.sax.SAXException
	*/
	@:overload @:protected override private function closeStartTag() : Void;
	
	/**
	* Initialize the serializer with the specified output stream and output
	* format. Must be called before calling any of the serialize methods.
	*
	* @param output The output stream to use
	* @param format The output format
	* @throws UnsupportedEncodingException The encoding specified   in the
	* output format is not supported
	*/
	@:overload @:protected @:synchronized private function init(output : java.io.OutputStream, format : java.util.Properties) : Void;
	
	/**
	* Specifies an output stream to which the document should be
	* serialized. This method should not be called while the
	* serializer is in the process of serializing a document.
	* <p>
	* The encoding specified in the output properties is used, or
	* if no encoding was specified, the default for the selected
	* output method.
	*
	* @param output The output stream
	*/
	@:overload @:public override public function setOutputStream(output : java.io.OutputStream) : Void;
	
	/**
	* This method is used when a prefix/uri namespace mapping
	* is indicated after the element was started with a
	* startElement() and before and endElement().
	* startPrefixMapping(prefix,uri) would be used before the
	* startElement() call.
	* @param uri the URI of the namespace
	* @param prefix the prefix associated with the given URI.
	*
	* @see ExtendedContentHandler#namespaceAfterStartElement(String, String)
	*/
	@:overload @:public override public function namespaceAfterStartElement(prefix : String, uri : String) : Void;
	
	@:overload @:public override public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Report the end of DTD declarations.
	* @throws org.xml.sax.SAXException The application may raise an exception.
	* @see #startDTD
	*/
	@:overload @:public override public function endDTD() : Void;
	
	/**
	* This method does nothing.
	*/
	@:overload @:public override public function attributeDecl(eName : String, aName : String, type : String, valueDefault : String, value : String) : Void;
	
	/**
	* This method does nothing.
	*/
	@:overload @:public override public function elementDecl(name : String, model : String) : Void;
	
	/**
	* This method does nothing.
	*/
	@:overload @:public override public function internalEntityDecl(name : String, value : String) : Void;
	
	/**
	* This method does nothing.
	*/
	@:overload @:public override public function externalEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
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
	@:overload @:public override public function addUniqueAttribute(name : String, value : String, flags : Int) : Void;
	
	@:overload @:public override public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function reset() : Bool;
	
	
}
@:native('com$sun$org$apache$xml$internal$serializer$ToHTMLStream$Trie') @:internal extern class ToHTMLStream_Trie
{
	/** Size of the m_nextChar array.  */
	@:public @:static @:final public static var ALPHA_SIZE(default, null) : Int;
	
	/**
	* Construct the trie that has a case insensitive search.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct the trie given the desired case sensitivity with the key.
	* @param lowerCaseOnly true if the search keys are to be loser case only,
	* not case insensitive.
	*/
	@:overload @:public public function new(lowerCaseOnly : Bool) : Void;
	
	/**
	* Put an object into the trie for lookup.
	*
	* @param key must be a 7-bit ASCII string
	* @param value any java object.
	*
	* @return The old object that matched key, or null.
	*/
	@:overload @:public public function put(key : String, value : Dynamic) : Dynamic;
	
	/**
	* Get an object that matches the key.
	*
	* @param key must be a 7-bit ASCII string
	*
	* @return The object that matches the key, or null.
	*/
	@:overload @:public public function get(key : String) : Dynamic;
	
	/**
	* Construct the trie from another Trie.
	* Both the existing Trie and this new one share the same table for
	* lookup, and it is assumed that the table is fully populated and
	* not changing anymore.
	*
	* @param existingTrie the Trie that this one is a copy of.
	*/
	@:overload @:public public function new(existingTrie : com.sun.org.apache.xml.internal.serializer.ToHTMLStream.ToHTMLStream_Trie) : Void;
	
	/**
	* Get an object that matches the key.
	* This method is faster than get(), but is not thread-safe.
	*
	* @param key must be a 7-bit ASCII string
	*
	* @return The object that matches the key, or null.
	*/
	@:overload @:public public function get2(key : String) : Dynamic;
	
	/**
	* Get the length of the longest key used in the table.
	*/
	@:overload @:public public function getLongestKeyLength() : Int;
	
	
}
/**
* The node representation for the trie.
* @xsl.usage internal
*/
@:native('com$sun$org$apache$xml$internal$serializer$ToHTMLStream$Trie$Node') @:internal extern class ToHTMLStream_Trie_Node
{
	
}
