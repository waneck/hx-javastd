package javax.xml.parsers;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class SAXParser
{
	/**
	* <p>Protected constructor to prevent instaniation.
	* Use {@link javax.xml.parsers.SAXParserFactory#newSAXParser()}.</p>
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* <p>Reset this <code>SAXParser</code> to its original configuration.</p>
	*
	* <p><code>SAXParser</code> is reset to the same state as when it was created with
	* {@link SAXParserFactory#newSAXParser()}.
	* <code>reset()</code> is designed to allow the reuse of existing <code>SAXParser</code>s
	* thus saving resources associated with the creation of new <code>SAXParser</code>s.</p>
	*
	* <p>The reset <code>SAXParser</code> is not guaranteed to have the same {@link Schema}
	* <code>Object</code>, e.g. {@link Object#equals(Object obj)}.  It is guaranteed to have a functionally equal
	* <code>Schema</code>.</p>
	*
	* @throws UnsupportedOperationException When Implementations do not
	*   override this method
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function reset() : Void;
	
	/**
	* <p>Parse the content of the given {@link java.io.InputStream}
	* instance as XML using the specified {@link org.xml.sax.HandlerBase}.
	* <i> Use of the DefaultHandler version of this method is recommended as
	* the HandlerBase class has been deprecated in SAX 2.0</i>.</p>
	*
	* @param is InputStream containing the content to be parsed.
	* @param hb The SAX HandlerBase to use.
	*
	* @throws IllegalArgumentException If the given InputStream is null.
	* @throws SAXException If parse produces a SAX error.
	* @throws IOException If an IO error occurs interacting with the
	*   <code>InputStream</code>.
	*
	* @see org.xml.sax.DocumentHandler
	*/
	@:overload @:public public function parse(is : java.io.InputStream, hb : org.xml.sax.HandlerBase) : Void;
	
	/**
	* <p>Parse the content of the given {@link java.io.InputStream}
	* instance as XML using the specified {@link org.xml.sax.HandlerBase}.
	* <i> Use of the DefaultHandler version of this method is recommended as
	* the HandlerBase class has been deprecated in SAX 2.0</i>.</p>
	*
	* @param is InputStream containing the content to be parsed.
	* @param hb The SAX HandlerBase to use.
	* @param systemId The systemId which is needed for resolving relative URIs.
	*
	* @throws IllegalArgumentException If the given <code>InputStream</code> is
	*   <code>null</code>.
	* @throws IOException If any IO error occurs interacting with the
	*   <code>InputStream</code>.
	* @throws SAXException If any SAX errors occur during processing.
	*
	* @see org.xml.sax.DocumentHandler version of this method instead.
	*/
	@:overload @:public public function parse(is : java.io.InputStream, hb : org.xml.sax.HandlerBase, systemId : String) : Void;
	
	/**
	* Parse the content of the given {@link java.io.InputStream}
	* instance as XML using the specified
	* {@link org.xml.sax.helpers.DefaultHandler}.
	*
	* @param is InputStream containing the content to be parsed.
	* @param dh The SAX DefaultHandler to use.
	*
	* @throws IllegalArgumentException If the given InputStream is null.
	* @throws IOException If any IO errors occur.
	* @throws SAXException If any SAX errors occur during processing.
	*
	* @see org.xml.sax.DocumentHandler
	*/
	@:overload @:public public function parse(is : java.io.InputStream, dh : org.xml.sax.helpers.DefaultHandler) : Void;
	
	/**
	* Parse the content of the given {@link java.io.InputStream}
	* instance as XML using the specified
	* {@link org.xml.sax.helpers.DefaultHandler}.
	*
	* @param is InputStream containing the content to be parsed.
	* @param dh The SAX DefaultHandler to use.
	* @param systemId The systemId which is needed for resolving relative URIs.
	*
	* @throws IllegalArgumentException If the given InputStream is null.
	* @throws IOException If any IO errors occur.
	* @throws SAXException If any SAX errors occur during processing.
	*
	* @see org.xml.sax.DocumentHandler version of this method instead.
	*/
	@:overload @:public public function parse(is : java.io.InputStream, dh : org.xml.sax.helpers.DefaultHandler, systemId : String) : Void;
	
	/**
	* Parse the content described by the giving Uniform Resource
	* Identifier (URI) as XML using the specified
	* {@link org.xml.sax.HandlerBase}.
	* <i> Use of the DefaultHandler version of this method is recommended as
	* the <code>HandlerBase</code> class has been deprecated in SAX 2.0</i>
	*
	* @param uri The location of the content to be parsed.
	* @param hb The SAX HandlerBase to use.
	*
	* @throws IllegalArgumentException If the uri is null.
	* @throws IOException If any IO errors occur.
	* @throws SAXException If any SAX errors occur during processing.
	*
	* @see org.xml.sax.DocumentHandler
	*/
	@:overload @:public public function parse(uri : String, hb : org.xml.sax.HandlerBase) : Void;
	
	/**
	* Parse the content described by the giving Uniform Resource
	* Identifier (URI) as XML using the specified
	* {@link org.xml.sax.helpers.DefaultHandler}.
	*
	* @param uri The location of the content to be parsed.
	* @param dh The SAX DefaultHandler to use.
	*
	* @throws IllegalArgumentException If the uri is null.
	* @throws IOException If any IO errors occur.
	* @throws SAXException If any SAX errors occur during processing.
	*
	* @see org.xml.sax.DocumentHandler
	*/
	@:overload @:public public function parse(uri : String, dh : org.xml.sax.helpers.DefaultHandler) : Void;
	
	/**
	* Parse the content of the file specified as XML using the
	* specified {@link org.xml.sax.HandlerBase}.
	* <i> Use of the DefaultHandler version of this method is recommended as
	* the HandlerBase class has been deprecated in SAX 2.0</i>
	*
	* @param f The file containing the XML to parse
	* @param hb The SAX HandlerBase to use.
	*
	* @throws IllegalArgumentException If the File object is null.
	* @throws IOException If any IO errors occur.
	* @throws SAXException If any SAX errors occur during processing.
	*
	* @see org.xml.sax.DocumentHandler
	*/
	@:overload @:public public function parse(f : java.io.File, hb : org.xml.sax.HandlerBase) : Void;
	
	/**
	* Parse the content of the file specified as XML using the
	* specified {@link org.xml.sax.helpers.DefaultHandler}.
	*
	* @param f The file containing the XML to parse
	* @param dh The SAX DefaultHandler to use.
	*
	* @throws IllegalArgumentException If the File object is null.
	* @throws IOException If any IO errors occur.
	* @throws SAXException If any SAX errors occur during processing.
	*
	* @see org.xml.sax.DocumentHandler
	*/
	@:overload @:public public function parse(f : java.io.File, dh : org.xml.sax.helpers.DefaultHandler) : Void;
	
	/**
	* Parse the content given {@link org.xml.sax.InputSource}
	* as XML using the specified
	* {@link org.xml.sax.HandlerBase}.
	* <i> Use of the DefaultHandler version of this method is recommended as
	* the HandlerBase class has been deprecated in SAX 2.0</i>
	*
	* @param is The InputSource containing the content to be parsed.
	* @param hb The SAX HandlerBase to use.
	*
	* @throws IllegalArgumentException If the <code>InputSource</code> object
	*   is <code>null</code>.
	* @throws IOException If any IO errors occur.
	* @throws SAXException If any SAX errors occur during processing.
	*
	* @see org.xml.sax.DocumentHandler
	*/
	@:overload @:public public function parse(is : org.xml.sax.InputSource, hb : org.xml.sax.HandlerBase) : Void;
	
	/**
	* Parse the content given {@link org.xml.sax.InputSource}
	* as XML using the specified
	* {@link org.xml.sax.helpers.DefaultHandler}.
	*
	* @param is The InputSource containing the content to be parsed.
	* @param dh The SAX DefaultHandler to use.
	*
	* @throws IllegalArgumentException If the <code>InputSource</code> object
	*   is <code>null</code>.
	* @throws IOException If any IO errors occur.
	* @throws SAXException If any SAX errors occur during processing.
	*
	* @see org.xml.sax.DocumentHandler
	*/
	@:overload @:public public function parse(is : org.xml.sax.InputSource, dh : org.xml.sax.helpers.DefaultHandler) : Void;
	
	/**
	* Returns the SAX parser that is encapsultated by the
	* implementation of this class.
	*
	* @return The SAX parser that is encapsultated by the
	*         implementation of this class.
	*
	* @throws SAXException If any SAX errors occur during processing.
	*/
	@:overload @:public @:abstract public function getParser() : org.xml.sax.Parser;
	
	/**
	* Returns the {@link org.xml.sax.XMLReader} that is encapsulated by the
	* implementation of this class.
	*
	* @return The XMLReader that is encapsulated by the
	*         implementation of this class.
	*
	* @throws SAXException If any SAX errors occur during processing.
	*/
	@:overload @:public @:abstract public function getXMLReader() : org.xml.sax.XMLReader;
	
	/**
	* Indicates whether or not this parser is configured to
	* understand namespaces.
	*
	* @return true if this parser is configured to
	*         understand namespaces; false otherwise.
	*/
	@:overload @:public @:abstract public function isNamespaceAware() : Bool;
	
	/**
	* Indicates whether or not this parser is configured to
	* validate XML documents.
	*
	* @return true if this parser is configured to
	*         validate XML documents; false otherwise.
	*/
	@:overload @:public @:abstract public function isValidating() : Bool;
	
	/**
	* <p>Sets the particular property in the underlying implementation of
	* {@link org.xml.sax.XMLReader}.
	* A list of the core features and properties can be found at
	* <a href="http://sax.sourceforge.net/?selected=get-set">
	* http://sax.sourceforge.net/?selected=get-set</a>.</p>
	*
	* @param name The name of the property to be set.
	* @param value The value of the property to be set.
	*
	* @throws SAXNotRecognizedException When the underlying XMLReader does
	*   not recognize the property name.
	* @throws SAXNotSupportedException When the underlying XMLReader
	*  recognizes the property name but doesn't support the property.
	*
	* @see org.xml.sax.XMLReader#setProperty
	*/
	@:overload @:public @:abstract public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* <p>Returns the particular property requested for in the underlying
	* implementation of {@link org.xml.sax.XMLReader}.</p>
	*
	* @param name The name of the property to be retrieved.
	* @return Value of the requested property.
	*
	* @throws SAXNotRecognizedException When the underlying XMLReader does
	*    not recognize the property name.
	* @throws SAXNotSupportedException When the underlying XMLReader
	*  recognizes the property name but doesn't support the property.
	*
	* @see org.xml.sax.XMLReader#getProperty
	*/
	@:overload @:public @:abstract public function getProperty(name : String) : Dynamic;
	
	/** <p>Get a reference to the the {@link Schema} being used by
	* the XML processor.</p>
	*
	* <p>If no schema is being used, <code>null</code> is returned.</p>
	*
	* @return {@link Schema} being used or <code>null</code>
	*  if none in use
	*
	* @throws UnsupportedOperationException When implementation does not
	*   override this method
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getSchema() : javax.xml.validation.Schema;
	
	/**
	* <p>Get the XInclude processing mode for this parser.</p>
	*
	* @return
	*      the return value of
	*      the {@link SAXParserFactory#isXIncludeAware()}
	*      when this parser was created from factory.
	*
	* @throws UnsupportedOperationException When implementation does not
	*   override this method
	*
	* @since 1.5
	*
	* @see SAXParserFactory#setXIncludeAware(boolean)
	*/
	@:require(java5) @:overload @:public public function isXIncludeAware() : Bool;
	
	
}
