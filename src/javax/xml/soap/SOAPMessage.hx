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
extern class SOAPMessage
{
	/**
	* Specifies the character type encoding for the SOAP Message. Valid values
	* include "utf-8" and "utf-16". See vendor documentation for additional
	* supported values. The default is "utf-8".
	*
	* @see SOAPMessage#setProperty(String, Object) SOAPMessage.setProperty
	* @since SAAJ 1.2
	*/
	@:require(java2) @:public @:static @:final public static var CHARACTER_SET_ENCODING(default, null) : String;
	
	/**
	* Specifies whether the SOAP Message will contain an XML declaration when
	* it is sent. The only valid values are "true" and "false". The default is
	* "false".
	*
	* @see SOAPMessage#setProperty(String, Object) SOAPMessage.setProperty
	* @since SAAJ 1.2
	*/
	@:require(java2) @:public @:static @:final public static var WRITE_XML_DECLARATION(default, null) : String;
	
	/**
	* Sets the description of this <code>SOAPMessage</code> object's
	* content with the given description.
	*
	* @param description a <code>String</code> describing the content of this
	*         message
	* @see #getContentDescription
	*/
	@:overload @:public @:abstract public function setContentDescription(description : String) : Void;
	
	/**
	* Retrieves a description of this <code>SOAPMessage</code> object's
	* content.
	*
	* @return a <code>String</code> describing the content of this
	*         message or <code>null</code> if no description has been set
	* @see #setContentDescription
	*/
	@:overload @:public @:abstract public function getContentDescription() : String;
	
	/**
	* Gets the SOAP part of this <code>SOAPMessage</code> object.
	* <P>
	* <code>SOAPMessage</code> object contains one or more attachments, the
	* SOAP Part must be the first MIME body part in the message.
	*
	* @return the <code>SOAPPart</code> object for this <code>SOAPMessage</code>
	*         object
	*/
	@:overload @:public @:abstract public function getSOAPPart() : javax.xml.soap.SOAPPart;
	
	/**
	* Gets the SOAP Body contained in this <code>SOAPMessage</code> object.
	* <p>
	*
	* @return the <code>SOAPBody</code> object contained by this <code>SOAPMessage</code>
	*         object
	* @exception SOAPException
	*               if the SOAP Body does not exist or cannot be retrieved
	* @since SAAJ 1.2
	*/
	@:require(java2) @:overload @:public public function getSOAPBody() : javax.xml.soap.SOAPBody;
	
	/**
	* Gets the SOAP Header contained in this <code>SOAPMessage</code>
	* object.
	* <p>
	*
	* @return the <code>SOAPHeader</code> object contained by this <code>SOAPMessage</code>
	*         object
	* @exception SOAPException
	*               if the SOAP Header does not exist or cannot be retrieved
	* @since SAAJ 1.2
	*/
	@:require(java2) @:overload @:public public function getSOAPHeader() : javax.xml.soap.SOAPHeader;
	
	/**
	* Removes all <code>AttachmentPart</code> objects that have been added
	* to this <code>SOAPMessage</code> object.
	* <P>
	* This method does not touch the SOAP part.
	*/
	@:overload @:public @:abstract public function removeAllAttachments() : Void;
	
	/**
	* Gets a count of the number of attachments in this message. This count
	* does not include the SOAP part.
	*
	* @return the number of <code>AttachmentPart</code> objects that are
	*         part of this <code>SOAPMessage</code> object
	*/
	@:overload @:public @:abstract public function countAttachments() : Int;
	
	/**
	* Retrieves all the <code>AttachmentPart</code> objects that are part of
	* this <code>SOAPMessage</code> object.
	*
	* @return an iterator over all the attachments in this message
	*/
	@:overload @:public @:abstract public function getAttachments() : java.util.Iterator<Dynamic>;
	
	/**
	* Retrieves all the <code>AttachmentPart</code> objects that have header
	* entries that match the specified headers. Note that a returned
	* attachment could have headers in addition to those specified.
	*
	* @param headers
	*           a <code>MimeHeaders</code> object containing the MIME
	*           headers for which to search
	* @return an iterator over all attachments that have a header that matches
	*         one of the given headers
	*/
	@:overload @:public @:abstract public function getAttachments(headers : javax.xml.soap.MimeHeaders) : java.util.Iterator<Dynamic>;
	
	/**
	* Removes all the <code>AttachmentPart</code> objects that have header
	* entries that match the specified headers. Note that the removed
	* attachment could have headers in addition to those specified.
	*
	* @param headers
	*           a <code>MimeHeaders</code> object containing the MIME
	*           headers for which to search
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public @:abstract public function removeAttachments(headers : javax.xml.soap.MimeHeaders) : Void;
	
	/**
	* Returns an <code>AttachmentPart</code> object that is associated with an
	* attachment that is referenced by this <code>SOAPElement</code> or
	* <code>null</code> if no such attachment exists. References can be made
	* via an <code>href</code> attribute as described in
	* {@link <a href="http://www.w3.org/TR/SOAP-attachments#SOAPReferenceToAttachements">SOAP Messages with Attachments</a>},
	* or via a single <code>Text</code> child node containing a URI as
	* described in the WS-I Attachments Profile 1.0 for elements of schema
	* type {@link <a href="http://www.ws-i.org/Profiles/AttachmentsProfile-1.0-2004-08-24.html">ref:swaRef</a>}.  These two mechanisms must be supported.
	* The support for references via <code>href</code> attribute also implies that
	* this method should also be supported on an element that is an
	* <i>xop:Include</i> element (
	* {@link <a  href="http://www.w3.org/2000/xp/Group/3/06/Attachments/XOP.html">XOP</a>}).
	* other reference mechanisms may be supported by individual
	* implementations of this standard. Contact your vendor for details.
	*
	* @param  element The <code>SOAPElement</code> containing the reference to an Attachment
	* @return the referenced <code>AttachmentPart</code> or null if no such
	*          <code>AttachmentPart</code> exists or no reference can be
	*          found in this <code>SOAPElement</code>.
	* @throws SOAPException if there is an error in the attempt to access the
	*          attachment
	*
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public @:abstract public function getAttachment(element : javax.xml.soap.SOAPElement) : javax.xml.soap.AttachmentPart;
	
	/**
	* Adds the given <code>AttachmentPart</code> object to this <code>SOAPMessage</code>
	* object. An <code>AttachmentPart</code> object must be created before
	* it can be added to a message.
	*
	* @param AttachmentPart
	*           an <code>AttachmentPart</code> object that is to become part
	*           of this <code>SOAPMessage</code> object
	* @exception IllegalArgumentException
	*/
	@:overload @:public @:abstract public function addAttachmentPart(AttachmentPart : javax.xml.soap.AttachmentPart) : Void;
	
	/**
	* Creates a new empty <code>AttachmentPart</code> object. Note that the
	* method <code>addAttachmentPart</code> must be called with this new
	* <code>AttachmentPart</code> object as the parameter in order for it to
	* become an attachment to this <code>SOAPMessage</code> object.
	*
	* @return a new <code>AttachmentPart</code> object that can be populated
	*         and added to this <code>SOAPMessage</code> object
	*/
	@:overload @:public @:abstract public function createAttachmentPart() : javax.xml.soap.AttachmentPart;
	
	/**
	* Creates an <code>AttachmentPart</code> object and populates it using
	* the given <code>DataHandler</code> object.
	*
	* @param dataHandler
	*           the <code>javax.activation.DataHandler</code> object that
	*           will generate the content for this <code>SOAPMessage</code>
	*           object
	* @return a new <code>AttachmentPart</code> object that contains data
	*         generated by the given <code>DataHandler</code> object
	* @exception IllegalArgumentException
	*               if there was a problem with the specified <code>DataHandler</code>
	*               object
	* @see javax.activation.DataHandler
	* @see javax.activation.DataContentHandler
	*/
	@:overload @:public public function createAttachmentPart(dataHandler : javax.activation.DataHandler) : javax.xml.soap.AttachmentPart;
	
	/**
	* Returns all the transport-specific MIME headers for this <code>SOAPMessage</code>
	* object in a transport-independent fashion.
	*
	* @return a <code>MimeHeaders</code> object containing the <code>MimeHeader</code>
	*         objects
	*/
	@:overload @:public @:abstract public function getMimeHeaders() : javax.xml.soap.MimeHeaders;
	
	/**
	* Creates an <code>AttachmentPart</code> object and populates it with
	* the specified data of the specified content type. The type of the
	* <code>Object</code> should correspond to the value given for the
	* <code>Content-Type</code>.
	*
	* @param content
	*           an <code>Object</code> containing the content for the
	*           <code>AttachmentPart</code> object to be created
	* @param contentType
	*           a <code>String</code> object giving the type of content;
	*           examples are "text/xml", "text/plain", and "image/jpeg"
	* @return a new <code>AttachmentPart</code> object that contains the
	*         given data
	* @exception IllegalArgumentException
	*               may be thrown if the contentType does not match the type
	*               of the content object, or if there was no
	*               <code>DataContentHandler</code> object for the given
	*               content object
	* @see javax.activation.DataHandler
	* @see javax.activation.DataContentHandler
	*/
	@:overload @:public public function createAttachmentPart(content : Dynamic, contentType : String) : javax.xml.soap.AttachmentPart;
	
	/**
	* Updates this <code>SOAPMessage</code> object with all the changes that
	* have been made to it. This method is called automatically when
	* {@link SOAPMessage#writeTo(OutputStream)} is  called. However, if
	* changes are made to a message that was received or to one that has
	* already been sent, the method <code>saveChanges</code> needs to be
	* called explicitly in order to save the changes. The method <code>saveChanges</code>
	* also generates any changes that can be read back (for example, a
	* MessageId in profiles that support a message id). All MIME headers in a
	* message that is created for sending purposes are guaranteed to have
	* valid values only after <code>saveChanges</code> has been called.
	* <P>
	* In addition, this method marks the point at which the data from all
	* constituent <code>AttachmentPart</code> objects are pulled into the
	* message.
	* <P>
	*
	* @exception <code>SOAPException</code> if there was a problem saving
	*               changes to this message.
	*/
	@:overload @:public @:abstract public function saveChanges() : Void;
	
	/**
	* Indicates whether this <code>SOAPMessage</code> object needs to have
	* the method <code>saveChanges</code> called on it.
	*
	* @return <code>true</code> if <code>saveChanges</code> needs to be
	*         called; <code>false</code> otherwise.
	*/
	@:overload @:public @:abstract public function saveRequired() : Bool;
	
	/**
	* Writes this <code>SOAPMessage</code> object to the given output
	* stream. The externalization format is as defined by the SOAP 1.1 with
	* Attachments specification.
	* <P>
	* If there are no attachments, just an XML stream is written out. For
	* those messages that have attachments, <code>writeTo</code> writes a
	* MIME-encoded byte stream.
	* <P>
	* Note that this method does not write the transport-specific MIME Headers
	* of the Message
	*
	* @param out
	*           the <code>OutputStream</code> object to which this <code>SOAPMessage</code>
	*           object will be written
	* @exception IOException
	*               if an I/O error occurs
	* @exception SOAPException
	*               if there was a problem in externalizing this SOAP message
	*/
	@:overload @:public @:abstract public function writeTo(out : java.io.OutputStream) : Void;
	
	/**
	* Associates the specified value with the specified property. If there was
	* already a value associated with this property, the old value is
	* replaced.
	* <p>
	* The valid property names include
	* {@link SOAPMessage#WRITE_XML_DECLARATION}  and
	* {@link SOAPMessage#CHARACTER_SET_ENCODING}. All of these standard SAAJ
	* properties are prefixed by "javax.xml.soap". Vendors may also add
	* implementation specific properties. These properties must be prefixed
	* with package names that are unique to the vendor.
	* <p>
	* Setting the property <code>WRITE_XML_DECLARATION</code> to <code>"true"</code>
	* will cause an XML Declaration to be written out at the start of the SOAP
	* message. The default value of "false" suppresses this declaration.
	* <p>
	* The property <code>CHARACTER_SET_ENCODING</code> defaults to the value
	* <code>"utf-8"</code> which causes the SOAP message to be encoded using
	* UTF-8. Setting <code>CHARACTER_SET_ENCODING</code> to <code>"utf-16"</code>
	* causes the SOAP message to be encoded using UTF-16.
	* <p>
	* Some implementations may allow encodings in addition to UTF-8 and
	* UTF-16. Refer to your vendor's documentation for details.
	*
	* @param property
	*           the property with which the specified value is to be
	*           associated.
	* @param value
	*           the value to be associated with the specified property
	* @exception SOAPException
	*               if the property name is not recognized.
	* @since SAAJ 1.2
	*/
	@:require(java2) @:overload @:public public function setProperty(property : String, value : Dynamic) : Void;
	
	/**
	* Retrieves value of the specified property.
	*
	* @param property
	*           the name of the property to retrieve
	* @return the value associated with the named property or <code>null</code>
	*         if no such property exists.
	* @exception SOAPException
	*               if the property name is not recognized.
	* @since SAAJ 1.2
	*/
	@:require(java2) @:overload @:public public function getProperty(property : String) : Dynamic;
	
	
}
