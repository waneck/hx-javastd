package javax.xml.soap;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AttachmentPart
{
	/**
	* Returns the number of bytes in this <code>AttachmentPart</code>
	* object.
	*
	* @return the size of this <code>AttachmentPart</code> object in bytes
	*         or -1 if the size cannot be determined
	* @exception SOAPException if the content of this attachment is
	*            corrupted of if there was an exception while trying
	*            to determine the size.
	*/
	@:overload @:abstract public function getSize() : Int;
	
	/**
	* Clears out the content of this <code>AttachmentPart</code> object.
	* The MIME header portion is left untouched.
	*/
	@:overload @:abstract public function clearContent() : Void;
	
	/**
	* Gets the content of this <code>AttachmentPart</code> object as a Java
	* object. The type of the returned Java object depends on (1) the
	* <code>DataContentHandler</code> object that is used to interpret the bytes
	* and (2) the <code>Content-Type</code> given in the header.
	* <p>
	* For the MIME content types "text/plain", "text/html" and "text/xml", the
	* <code>DataContentHandler</code> object does the conversions to and
	* from the Java types corresponding to the MIME types.
	* For other MIME types,the <code>DataContentHandler</code> object
	* can return an <code>InputStream</code> object that contains the content data
	* as raw bytes.
	* <p>
	* A SAAJ-compliant implementation must, as a minimum, return a
	* <code>java.lang.String</code> object corresponding to any content
	* stream with a <code>Content-Type</code> value of
	* <code>text/plain</code>, a
	* <code>javax.xml.transform.stream.StreamSource</code> object corresponding to a
	* content stream with a <code>Content-Type</code> value of
	* <code>text/xml</code>, a <code>java.awt.Image</code> object
	* corresponding to a content stream with a
	* <code>Content-Type</code> value of <code>image/gif</code> or
	* <code>image/jpeg</code>.  For those content types that an
	* installed <code>DataContentHandler</code> object does not understand, the
	* <code>DataContentHandler</code> object is required to return a
	* <code>java.io.InputStream</code> object with the raw bytes.
	*
	* @return a Java object with the content of this <code>AttachmentPart</code>
	*         object
	*
	* @exception SOAPException if there is no content set into this
	*            <code>AttachmentPart</code> object or if there was a data
	*            transformation error
	*/
	@:overload @:abstract public function getContent() : Dynamic;
	
	/**
	* Gets the content of this <code>AttachmentPart</code> object as an
	* InputStream as if a call had been made to <code>getContent</code> and no
	* <code>DataContentHandler</code> had been registered for the
	* <code>content-type</code> of this <code>AttachmentPart</code>.
	*<p>
	* Note that reading from the returned InputStream would result in consuming
	* the data in the stream. It is the responsibility of the caller to reset
	* the InputStream appropriately before calling a Subsequent API. If a copy
	* of the raw attachment content is required then the {@link #getRawContentBytes} API
	* should be used instead.
	*
	* @return an <code>InputStream</code> from which the raw data contained by
	*      the <code>AttachmentPart</code> can be accessed.
	*
	* @throws SOAPException if there is no content set into this
	*      <code>AttachmentPart</code> object or if there was a data
	*      transformation error.
	*
	* @since SAAJ 1.3
	* @see #getRawContentBytes
	*/
	@:require(java3) @:overload @:abstract public function getRawContent() : java.io.InputStream;
	
	/**
	* Gets the content of this <code>AttachmentPart</code> object as a
	* byte[] array as if a call had been made to <code>getContent</code> and no
	* <code>DataContentHandler</code> had been registered for the
	* <code>content-type</code> of this <code>AttachmentPart</code>.
	*
	* @return a <code>byte[]</code> array containing the raw data of the
	*      <code>AttachmentPart</code>.
	*
	* @throws SOAPException if there is no content set into this
	*      <code>AttachmentPart</code> object or if there was a data
	*      transformation error.
	*
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:abstract public function getRawContentBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns an <code>InputStream</code> which can be used to obtain the
	* content of <code>AttachmentPart</code>  as Base64 encoded
	* character data, this method would base64 encode the raw bytes
	* of the attachment and return.
	*
	* @return an <code>InputStream</code> from which the Base64 encoded
	*       <code>AttachmentPart</code> can be read.
	*
	* @throws SOAPException if there is no content set into this
	*      <code>AttachmentPart</code> object or if there was a data
	*      transformation error.
	*
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:abstract public function getBase64Content() : java.io.InputStream;
	
	/**
	* Sets the content of this attachment part to that of the given
	* <code>Object</code> and sets the value of the <code>Content-Type</code>
	* header to the given type. The type of the
	* <code>Object</code> should correspond to the value given for the
	* <code>Content-Type</code>. This depends on the particular
	* set of <code>DataContentHandler</code> objects in use.
	*
	*
	* @param object the Java object that makes up the content for
	*               this attachment part
	* @param contentType the MIME string that specifies the type of
	*                  the content
	*
	* @exception IllegalArgumentException may be thrown if the contentType
	*            does not match the type of the content object, or if there
	*            was no <code>DataContentHandler</code> object for this
	*            content object
	*
	* @see #getContent
	*/
	@:overload @:abstract public function setContent(object : Dynamic, contentType : String) : Void;
	
	/**
	* Sets the content of this attachment part to that contained by the
	* <code>InputStream</code> <code>content</code> and sets the value of the
	* <code>Content-Type</code> header to the value contained in
	* <code>contentType</code>.
	* <P>
	*  A subsequent call to getSize() may not be an exact measure
	*  of the content size.
	*
	* @param content the raw data to add to the attachment part
	* @param contentType the value to set into the <code>Content-Type</code>
	* header
	*
	* @exception SOAPException if an there is an error in setting the content
	* @exception NullPointerException if <code>content</code> is null
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:abstract public function setRawContent(content : java.io.InputStream, contentType : String) : Void;
	
	/**
	* Sets the content of this attachment part to that contained by the
	* <code>byte[]</code> array <code>content</code> and sets the value of the
	* <code>Content-Type</code> header to the value contained in
	* <code>contentType</code>.
	*
	* @param content the raw data to add to the attachment part
	* @param contentType the value to set into the <code>Content-Type</code>
	* header
	* @param offset the offset in the byte array of the content
	* @param len the number of bytes that form the content
	*
	* @exception SOAPException if an there is an error in setting the content
	* or content is null
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:abstract public function setRawContentBytes(content : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, contentType : String) : Void;
	
	/**
	* Sets the content of this attachment part from the Base64 source
	* <code>InputStream</code>  and sets the value of the
	* <code>Content-Type</code> header to the value contained in
	* <code>contentType</code>, This method would first decode the base64
	* input and write the resulting raw bytes to the attachment.
	* <P>
	*  A subsequent call to getSize() may not be an exact measure
	*  of the content size.
	*
	* @param content the base64 encoded data to add to the attachment part
	* @param contentType the value to set into the <code>Content-Type</code>
	* header
	*
	* @exception SOAPException if an there is an error in setting the content
	* @exception NullPointerException if <code>content</code> is null
	*
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:abstract public function setBase64Content(content : java.io.InputStream, contentType : String) : Void;
	
	/**
	* Gets the <code>DataHandler</code> object for this <code>AttachmentPart</code>
	* object.
	*
	* @return the <code>DataHandler</code> object associated with this
	*         <code>AttachmentPart</code> object
	*
	* @exception SOAPException if there is no data in
	* this <code>AttachmentPart</code> object
	*/
	@:overload @:abstract public function getDataHandler() : javax.activation.DataHandler;
	
	/**
	* Sets the given <code>DataHandler</code> object as the data handler
	* for this <code>AttachmentPart</code> object. Typically, on an incoming
	* message, the data handler is automatically set. When
	* a message is being created and populated with content, the
	* <code>setDataHandler</code> method can be used to get data from
	* various data sources into the message.
	*
	* @param dataHandler the <code>DataHandler</code> object to be set
	*
	* @exception IllegalArgumentException if there was a problem with
	*            the specified <code>DataHandler</code> object
	*/
	@:overload @:abstract public function setDataHandler(dataHandler : javax.activation.DataHandler) : Void;
	
	/**
	* Gets the value of the MIME header whose name is "Content-ID".
	*
	* @return a <code>String</code> giving the value of the
	*          "Content-ID" header or <code>null</code> if there
	*          is none
	* @see #setContentId
	*/
	@:overload public function getContentId() : String;
	
	/**
	* Gets the value of the MIME header whose name is "Content-Location".
	*
	* @return a <code>String</code> giving the value of the
	*          "Content-Location" header or <code>null</code> if there
	*          is none
	*/
	@:overload public function getContentLocation() : String;
	
	/**
	* Gets the value of the MIME header whose name is "Content-Type".
	*
	* @return a <code>String</code> giving the value of the
	*          "Content-Type" header or <code>null</code> if there
	*          is none
	*/
	@:overload public function getContentType() : String;
	
	/**
	* Sets the MIME header whose name is "Content-ID" with the given value.
	*
	* @param contentId a <code>String</code> giving the value of the
	*          "Content-ID" header
	*
	* @exception IllegalArgumentException if there was a problem with
	*            the specified <code>contentId</code> value
	* @see #getContentId
	*/
	@:overload public function setContentId(contentId : String) : Void;
	
	/**
	* Sets the MIME header whose name is "Content-Location" with the given value.
	*
	*
	* @param contentLocation a <code>String</code> giving the value of the
	*          "Content-Location" header
	* @exception IllegalArgumentException if there was a problem with
	*            the specified content location
	*/
	@:overload public function setContentLocation(contentLocation : String) : Void;
	
	/**
	* Sets the MIME header whose name is "Content-Type" with the given value.
	*
	* @param contentType a <code>String</code> giving the value of the
	*          "Content-Type" header
	*
	* @exception IllegalArgumentException if there was a problem with
	*            the specified content type
	*/
	@:overload public function setContentType(contentType : String) : Void;
	
	/**
	* Removes all MIME headers that match the given name.
	*
	* @param header the string name of the MIME header/s to
	*               be removed
	*/
	@:overload @:abstract public function removeMimeHeader(header : String) : Void;
	
	/**
	* Removes all the MIME header entries.
	*/
	@:overload @:abstract public function removeAllMimeHeaders() : Void;
	
	/**
	* Gets all the values of the header identified by the given
	* <code>String</code>.
	*
	* @param name the name of the header; example: "Content-Type"
	* @return a <code>String</code> array giving the value for the
	*         specified header
	* @see #setMimeHeader
	*/
	@:overload @:abstract public function getMimeHeader(name : String) : java.NativeArray<String>;
	
	/**
	* Changes the first header entry that matches the given name
	* to the given value, adding a new header if no existing header
	* matches. This method also removes all matching headers but the first. <p>
	*
	* Note that RFC822 headers can only contain US-ASCII characters.
	*
	* @param   name    a <code>String</code> giving the name of the header
	*                  for which to search
	* @param   value   a <code>String</code> giving the value to be set for
	*                  the header whose name matches the given name
	*
	* @exception IllegalArgumentException if there was a problem with
	*            the specified mime header name or value
	*/
	@:overload @:abstract public function setMimeHeader(name : String, value : String) : Void;
	
	/**
	* Adds a MIME header with the specified name and value to this
	* <code>AttachmentPart</code> object.
	* <p>
	* Note that RFC822 headers can contain only US-ASCII characters.
	*
	* @param   name    a <code>String</code> giving the name of the header
	*                  to be added
	* @param   value   a <code>String</code> giving the value of the header
	*                  to be added
	*
	* @exception IllegalArgumentException if there was a problem with
	*            the specified mime header name or value
	*/
	@:overload @:abstract public function addMimeHeader(name : String, value : String) : Void;
	
	/**
	* Retrieves all the headers for this <code>AttachmentPart</code> object
	* as an iterator over the <code>MimeHeader</code> objects.
	*
	* @return  an <code>Iterator</code> object with all of the Mime
	*          headers for this <code>AttachmentPart</code> object
	*/
	@:overload @:abstract public function getAllMimeHeaders() : java.util.Iterator<Dynamic>;
	
	/**
	* Retrieves all <code>MimeHeader</code> objects that match a name in
	* the given array.
	*
	* @param names a <code>String</code> array with the name(s) of the
	*        MIME headers to be returned
	* @return  all of the MIME headers that match one of the names in the
	*           given array as an <code>Iterator</code> object
	*/
	@:overload @:abstract public function getMatchingMimeHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	/**
	* Retrieves all <code>MimeHeader</code> objects whose name does
	* not match a name in the given array.
	*
	* @param names a <code>String</code> array with the name(s) of the
	*        MIME headers not to be returned
	* @return  all of the MIME headers in this <code>AttachmentPart</code> object
	*          except those that match one of the names in the
	*           given array.  The nonmatching MIME headers are returned as an
	*           <code>Iterator</code> object.
	*/
	@:overload @:abstract public function getNonMatchingMimeHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	
}
