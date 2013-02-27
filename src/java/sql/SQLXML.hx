package java.sql;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface SQLXML
{
	/**
	* This method closes this object and releases the resources that it held.
	* The SQL XML object becomes invalid and neither readable or writeable
	* when this method is called.
	*
	* After <code>free</code> has been called, any attempt to invoke a
	* method other than <code>free</code> will result in a <code>SQLException</code>
	* being thrown.  If <code>free</code> is called multiple times, the subsequent
	* calls to <code>free</code> are treated as a no-op.
	* @throws SQLException if there is an error freeing the XML value.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function free() : Void;
	
	/**
	* Retrieves the XML value designated by this SQLXML instance as a stream.
	* The bytes of the input stream are interpreted according to appendix F of the XML 1.0 specification.
	* The behavior of this method is the same as ResultSet.getBinaryStream()
	* when the designated column of the ResultSet has a type java.sql.Types of SQLXML.
	* <p>
	* The SQL XML object becomes not readable when this method is called and
	* may also become not writable depending on implementation.
	*
	* @return a stream containing the XML data.
	* @throws SQLException if there is an error processing the XML value.
	*   An exception is thrown if the state is not readable.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getBinaryStream() : java.io.InputStream;
	
	/**
	* Retrieves a stream that can be used to write the XML value that this SQLXML instance represents.
	* The stream begins at position 0.
	* The bytes of the stream are interpreted according to appendix F of the XML 1.0 specification
	* The behavior of this method is the same as ResultSet.updateBinaryStream()
	* when the designated column of the ResultSet has a type java.sql.Types of SQLXML.
	* <p>
	* The SQL XML object becomes not writeable when this method is called and
	* may also become not readable depending on implementation.
	*
	* @return a stream to which data can be written.
	* @throws SQLException if there is an error processing the XML value.
	*   An exception is thrown if the state is not writable.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function setBinaryStream() : java.io.OutputStream;
	
	/**
	* Retrieves the XML value designated by this SQLXML instance as a java.io.Reader object.
	* The format of this stream is defined by org.xml.sax.InputSource,
	* where the characters in the stream represent the unicode code points for
	* XML according to section 2 and appendix B of the XML 1.0 specification.
	* Although an encoding declaration other than unicode may be present,
	* the encoding of the stream is unicode.
	* The behavior of this method is the same as ResultSet.getCharacterStream()
	* when the designated column of the ResultSet has a type java.sql.Types of SQLXML.
	* <p>
	* The SQL XML object becomes not readable when this method is called and
	* may also become not writable depending on implementation.
	*
	* @return a stream containing the XML data.
	* @throws SQLException if there is an error processing the XML value.
	*   The getCause() method of the exception may provide a more detailed exception, for example,
	*   if the stream does not contain valid characters.
	*   An exception is thrown if the state is not readable.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getCharacterStream() : java.io.Reader;
	
	/**
	* Retrieves a stream to be used to write the XML value that this SQLXML instance represents.
	* The format of this stream is defined by org.xml.sax.InputSource,
	* where the characters in the stream represent the unicode code points for
	* XML according to section 2 and appendix B of the XML 1.0 specification.
	* Although an encoding declaration other than unicode may be present,
	* the encoding of the stream is unicode.
	* The behavior of this method is the same as ResultSet.updateCharacterStream()
	* when the designated column of the ResultSet has a type java.sql.Types of SQLXML.
	* <p>
	* The SQL XML object becomes not writeable when this method is called and
	* may also become not readable depending on implementation.
	*
	* @return a stream to which data can be written.
	* @throws SQLException if there is an error processing the XML value.
	*   The getCause() method of the exception may provide a more detailed exception, for example,
	*   if the stream does not contain valid characters.
	*   An exception is thrown if the state is not writable.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function setCharacterStream() : java.io.Writer;
	
	/**
	* Returns a string representation of the XML value designated by this SQLXML instance.
	* The format of this String is defined by org.xml.sax.InputSource,
	* where the characters in the stream represent the unicode code points for
	* XML according to section 2 and appendix B of the XML 1.0 specification.
	* Although an encoding declaration other than unicode may be present,
	* the encoding of the String is unicode.
	* The behavior of this method is the same as ResultSet.getString()
	* when the designated column of the ResultSet has a type java.sql.Types of SQLXML.
	* <p>
	* The SQL XML object becomes not readable when this method is called and
	* may also become not writable depending on implementation.
	*
	* @return a string representation of the XML value designated by this SQLXML instance.
	* @throws SQLException if there is an error processing the XML value.
	*   The getCause() method of the exception may provide a more detailed exception, for example,
	*   if the stream does not contain valid characters.
	*   An exception is thrown if the state is not readable.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getString() : String;
	
	/**
	* Sets the XML value designated by this SQLXML instance to the given String representation.
	* The format of this String is defined by org.xml.sax.InputSource,
	* where the characters in the stream represent the unicode code points for
	* XML according to section 2 and appendix B of the XML 1.0 specification.
	* Although an encoding declaration other than unicode may be present,
	* the encoding of the String is unicode.
	* The behavior of this method is the same as ResultSet.updateString()
	* when the designated column of the ResultSet has a type java.sql.Types of SQLXML.
	* <p>
	* The SQL XML object becomes not writeable when this method is called and
	* may also become not readable depending on implementation.
	*
	* @param value the XML value
	* @throws SQLException if there is an error processing the XML value.
	*   The getCause() method of the exception may provide a more detailed exception, for example,
	*   if the stream does not contain valid characters.
	*   An exception is thrown if the state is not writable.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function setString(value : String) : Void;
	
	/**
	* Returns a Source for reading the XML value designated by this SQLXML instance.
	* Sources are used as inputs to XML parsers and XSLT transformers.
	* <p>
	* Sources for XML parsers will have namespace processing on by default.
	* The systemID of the Source is implementation dependent.
	* <p>
	* The SQL XML object becomes not readable when this method is called and
	* may also become not writable depending on implementation.
	* <p>
	* Note that SAX is a callback architecture, so a returned
	* SAXSource should then be set with a content handler that will
	* receive the SAX events from parsing.  The content handler
	* will receive callbacks based on the contents of the XML.
	* <pre>
	*   SAXSource saxSource = sqlxml.getSource(SAXSource.class);
	*   XMLReader xmlReader = saxSource.getXMLReader();
	*   xmlReader.setContentHandler(myHandler);
	*   xmlReader.parse(saxSource.getInputSource());
	* </pre>
	*
	* @param sourceClass The class of the source, or null.
	* If the class is null, a vendor specifc Source implementation will be returned.
	* The following classes are supported at a minimum:
	* <pre>
	*   javax.xml.transform.dom.DOMSource - returns a DOMSource
	*   javax.xml.transform.sax.SAXSource - returns a SAXSource
	*   javax.xml.transform.stax.StAXSource - returns a StAXSource
	*   javax.xml.transform.stream.StreamSource - returns a StreamSource
	* </pre>
	* @return a Source for reading the XML value.
	* @throws SQLException if there is an error processing the XML value
	*   or if this feature is not supported.
	*   The getCause() method of the exception may provide a more detailed exception, for example,
	*   if an XML parser exception occurs.
	*   An exception is thrown if the state is not readable.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getSource<T : javax.xml.transform.Source>(sourceClass : Class<T>) : T;
	
	/**
	* Returns a Result for setting the XML value designated by this SQLXML instance.
	* <p>
	* The systemID of the Result is implementation dependent.
	* <p>
	* The SQL XML object becomes not writeable when this method is called and
	* may also become not readable depending on implementation.
	* <p>
	* Note that SAX is a callback architecture and the returned
	* SAXResult has a content handler assigned that will receive the
	* SAX events based on the contents of the XML.  Call the content
	* handler with the contents of the XML document to assign the values.
	* <pre>
	*   SAXResult saxResult = sqlxml.setResult(SAXResult.class);
	*   ContentHandler contentHandler = saxResult.getXMLReader().getContentHandler();
	*   contentHandler.startDocument();
	*   // set the XML elements and attributes into the result
	*   contentHandler.endDocument();
	* </pre>
	*
	* @param resultClass The class of the result, or null.
	* If resultClass is null, a vendor specific Result implementation will be returned.
	* The following classes are supported at a minimum:
	* <pre>
	*   javax.xml.transform.dom.DOMResult - returns a DOMResult
	*   javax.xml.transform.sax.SAXResult - returns a SAXResult
	*   javax.xml.transform.stax.StAXResult - returns a StAXResult
	*   javax.xml.transform.stream.StreamResult - returns a StreamResult
	* </pre>
	* @return Returns a Result for setting the XML value.
	* @throws SQLException if there is an error processing the XML value
	*   or if this feature is not supported.
	*   The getCause() method of the exception may provide a more detailed exception, for example,
	*   if an XML parser exception occurs.
	*   An exception is thrown if the state is not writable.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function setResult<T : javax.xml.transform.Result>(resultClass : Class<T>) : T;
	
	
}
