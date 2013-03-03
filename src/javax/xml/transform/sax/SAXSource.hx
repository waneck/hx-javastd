package javax.xml.transform.sax;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SAXSource implements javax.xml.transform.Source
{
	/**
	* If {@link javax.xml.transform.TransformerFactory#getFeature}
	* returns true when passed this value as an argument,
	* the Transformer supports Source input of this type.
	*/
	@:public @:static @:final public static var FEATURE(default, null) : String;
	
	/**
	* <p>Zero-argument default constructor.  If this constructor is used, and
	* no SAX source is set using
	* {@link #setInputSource(InputSource inputSource)} , then the
	* <code>Transformer</code> will
	* create an empty source {@link org.xml.sax.InputSource} using
	* {@link org.xml.sax.InputSource#InputSource() new InputSource()}.</p>
	*
	* @see javax.xml.transform.Transformer#transform(Source xmlSource, Result outputTarget)
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create a <code>SAXSource</code>, using an {@link org.xml.sax.XMLReader}
	* and a SAX InputSource. The {@link javax.xml.transform.Transformer}
	* or {@link javax.xml.transform.sax.SAXTransformerFactory} will set itself
	* to be the reader's {@link org.xml.sax.ContentHandler}, and then will call
	* reader.parse(inputSource).
	*
	* @param reader An XMLReader to be used for the parse.
	* @param inputSource A SAX input source reference that must be non-null
	* and that will be passed to the reader parse method.
	*/
	@:overload @:public public function new(reader : org.xml.sax.XMLReader, inputSource : org.xml.sax.InputSource) : Void;
	
	/**
	* Create a <code>SAXSource</code>, using a SAX <code>InputSource</code>.
	* The {@link javax.xml.transform.Transformer} or
	* {@link javax.xml.transform.sax.SAXTransformerFactory} creates a
	* reader via {@link org.xml.sax.helpers.XMLReaderFactory}
	* (if setXMLReader is not used), sets itself as
	* the reader's {@link org.xml.sax.ContentHandler}, and calls
	* reader.parse(inputSource).
	*
	* @param inputSource An input source reference that must be non-null
	* and that will be passed to the parse method of the reader.
	*/
	@:overload @:public public function new(inputSource : org.xml.sax.InputSource) : Void;
	
	/**
	* Set the XMLReader to be used for the Source.
	*
	* @param reader A valid XMLReader or XMLFilter reference.
	*/
	@:overload @:public public function setXMLReader(reader : org.xml.sax.XMLReader) : Void;
	
	/**
	* Get the XMLReader to be used for the Source.
	*
	* @return A valid XMLReader or XMLFilter reference, or null.
	*/
	@:overload @:public public function getXMLReader() : org.xml.sax.XMLReader;
	
	/**
	* Set the SAX InputSource to be used for the Source.
	*
	* @param inputSource A valid InputSource reference.
	*/
	@:overload @:public public function setInputSource(inputSource : org.xml.sax.InputSource) : Void;
	
	/**
	* Get the SAX InputSource to be used for the Source.
	*
	* @return A valid InputSource reference, or null.
	*/
	@:overload @:public public function getInputSource() : org.xml.sax.InputSource;
	
	/**
	* Set the system identifier for this Source.  If an input source
	* has already been set, it will set the system ID or that
	* input source, otherwise it will create a new input source.
	*
	* <p>The system identifier is optional if there is a byte stream
	* or a character stream, but it is still useful to provide one,
	* since the application can use it to resolve relative URIs
	* and can include it in error messages and warnings (the parser
	* will attempt to open a connection to the URI only if
	* no byte stream or character stream is specified).</p>
	*
	* @param systemId The system identifier as a URI string.
	*/
	@:overload @:public public function setSystemId(systemId : String) : Void;
	
	/**
	* <p>Get the base ID (URI or system ID) from where URIs
	* will be resolved.</p>
	*
	* @return Base URL for the <code>Source</code>, or <code>null</code>.
	*/
	@:overload @:public public function getSystemId() : String;
	
	/**
	* Attempt to obtain a SAX InputSource object from a Source
	* object.
	*
	* @param source Must be a non-null Source reference.
	*
	* @return An InputSource, or null if Source can not be converted.
	*/
	@:overload @:public @:static public static function sourceToInputSource(source : javax.xml.transform.Source) : org.xml.sax.InputSource;
	
	
}
