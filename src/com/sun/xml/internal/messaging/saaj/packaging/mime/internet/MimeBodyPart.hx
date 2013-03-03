package com.sun.xml.internal.messaging.saaj.packaging.mime.internet;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* @(#)MimeBodyPart.java      1.52 03/02/12
*/
extern class MimeBodyPart
{
	/**
	* This part should be presented as an attachment.
	* @see #getDisposition
	* @see #setDisposition
	*/
	@:public @:static @:final public static var ATTACHMENT(default, null) : String;
	
	/**
	* This part should be presented inline.
	* @see #getDisposition
	* @see #setDisposition
	*/
	@:public @:static @:final public static var INLINE(default, null) : String;
	
	/**
	* An empty MimeBodyPart object is created.
	* This body part maybe filled in by a client constructing a multipart
	* message.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a MimeBodyPart by reading and parsing the data from
	* the specified input stream. The parser consumes data till the end
	* of the given input stream.  The input stream must start at the
	* beginning of a valid MIME body part and must terminate at the end
	* of that body part. <p>
	*
	* Note that the "boundary" string that delimits body parts must
	* <strong>not</strong> be included in the input stream. The intention
	* is that the MimeMultipart parser will extract each body part's bytes
	* from a multipart stream and feed them into this constructor, without
	* the delimiter strings.
	*
	* @param   is      the body part Input Stream
	*/
	@:overload @:public public function new(is : java.io.InputStream) : Void;
	
	/**
	* Constructs a MimeBodyPart using the given header and
	* content bytes. <p>
	*
	* Used by providers.
	*
	* @param   headers The header of this part
	* @param   content bytes representing the body of this part.
	*/
	@:overload @:public public function new(headers : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.InternetHeaders, content : java.NativeArray<java.StdTypes.Int8>, len : Int) : Void;
	
	@:overload @:public public function new(headers : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.InternetHeaders, content : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : Void;
	
	@:overload @:public public function new(part : com.sun.xml.internal.org.jvnet.mimepull.MIMEPart) : Void;
	
	/**
	* Return the containing <code>MimeMultipart</code> object,
	* or <code>null</code> if not known.
	*/
	@:overload @:public public function getParent() : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeMultipart;
	
	/**
	* Set the parent of this <code>MimeBodyPart</code> to be the specified
	* <code>MimeMultipart</code>.  Normally called by <code>MimeMultipart</code>'s
	* <code>addBodyPart</code> method.  <code>parent</code> may be
	* <code>null</code> if the <code>MimeBodyPart</code> is being removed
	* from its containing <code>MimeMultipart</code>.
	* @since   JavaMail 1.1
	*/
	@:require(java1) @:overload @:public public function setParent(parent : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeMultipart) : Void;
	
	/**
	* Return the size of the content of this body part in bytes.
	* Return -1 if the size cannot be determined. <p>
	*
	* Note that this number may not be an exact measure of the
	* content size and may or may not account for any transfer
	* encoding of the content. <p>
	*
	* This implementation returns the size of the <code>content</code>
	* array (if not null), or, if <code>contentStream</code> is not
	* null, and the <code>available</code> method returns a positive
	* number, it returns that number as the size.  Otherwise, it returns
	* -1.
	*
	* @return size in bytes, or -1 if not known
	*/
	@:overload @:public public function getSize() : Int;
	
	/**
	* Return the number of lines for the content of this MimeBodyPart.
	* Return -1 if this number cannot be determined. <p>
	*
	* Note that this number may not be an exact measure of the
	* content length and may or may not account for any transfer
	* encoding of the content. <p>
	*
	* This implementation returns -1.
	*
	* @return number of lines, or -1 if not known
	*/
	@:overload @:public public function getLineCount() : Int;
	
	/**
	* Returns the value of the RFC 822 "Content-Type" header field.
	* This represents the content type of the content of this
	* body part. This value must not be null. If this field is
	* unavailable, "text/plain" should be returned. <p>
	*
	* This implementation uses <code>getHeader(name)</code>
	* to obtain the requisite header field.
	*
	* @return  Content-Type of this body part
	*/
	@:overload @:public public function getContentType() : String;
	
	/**
	* Is this MimeBodyPart of the specified MIME type?  This method
	* compares <strong>only the <code>primaryType</code> and
	* <code>subType</code></strong>.
	* The parameters of the content types are ignored. <p>
	*
	* For example, this method will return <code>true</code> when
	* comparing a MimeBodyPart of content type <strong>"text/plain"</strong>
	* with <strong>"text/plain; charset=foobar"</strong>. <p>
	*
	* If the <code>subType</code> of <code>mimeType</code> is the
	* special character '*', then the subtype is ignored during the
	* comparison.
	*/
	@:overload @:public public function isMimeType(mimeType : String) : Bool;
	
	/**
	* Returns the value of the "Content-Disposition" header field.
	* This represents the disposition of this part. The disposition
	* describes how the part should be presented to the user. <p>
	*
	* If the Content-Disposition field is unavailable,
	* null is returned. <p>
	*
	* This implementation uses <code>getHeader(name)</code>
	* to obtain the requisite header field.
	*
	* @see #headers
	*/
	@:overload @:public public function getDisposition() : String;
	
	/**
	* Set the "Content-Disposition" header field of this body part.
	* If the disposition is null, any existing "Content-Disposition"
	* header field is removed.
	*
	* @exception       IllegalStateException if this body part is
	*                  obtained from a READ_ONLY folder.
	*/
	@:overload @:public public function setDisposition(disposition : String) : Void;
	
	/**
	* Returns the content transfer encoding from the
	* "Content-Transfer-Encoding" header
	* field. Returns <code>null</code> if the header is unavailable
	* or its value is absent. <p>
	*
	* This implementation uses <code>getHeader(name)</code>
	* to obtain the requisite header field.
	*
	* @see #headers
	*/
	@:overload @:public public function getEncoding() : String;
	
	/**
	* Returns the value of the "Content-ID" header field. Returns
	* <code>null</code> if the field is unavailable or its value is
	* absent. <p>
	*
	* This implementation uses <code>getHeader(name)</code>
	* to obtain the requisite header field.
	*/
	@:overload @:public public function getContentID() : String;
	
	/**
	* Set the "Content-ID" header field of this body part.
	* If the <code>cid</code> parameter is null, any existing
	* "Content-ID" is removed.
	*
	* @exception       IllegalStateException if this body part is
	*                  obtained from a READ_ONLY folder.
	* @since           JavaMail 1.3
	*/
	@:require(java3) @:overload @:public public function setContentID(cid : String) : Void;
	
	/**
	* Return the value of the "Content-MD5" header field. Returns
	* <code>null</code> if this field is unavailable or its value
	* is absent. <p>
	*
	* This implementation uses <code>getHeader(name)</code>
	* to obtain the requisite header field.
	*/
	@:overload @:public public function getContentMD5() : String;
	
	/**
	* Set the "Content-MD5" header field of this body part.
	*
	* @exception       IllegalStateException if this body part is
	*                  obtained from a READ_ONLY folder.
	*/
	@:overload @:public public function setContentMD5(md5 : String) : Void;
	
	/**
	* Get the languages specified in the Content-Language header
	* of this MimeBodyPart. The Content-Language header is defined by
	* RFC 1766. Returns <code>null</code> if this header is not
	* available or its value is absent. <p>
	*
	* This implementation uses <code>getHeader(name)</code>
	* to obtain the requisite header field.
	*/
	@:overload @:public public function getContentLanguage() : java.NativeArray<String>;
	
	/**
	* Set the Content-Language header of this MimeBodyPart. The
	* Content-Language header is defined by RFC 1766.
	*
	* @param languages         array of language tags
	*/
	@:overload @:public public function setContentLanguage(languages : java.NativeArray<String>) : Void;
	
	/**
	* Returns the "Content-Description" header field of this body part.
	* This typically associates some descriptive information with
	* this part. Returns null if this field is unavailable or its
	* value is absent. <p>
	*
	* If the Content-Description field is encoded as per RFC 2047,
	* it is decoded and converted into Unicode. If the decoding or
	* conversion fails, the raw data is returned as is. <p>
	*
	* This implementation uses <code>getHeader(name)</code>
	* to obtain the requisite header field.
	*
	* @return  content description
	*/
	@:overload @:public public function getDescription() : String;
	
	/**
	* Set the "Content-Description" header field for this body part.
	* If the description parameter is <code>null</code>, then any
	* existing "Content-Description" fields are removed. <p>
	*
	* If the description contains non US-ASCII characters, it will
	* be encoded using the platform's default charset. If the
	* description contains only US-ASCII characters, no encoding
	* is done and it is used as is. <p>
	*
	* Note that if the charset encoding process fails, a
	* MessagingException is thrown, and an UnsupportedEncodingException
	* is included in the chain of nested exceptions within the
	* MessagingException.
	*
	* @param description content description
	* @exception       IllegalStateException if this body part is
	*                  obtained from a READ_ONLY folder.
	* @exception       MessagingException An
	*                  UnsupportedEncodingException may be included
	*                  in the exception chain if the charset
	*                  conversion fails.
	*/
	@:overload @:public public function setDescription(description : String) : Void;
	
	/**
	* Set the "Content-Description" header field for this body part.
	* If the description parameter is <code>null</code>, then any
	* existing "Content-Description" fields are removed. <p>
	*
	* If the description contains non US-ASCII characters, it will
	* be encoded using the specified charset. If the description
	* contains only US-ASCII characters, no encoding  is done and
	* it is used as is. <p>
	*
	* Note that if the charset encoding process fails, a
	* MessagingException is thrown, and an UnsupportedEncodingException
	* is included in the chain of nested exceptions within the
	* MessagingException.
	*
	* @param   description     Description
	* @param   charset         Charset for encoding
	* @exception       IllegalStateException if this body part is
	*                  obtained from a READ_ONLY folder.
	* @exception       MessagingException An
	*                  UnsupportedEncodingException may be included
	*                  in the exception chain if the charset
	*                  conversion fails.
	*/
	@:overload @:public public function setDescription(description : String, charset : String) : Void;
	
	/**
	* Get the filename associated with this body part. <p>
	*
	* Returns the value of the "filename" parameter from the
	* "Content-Disposition" header field of this body part. If its
	* not available, returns the value of the "name" parameter from
	* the "Content-Type" header field of this body part.
	* Returns <code>null</code> if both are absent.
	*
	* @return  filename
	*/
	@:overload @:public public function getFileName() : String;
	
	/**
	* Set the filename associated with this body part, if possible. <p>
	*
	* Sets the "filename" parameter of the "Content-Disposition"
	* header field of this body part.
	*
	* @exception       IllegalStateException if this body part is
	*                  obtained from a READ_ONLY folder.
	*/
	@:overload @:public public function setFileName(filename : String) : Void;
	
	/**
	* Return a decoded input stream for this body part's "content". <p>
	*
	* This implementation obtains the input stream from the DataHandler.
	* That is, it invokes getDataHandler().getInputStream();
	*
	* @return          an InputStream
	* @exception       IOException this is typically thrown by the
	*                  DataHandler. Refer to the documentation for
	*                  javax.activation.DataHandler for more details.
	*
	* @see     #getContentStream
	* @see     DataHandler#getInputStream
	*/
	@:overload @:public public function getInputStream() : java.io.InputStream;
	
	/**
	* Return an InputStream to the raw data with any Content-Transfer-Encoding
	* intact.  This method is useful if the "Content-Transfer-Encoding"
	* header is incorrect or corrupt, which would prevent the
	* <code>getInputStream</code> method or <code>getContent</code> method
	* from returning the correct data.  In such a case the application may
	* use this method and attempt to decode the raw data itself. <p>
	*
	* This implementation simply calls the <code>getContentStream</code>
	* method.
	*
	* @see     #getInputStream
	* @see     #getContentStream
	* @since   JavaMail 1.2
	*/
	@:require(java2) @:overload @:public public function getRawInputStream() : java.io.InputStream;
	
	/**
	* Return a DataHandler for this body part's content. <p>
	*
	* The implementation provided here works just like the
	* the implementation in MimeMessage.
	*/
	@:overload @:public public function getDataHandler() : javax.activation.DataHandler;
	
	/**
	* Return the content as a java object. The type of the object
	* returned is of course dependent on the content itself. For
	* example, the native format of a text/plain content is usually
	* a String object. The native format for a "multipart"
	* content is always a MimeMultipart subclass. For content types that are
	* unknown to the DataHandler system, an input stream is returned
	* as the content. <p>
	*
	* This implementation obtains the content from the DataHandler.
	* That is, it invokes getDataHandler().getContent();
	*
	* @return          Object
	* @exception       IOException this is typically thrown by the
	*                  DataHandler. Refer to the documentation for
	*                  javax.activation.DataHandler for more details.
	*/
	@:overload @:public public function getContent() : Dynamic;
	
	/**
	* This method provides the mechanism to set this body part's content.
	* The given DataHandler object should wrap the actual content.
	*
	* @param   dh      The DataHandler for the content
	* @exception       IllegalStateException if this body part is
	*                  obtained from a READ_ONLY folder.
	*/
	@:overload @:public public function setDataHandler(dh : javax.activation.DataHandler) : Void;
	
	/**
	* A convenience method for setting this body part's content. <p>
	*
	* The content is wrapped in a DataHandler object. Note that a
	* DataContentHandler class for the specified type should be
	* available to the JavaMail implementation for this to work right.
	* That is, to do <code>setContent(foobar, "application/x-foobar")</code>,
	* a DataContentHandler for "application/x-foobar" should be installed.
	* Refer to the Java Activation Framework for more information.
	*
	* @param   o       the content object
	* @param   type    Mime type of the object
	* @exception       IllegalStateException if this body part is
	*                  obtained from a READ_ONLY folder.
	*/
	@:overload @:public public function setContent(o : Dynamic, type : String) : Void;
	
	/**
	* Convenience method that sets the given String as this
	* part's content, with a MIME type of "text/plain". If the
	* string contains non US-ASCII characters, it will be encoded
	* using the platform's default charset. The charset is also
	* used to set the "charset" parameter. <p>
	*
	* Note that there may be a performance penalty if
	* <code>text</code> is large, since this method may have
	* to scan all the characters to determine what charset to
	* use. <p>
	* If the charset is already known, use the
	* setText() version that takes the charset parameter.
	*
	* @see     #setText(String text, String charset)
	*/
	@:overload @:public public function setText(text : String) : Void;
	
	/**
	* Convenience method that sets the given String as this part's
	* content, with a MIME type of "text/plain" and the specified
	* charset. The given Unicode string will be charset-encoded
	* using the specified charset. The charset is also used to set
	* the "charset" parameter.
	*/
	@:overload @:public public function setText(text : String, charset : String) : Void;
	
	/**
	* This method sets the body part's content to a MimeMultipart object.
	*
	* @param  mp       The multipart object that is the Message's content
	* @exception       IllegalStateException if this body part is
	*                  obtained from a READ_ONLY folder.
	*/
	@:overload @:public public function setContent(mp : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeMultipart) : Void;
	
	/**
	* Output the body part as an RFC 822 format stream.
	*
	* @exception MessagingException
	* @exception IOException   if an error occurs writing to the
	*                          stream or if an error is generated
	*                          by the javax.activation layer.
	* @see DataHandler#writeTo
	*/
	@:overload @:public public function writeTo(os : java.io.OutputStream) : Void;
	
	/**
	* Get all the headers for this header_name. Note that certain
	* headers may be encoded as per RFC 2047 if they contain
	* non US-ASCII characters and these should be decoded.
	*
	* @param   name    name of header
	* @return  array of headers
	* @see     MimeUtility
	*/
	@:overload @:public public function getHeader(name : String) : java.NativeArray<String>;
	
	/**
	* Get all the headers for this header name, returned as a single
	* String, with headers separated by the delimiter. If the
	* delimiter is <code>null</code>, only the first header is
	* returned.
	*
	* @param name              the name of this header
	* @param delimiter         delimiter between fields in returned string
	* @return                  the value fields for all headers with
	*                          this name
	*/
	@:overload @:public public function getHeader(name : String, delimiter : String) : String;
	
	/**
	* Set the value for this header_name. Replaces all existing
	* header values with this new value. Note that RFC 822 headers
	* must contain only US-ASCII characters, so a header that
	* contains non US-ASCII characters must be encoded as per the
	* rules of RFC 2047.
	*
	* @param   name    header name
	* @param   value   header value
	* @see     MimeUtility
	*/
	@:overload @:public public function setHeader(name : String, value : String) : Void;
	
	/**
	* Add this value to the existing values for this header_name.
	* Note that RFC 822 headers must contain only US-ASCII
	* characters, so a header that contains non US-ASCII characters
	* must be encoded as per the rules of RFC 2047.
	*
	* @param   name    header name
	* @param   value   header value
	* @see     MimeUtility
	*/
	@:overload @:public public function addHeader(name : String, value : String) : Void;
	
	/**
	* Remove all headers with this name.
	*/
	@:overload @:public public function removeHeader(name : String) : Void;
	
	/**
	* Return all the headers from this Message as an Enumeration of
	* Header objects.
	*/
	@:overload @:public public function getAllHeaders() : com.sun.xml.internal.messaging.saaj.util.FinalArrayList;
	
	/**
	* Add a header line to this body part
	*/
	@:overload @:public public function addHeaderLine(line : String) : Void;
	
	/**
	* Examine the content of this body part and update the appropriate
	* MIME headers.  Typical headers that get set here are
	* <code>Content-Type</code> and <code>Content-Transfer-Encoding</code>.
	* Headers might need to be updated in two cases:
	*
	* <br>
	* - A message being crafted by a mail application will certainly
	* need to activate this method at some point to fill up its internal
	* headers.
	*
	* <br>
	* - A message read in from a Store will have obtained
	* all its headers from the store, and so doesn't need this.
	* However, if this message is editable and if any edits have
	* been made to either the content or message structure, we might
	* need to resync our headers.
	*
	* <br>
	* In both cases this method is typically called by the
	* <code>Message.saveChanges</code> method.
	*/
	@:overload @:protected private function updateHeaders() : Void;
	
	
}
