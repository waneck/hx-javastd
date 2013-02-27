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
* @(#)MimeMultipart.java     1.31 03/01/29
*/
extern class MimeMultipart
{
	/**
	* The DataSource supplying our InputStream.
	*/
	private var ds : javax.activation.DataSource;
	
	/**
	* Have we parsed the data from our InputStream yet?
	* Defaults to true; set to false when our constructor is
	* given a DataSource with an InputStream that we need to
	* parse.
	*/
	private var parsed : Bool;
	
	/**
	* Vector of MimeBodyPart objects.
	*/
	private var parts : com.sun.xml.internal.messaging.saaj.util.FinalArrayList;
	
	/**
	* This field specifies the content-type of this multipart
	* object. It defaults to "multipart/mixed".
	*/
	private var contentType : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ContentType;
	
	/**
	* The <code>MimeBodyPart</code> containing this <code>MimeMultipart</code>,
	* if known.
	* @since   JavaMail 1.1
	*/
	@:require(java1) private var parent : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart;
	
	private static var ignoreMissingEndBoundary : Bool;
	
	/**
	* Default constructor. An empty MimeMultipart object
	* is created. Its content type is set to "multipart/mixed".
	* A unique boundary string is generated and this string is
	* setup as the "boundary" parameter for the
	* <code>contentType</code> field. <p>
	*
	* MimeBodyParts may be added later.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a MimeMultipart object of the given subtype.
	* A unique boundary string is generated and this string is
	* setup as the "boundary" parameter for the
	* <code>contentType</code> field. <p>
	*
	* MimeBodyParts may be added later.
	*/
	@:overload public function new(subtype : String) : Void;
	
	/**
	* Constructs a MimeMultipart object and its bodyparts from the
	* given DataSource. <p>
	*
	* This constructor handles as a special case the situation where the
	* given DataSource is a MultipartDataSource object.
	*
	* Otherwise, the DataSource is assumed to provide a MIME multipart
	* byte stream.  The <code>parsed</code> flag is set to false.  When
	* the data for the body parts are needed, the parser extracts the
	* "boundary" parameter from the content type of this DataSource,
	* skips the 'preamble' and reads bytes till the terminating
	* boundary and creates MimeBodyParts for each part of the stream.
	*
	* @param   ds      DataSource, can be a MultipartDataSource
	* @param ct
	*      This must be the same information as {@link DataSource#getContentType()}.
	*      All the callers of this method seem to have this object handy, so
	*      for performance reason this method accepts it. Can be null.
	*/
	@:overload public function new(ds : javax.activation.DataSource, ct : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ContentType) : Void;
	
	/**
	* Set the subtype. This method should be invoked only on a new
	* MimeMultipart object created by the client. The default subtype
	* of such a multipart object is "mixed". <p>
	*
	* @param   subtype         Subtype
	*/
	@:overload public function setSubType(subtype : String) : Void;
	
	/**
	* Return the number of enclosed MimeBodyPart objects.
	*
	* @return          number of parts
	*/
	@:overload public function getCount() : Int;
	
	/**
	* Get the specified MimeBodyPart.  BodyParts are numbered starting at 0.
	*
	* @param index     the index of the desired MimeBodyPart
	* @return          the MimeBodyPart
	* @exception       MessagingException if no such MimeBodyPart exists
	*/
	@:overload public function getBodyPart(index : Int) : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart;
	
	/**
	* Get the MimeBodyPart referred to by the given ContentID (CID).
	* Returns null if the part is not found.
	*
	* @param  CID      the ContentID of the desired part
	* @return          the MimeBodyPart
	*/
	@:overload public function getBodyPart(CID : String) : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart;
	
	/**
	* Update headers. The default implementation here just
	* calls the <code>updateHeaders</code> method on each of its
	* children BodyParts. <p>
	*
	* Note that the boundary parameter is already set up when
	* a new and empty MimeMultipart object is created. <p>
	*
	* This method is called when the <code>saveChanges</code>
	* method is invoked on the Message object containing this
	* MimeMultipart. This is typically done as part of the Message
	* send process, however note that a client is free to call
	* it any number of times. So if the header updating process is
	* expensive for a specific MimeMultipart subclass, then it
	* might itself want to track whether its internal state actually
	* did change, and do the header updating only if necessary.
	*/
	@:overload private function updateHeaders() : Void;
	
	/**
	* Iterates through all the parts and outputs each Mime part
	* separated by a boundary.
	*/
	@:overload public function writeTo(os : java.io.OutputStream) : Void;
	
	/**
	* Parse the InputStream from our DataSource, constructing the
	* appropriate MimeBodyParts.  The <code>parsed</code> flag is
	* set to true, and if true on entry nothing is done.  This
	* method is called by all other methods that need data for
	* the body parts, to make sure the data has been parsed.
	*
	* @since   JavaMail 1.2
	*/
	@:require(java2) @:overload private function parse() : Void;
	
	/**
	* Create and return an InternetHeaders object that loads the
	* headers from the given InputStream.  Subclasses can override
	* this method to return a subclass of InternetHeaders, if
	* necessary.  This implementation simply constructs and returns
	* an InternetHeaders object.
	*
	* @param   is      the InputStream to read the headers from
	* @exception       MessagingException
	* @since           JavaMail 1.2
	*/
	@:require(java2) @:overload private function createInternetHeaders(is : java.io.InputStream) : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.InternetHeaders;
	
	/**
	* Create and return a MimeBodyPart object to represent a
	* body part parsed from the InputStream.  Subclasses can override
	* this method to return a subclass of MimeBodyPart, if
	* necessary.  This implementation simply constructs and returns
	* a MimeBodyPart object.
	*
	* @param   headers         the headers for the body part
	* @param   content         the content of the body part
	* @since                   JavaMail 1.2
	*/
	@:require(java2) @:overload private function createMimeBodyPart(headers : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.InternetHeaders, content : java.NativeArray<java.StdTypes.Int8>, len : Int) : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart;
	
	/**
	* Create and return a MimeBodyPart object to represent a
	* body part parsed from the InputStream.  Subclasses can override
	* this method to return a subclass of MimeBodyPart, if
	* necessary.  This implementation simply constructs and returns
	* a MimeBodyPart object.
	*
	* @param   is              InputStream containing the body part
	* @exception               MessagingException
	* @since                   JavaMail 1.2
	*/
	@:require(java2) @:overload private function createMimeBodyPart(is : java.io.InputStream) : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart;
	
	/**
	* Setup this MimeMultipart object from the given MultipartDataSource. <p>
	*
	* The method adds the MultipartDataSource's MimeBodyPart
	* objects into this MimeMultipart. This MimeMultipart's contentType is
	* set to that of the MultipartDataSource. <p>
	*
	* This method is typically used in those cases where one
	* has a multipart data source that has already been pre-parsed into
	* the individual body parts (for example, an IMAP datasource), but
	* needs to create an appropriate MimeMultipart subclass that represents
	* a specific multipart subtype.
	*
	* @param   mp      MimeMultipart datasource
	*/
	@:overload private function setMultipartDataSource(mp : com.sun.xml.internal.messaging.saaj.packaging.mime.MultipartDataSource) : Void;
	
	/**
	* Return the content-type of this MimeMultipart. <p>
	*
	* This implementation just returns the value of the
	* <code>contentType</code> field.
	*
	* @return  content-type
	* @see     #contentType
	*/
	@:overload public function getContentType() : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ContentType;
	
	/**
	* Remove the specified part from the multipart message.
	* Shifts all the parts after the removed part down one.
	*
	* @param   part    The part to remove
	* @return          true if part removed, false otherwise
	* @exception       MessagingException if no such MimeBodyPart exists
	*/
	@:overload public function removeBodyPart(part : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart) : Bool;
	
	/**
	* Remove the part at specified location (starting from 0).
	* Shifts all the parts after the removed part down one.
	*
	* @param   index   Index of the part to remove
	* @exception       IndexOutOfBoundsException if the given index
	*                  is out of range.
	*/
	@:overload public function removeBodyPart(index : Int) : Void;
	
	/**
	* Adds a MimeBodyPart to the multipart.  The MimeBodyPart is appended to
	* the list of existing Parts.
	*
	* @param  part  The MimeBodyPart to be appended
	*/
	@:overload @:synchronized public function addBodyPart(part : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart) : Void;
	
	/**
	* Adds a MimeBodyPart at position <code>index</code>.
	* If <code>index</code> is not the last one in the list,
	* the subsequent parts are shifted up. If <code>index</code>
	* is larger than the number of parts present, the
	* MimeBodyPart is appended to the end.
	*
	* @param  part  The MimeBodyPart to be inserted
	* @param  index Location where to insert the part
	*/
	@:overload @:synchronized public function addBodyPart(part : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart, index : Int) : Void;
	
	
}
