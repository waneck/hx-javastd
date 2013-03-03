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
//// Aug 21, 2000:
////  Added ability to omit DOCTYPE declaration.
////  Reported by Lars Martin <lars@smb-tec.com>
//// Aug 25, 2000:
////  Added ability to omit comments.
////  Contributed by Anupam Bagchi <abagchi@jtcsv.com>
extern class OutputFormat
{
	/**
	* Constructs a new output format with the default values.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new output format with the default values for
	* the specified method and encoding. If <tt>indent</tt>
	* is true, the document will be pretty printed with the default
	* indentation level and default line wrapping.
	*
	* @param method The specified output method
	* @param encoding The specified encoding
	* @param indenting True for pretty printing
	* @see #setEncoding
	* @see #setIndenting
	* @see #setMethod
	*/
	@:overload @:public public function new(method : String, encoding : String, indenting : Bool) : Void;
	
	/**
	* Constructs a new output format with the proper method,
	* document type identifiers and media type for the specified
	* document.
	*
	* @param doc The document to output
	* @see #whichMethod
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Constructs a new output format with the proper method,
	* document type identifiers and media type for the specified
	* document, and with the specified encoding. If <tt>indent</tt>
	* is true, the document will be pretty printed with the default
	* indentation level and default line wrapping.
	*
	* @param doc The document to output
	* @param encoding The specified encoding
	* @param indenting True for pretty printing
	* @see #setEncoding
	* @see #setIndenting
	* @see #whichMethod
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, encoding : String, indenting : Bool) : Void;
	
	/**
	* Returns the method specified for this output format.
	* Typically the method will be <tt>xml</tt>, <tt>html</tt>
	* or <tt>text</tt>, but it might be other values.
	* If no method was specified, null will be returned
	* and the most suitable method will be determined for
	* the document by calling {@link #whichMethod}.
	*
	* @return The specified output method, or null
	*/
	@:overload @:public public function getMethod() : String;
	
	/**
	* Sets the method for this output format.
	*
	* @see #getMethod
	* @param method The output method, or null
	*/
	@:overload @:public public function setMethod(method : String) : Void;
	
	/**
	* Returns the version for this output method.
	* If no version was specified, will return null
	* and the default version number will be used.
	* If the serializerr does not support that particular
	* version, it should default to a supported version.
	*
	* @return The specified method version, or null
	*/
	@:overload @:public public function getVersion() : String;
	
	/**
	* Sets the version for this output method.
	* For XML the value would be "1.0", for HTML
	* it would be "4.0".
	*
	* @see #getVersion
	* @param version The output method version, or null
	*/
	@:overload @:public public function setVersion(version : String) : Void;
	
	/**
	* Returns the indentation specified. If no indentation
	* was specified, zero is returned and the document
	* should not be indented.
	*
	* @return The indentation or zero
	* @see #setIndenting
	*/
	@:overload @:public public function getIndent() : Int;
	
	/**
	* Returns true if indentation was specified.
	*/
	@:overload @:public public function getIndenting() : Bool;
	
	/**
	* Sets the indentation. The document will not be
	* indented if the indentation is set to zero.
	* Calling {@link #setIndenting} will reset this
	* value to zero (off) or the default (on).
	*
	* @param indent The indentation, or zero
	*/
	@:overload @:public public function setIndent(indent : Int) : Void;
	
	/**
	* Sets the indentation on and off. When set on, the default
	* indentation level and default line wrapping is used
	* (see {@link Defaults#Indent} and {@link Defaults#LineWidth}).
	* To specify a different indentation level or line wrapping,
	* use {@link #setIndent} and {@link #setLineWidth}.
	*
	* @param on True if indentation should be on
	*/
	@:overload @:public public function setIndenting(on : Bool) : Void;
	
	/**
	* Returns the specified encoding. If no encoding was
	* specified, the default is always "UTF-8".
	*
	* @return The encoding
	*/
	@:overload @:public public function getEncoding() : String;
	
	/**
	* Sets the encoding for this output method. If no
	* encoding was specified, the default is always "UTF-8".
	* Make sure the encoding is compatible with the one
	* used by the {@link java.io.Writer}.
	*
	* @see #getEncoding
	* @param encoding The encoding, or null
	*/
	@:overload @:public public function setEncoding(encoding : String) : Void;
	
	/**
	* Sets the encoding for this output method with an <code>EncodingInfo</code>
	* instance.
	*/
	@:overload @:public public function setEncoding(encInfo : com.sun.org.apache.xml.internal.serialize.EncodingInfo) : Void;
	
	/**
	* Returns an <code>EncodingInfo<code> instance for the encoding.
	*
	* @see #setEncoding
	*/
	@:overload @:public public function getEncodingInfo() : com.sun.org.apache.xml.internal.serialize.EncodingInfo;
	
	/**
	* Sets whether java encoding names are permitted
	*/
	@:overload @:public public function setAllowJavaNames(allow : Bool) : Void;
	
	/**
	* Returns whether java encoding names are permitted
	*/
	@:overload @:public public function setAllowJavaNames() : Bool;
	
	/**
	* Returns the specified media type, or null.
	* To determine the media type based on the
	* document type, use {@link #whichMediaType}.
	*
	* @return The specified media type, or null
	*/
	@:overload @:public public function getMediaType() : String;
	
	/**
	* Sets the media type.
	*
	* @see #getMediaType
	* @param mediaType The specified media type
	*/
	@:overload @:public public function setMediaType(mediaType : String) : Void;
	
	/**
	* Sets the document type public and system identifiers.
	* Required only if the DOM Document or SAX events do not
	* specify the document type, and one must be present in
	* the serialized document. Any document type specified
	* by the DOM Document or SAX events will override these
	* values.
	*
	* @param publicId The public identifier, or null
	* @param systemId The system identifier, or null
	*/
	@:overload @:public public function setDoctype(publicId : String, systemId : String) : Void;
	
	/**
	* Returns the specified document type public identifier,
	* or null.
	*/
	@:overload @:public public function getDoctypePublic() : String;
	
	/**
	* Returns the specified document type system identifier,
	* or null.
	*/
	@:overload @:public public function getDoctypeSystem() : String;
	
	/**
	* Returns true if comments should be ommited.
	* The default is false.
	*/
	@:overload @:public public function getOmitComments() : Bool;
	
	/**
	* Sets comment omitting on and off.
	*
	* @param omit True if comments should be ommited
	*/
	@:overload @:public public function setOmitComments(omit : Bool) : Void;
	
	/**
	* Returns true if the DOCTYPE declaration should
	* be ommited. The default is false.
	*/
	@:overload @:public public function getOmitDocumentType() : Bool;
	
	/**
	* Sets DOCTYPE declaration omitting on and off.
	*
	* @param omit True if DOCTYPE declaration should be ommited
	*/
	@:overload @:public public function setOmitDocumentType(omit : Bool) : Void;
	
	/**
	* Returns true if the XML document declaration should
	* be ommited. The default is false.
	*/
	@:overload @:public public function getOmitXMLDeclaration() : Bool;
	
	/**
	* Sets XML declaration omitting on and off.
	*
	* @param omit True if XML declaration should be ommited
	*/
	@:overload @:public public function setOmitXMLDeclaration(omit : Bool) : Void;
	
	/**
	* Returns true if the document type is standalone.
	* The default is false.
	*/
	@:overload @:public public function getStandalone() : Bool;
	
	/**
	* Sets document DTD standalone. The public and system
	* identifiers must be null for the document to be
	* serialized as standalone.
	*
	* @param standalone True if document DTD is standalone
	*/
	@:overload @:public public function setStandalone(standalone : Bool) : Void;
	
	/**
	* Returns a list of all the elements whose text node children
	* should be output as CDATA, or null if no such elements were
	* specified.
	*/
	@:overload @:public public function getCDataElements() : java.NativeArray<String>;
	
	/**
	* Returns true if the text node children of the given elements
	* should be output as CDATA.
	*
	* @param tagName The element's tag name
	* @return True if should serialize as CDATA
	*/
	@:overload @:public public function isCDataElement(tagName : String) : Bool;
	
	/**
	* Sets the list of elements for which text node children
	* should be output as CDATA.
	*
	* @param cdataElements List of CDATA element tag names
	*/
	@:overload @:public public function setCDataElements(cdataElements : java.NativeArray<String>) : Void;
	
	/**
	* Returns a list of all the elements whose text node children
	* should be output unescaped (no character references), or null
	* if no such elements were specified.
	*/
	@:overload @:public public function getNonEscapingElements() : java.NativeArray<String>;
	
	/**
	* Returns true if the text node children of the given elements
	* should be output unescaped.
	*
	* @param tagName The element's tag name
	* @return True if should serialize unescaped
	*/
	@:overload @:public public function isNonEscapingElement(tagName : String) : Bool;
	
	/**
	* Sets the list of elements for which text node children
	* should be output unescaped (no character references).
	*
	* @param nonEscapingElements List of unescaped element tag names
	*/
	@:overload @:public public function setNonEscapingElements(nonEscapingElements : java.NativeArray<String>) : Void;
	
	/**
	* Returns a specific line separator to use. The default is the
	* Web line separator (<tt>\n</tt>). A string is returned to
	* support double codes (CR + LF).
	*
	* @return The specified line separator
	*/
	@:overload @:public public function getLineSeparator() : String;
	
	/**
	* Sets the line separator. The default is the Web line separator
	* (<tt>\n</tt>). The machine's line separator can be obtained
	* from the system property <tt>line.separator</tt>, but is only
	* useful if the document is edited on machines of the same type.
	* For general documents, use the Web line separator.
	*
	* @param lineSeparator The specified line separator
	*/
	@:overload @:public public function setLineSeparator(lineSeparator : String) : Void;
	
	/**
	* Returns true if the default behavior for this format is to
	* preserve spaces. All elements that do not specify otherwise
	* or specify the default behavior will be formatted based on
	* this rule. All elements that specify space preserving will
	* always preserve space.
	*/
	@:overload @:public public function getPreserveSpace() : Bool;
	
	/**
	* Sets space preserving as the default behavior. The default is
	* space stripping and all elements that do not specify otherwise
	* or use the default value will not preserve spaces.
	*
	* @param preserve True if spaces should be preserved
	*/
	@:overload @:public public function setPreserveSpace(preserve : Bool) : Void;
	
	/**
	* Return the selected line width for breaking up long lines.
	* When indenting, and only when indenting, long lines will be
	* broken at space boundaries based on this line width.
	* No line wrapping occurs if this value is zero.
	*/
	@:overload @:public public function getLineWidth() : Int;
	
	/**
	* Sets the line width. If zero then no line wrapping will
	* occur. Calling {@link #setIndenting} will reset this
	* value to zero (off) or the default (on).
	*
	* @param lineWidth The line width to use, zero for default
	* @see #getLineWidth
	* @see #setIndenting
	*/
	@:overload @:public public function setLineWidth(lineWidth : Int) : Void;
	
	/**
	* Returns the preserveEmptyAttribute flag. If flag is false, then'
	* attributes with empty string values are output as the attribute
	* name only (in HTML mode).
	* @return preserve the preserve flag
	*/
	@:overload @:public public function getPreserveEmptyAttributes() : Bool;
	
	/**
	* Sets the preserveEmptyAttribute flag. If flag is false, then'
	* attributes with empty string values are output as the attribute
	* name only (in HTML mode).
	* @param preserve the preserve flag
	*/
	@:overload @:public public function setPreserveEmptyAttributes(preserve : Bool) : Void;
	
	/**
	* Returns the last printable character based on the selected
	* encoding. Control characters and non-printable characters
	* are always printed as character references.
	*/
	@:overload @:public public function getLastPrintable() : java.StdTypes.Char16;
	
	/**
	* Determine the output method for the specified document.
	* If the document is an instance of {@link org.w3c.dom.html.HTMLDocument}
	* then the method is said to be <tt>html</tt>. If the root
	* element is 'html' and all text nodes preceding the root
	* element are all whitespace, then the method is said to be
	* <tt>html</tt>. Otherwise the method is <tt>xml</tt>.
	*
	* @param doc The document to check
	* @return The suitable method
	*/
	@:overload @:public @:static public static function whichMethod(doc : org.w3c.dom.Document) : String;
	
	/**
	* Returns the document type public identifier
	* specified for this document, or null.
	*/
	@:overload @:public @:static public static function whichDoctypePublic(doc : org.w3c.dom.Document) : String;
	
	/**
	* Returns the document type system identifier
	* specified for this document, or null.
	*/
	@:overload @:public @:static public static function whichDoctypeSystem(doc : org.w3c.dom.Document) : String;
	
	/**
	* Returns the suitable media format for a document
	* output with the specified method.
	*/
	@:overload @:public @:static public static function whichMediaType(method : String) : String;
	
	
}
/**
* Specifies an output format to control the serializer. Based on the
* XSLT specification for output format, plus additional parameters.
* Used to select the suitable serializer and determine how the
* document should be formatted on output.
* <p>
* The two interesting constructors are:
* <ul>
* <li>{@link #OutputFormat(String,String,boolean)} creates a format
*  for the specified method (XML, HTML, Text, etc), encoding and indentation
* <li>{@link #OutputFormat(Document,String,boolean)} creates a format
*  compatible with the document type (XML, HTML, Text, etc), encoding and
*  indentation
* </ul>
*
*
* @author <a href="mailto:arkin@intalio.com">Assaf Arkin</a>
*         <a href="mailto:visco@intalio.com">Keith Visco</a>
* @see Serializer
* @see Method
* @see LineSeparator
*/
@:native('com$sun$org$apache$xml$internal$serialize$OutputFormat$DTD') extern class OutputFormat_DTD
{
	/**
	* Public identifier for HTML 4.01 (Strict) document type.
	*/
	@:public @:static @:final public static var HTMLPublicId(default, null) : String;
	
	/**
	* System identifier for HTML 4.01 (Strict) document type.
	*/
	@:public @:static @:final public static var HTMLSystemId(default, null) : String;
	
	/**
	* Public identifier for XHTML 1.0 (Strict) document type.
	*/
	@:public @:static @:final public static var XHTMLPublicId(default, null) : String;
	
	/**
	* System identifier for XHTML 1.0 (Strict) document type.
	*/
	@:public @:static @:final public static var XHTMLSystemId(default, null) : String;
	
	
}
@:native('com$sun$org$apache$xml$internal$serialize$OutputFormat$Defaults') extern class OutputFormat_Defaults
{
	/**
	* If indentation is turned on, the default identation
	* level is 4.
	*
	* @see #setIndenting(boolean)
	*/
	@:public @:static @:final public static var Indent(default, null) : Int;
	
	/**
	* The default encoding for Web documents it UTF-8.
	*
	* @see #getEncoding()
	*/
	@:public @:static @:final public static var Encoding(default, null) : String;
	
	/**
	* The default line width at which to break long lines
	* when identing. This is set to 72.
	*/
	@:public @:static @:final public static var LineWidth(default, null) : Int;
	
	
}
