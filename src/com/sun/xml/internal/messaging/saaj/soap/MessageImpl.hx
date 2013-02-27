package com.sun.xml.internal.messaging.saaj.soap;
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
extern class MessageImpl extends javax.xml.soap.SOAPMessage implements javax.xml.soap.SOAPConstants
{
	/**
	* The message implementation for SOAP messages with
	* attachments. Messages for specific profiles will likely extend this
	* MessageImpl class and add more value for that particular profile.
	*
	* @author Anil Vijendran (akv@eng.sun.com)
	* @author Rajiv Mordani (rajiv.mordani@sun.com)
	* @author Manveen Kaur (manveen.kaur@sun.com)
	*/
	public static var CONTENT_ID(default, null) : String;
	
	public static var CONTENT_LOCATION(default, null) : String;
	
	private static var log(default, null) : java.util.logging.Logger;
	
	private static var PLAIN_XML_FLAG(default, null) : Int;
	
	private static var MIME_MULTIPART_FLAG(default, null) : Int;
	
	private static var SOAP1_1_FLAG(default, null) : Int;
	
	private static var SOAP1_2_FLAG(default, null) : Int;
	
	private static var MIME_MULTIPART_XOP_SOAP1_1_FLAG(default, null) : Int;
	
	private static var MIME_MULTIPART_XOP_SOAP1_2_FLAG(default, null) : Int;
	
	private static var XOP_FLAG(default, null) : Int;
	
	private static var FI_ENCODED_FLAG(default, null) : Int;
	
	private var headers : javax.xml.soap.MimeHeaders;
	
	private var soapPartImpl : com.sun.xml.internal.messaging.saaj.soap.SOAPPartImpl;
	
	private var attachments : com.sun.xml.internal.messaging.saaj.util.FinalArrayList;
	
	private var saved : Bool;
	
	private var messageBytes : java.NativeArray<java.StdTypes.Int8>;
	
	private var messageByteCount : Int;
	
	private var properties : java.util.HashMap<Dynamic, Dynamic>;
	
	private var multiPart : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeMultipart;
	
	private var attachmentsInitialized : Bool;
	
	private var mmp : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeMultipart;
	
	/**
	* Construct a new message. This will be invoked before message
	* sends.
	*/
	@:overload private function new() : Void;
	
	/**
	* Construct a new message. This will be invoked before message
	* sends.
	*/
	@:overload private function new(isFastInfoset : Bool, acceptFastInfoset : Bool) : Void;
	
	/**
	* Shallow copy.
	*/
	@:overload private function new(msg : javax.xml.soap.SOAPMessage) : Void;
	
	/**
	* @param stat
	*      the mask value obtained from {@link #identifyContentType(ContentType)}
	*/
	@:overload private static function isSoap1_1Content(stat : Int) : Bool;
	
	/**
	* @param stat
	*      the mask value obtained from {@link #identifyContentType(ContentType)}
	*/
	@:overload private static function isSoap1_2Content(stat : Int) : Bool;
	
	/**
	* Construct a message from an input stream. When messages are
	* received, there's two parts -- the transport headers and the
	* message content in a transport specific stream.
	*/
	@:overload private function new(headers : javax.xml.soap.MimeHeaders, _in : java.io.InputStream) : Void;
	
	/**
	* Construct a message from an input stream. When messages are
	* received, there's two parts -- the transport headers and the
	* message content in a transport specific stream.
	*
	* @param contentType
	*      The parsed content type header from the headers variable.
	*      This is redundant parameter, but it avoids reparsing this header again.
	* @param stat
	*      The result of {@link #identifyContentType(ContentType)} over
	*      the contentType parameter. This redundant parameter, but it avoids
	*      recomputing this information again.
	*/
	@:overload private function new(headers : javax.xml.soap.MimeHeaders, contentType : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ContentType, stat : Int, _in : java.io.InputStream) : Void;
	
	@:overload public function isFastInfoset() : Bool;
	
	@:overload public function acceptFastInfoset() : Bool;
	
	@:overload public function setIsFastInfoset(value : Bool) : Void;
	
	@:overload override public function getProperty(property : String) : Dynamic;
	
	@:overload override public function setProperty(property : String, value : Dynamic) : Void;
	
	@:overload @:abstract private function isCorrectSoapVersion(contentTypeId : Int) : Bool;
	
	@:overload @:abstract private function getExpectedContentType() : String;
	
	@:overload @:abstract private function getExpectedAcceptHeader() : String;
	
	@:overload override public function getMimeHeaders() : javax.xml.soap.MimeHeaders;
	
	/*
	* Get the complete ContentType value along with optional parameters.
	*/
	@:overload public function getContentType() : String;
	
	@:overload public function setContentType(type : String) : Void;
	
	/*
	* Return the MIME type string, without the parameters.
	*/
	@:overload public function getBaseType() : String;
	
	@:overload public function setBaseType(type : String) : Void;
	
	@:overload public function getAction() : String;
	
	@:overload public function setAction(action : String) : Void;
	
	@:overload public function getCharset() : String;
	
	@:overload public function setCharset(charset : String) : Void;
	
	@:overload override public function saveRequired() : Bool;
	
	@:overload override public function getContentDescription() : String;
	
	@:overload override public function setContentDescription(description : String) : Void;
	
	@:overload @:abstract override public function getSOAPPart() : javax.xml.soap.SOAPPart;
	
	@:overload override public function removeAllAttachments() : Void;
	
	@:overload override public function countAttachments() : Int;
	
	@:overload override public function addAttachmentPart(attachment : javax.xml.soap.AttachmentPart) : Void;
	
	@:overload override public function getAttachments() : java.util.Iterator<Dynamic>;
	
	@:overload override public function getAttachments(headers : javax.xml.soap.MimeHeaders) : java.util.Iterator<Dynamic>;
	
	@:overload override public function removeAttachments(headers : javax.xml.soap.MimeHeaders) : Void;
	
	@:overload override public function createAttachmentPart() : javax.xml.soap.AttachmentPart;
	
	@:overload override public function getAttachment(element : javax.xml.soap.SOAPElement) : javax.xml.soap.AttachmentPart;
	
	@:overload override public function saveChanges() : Void;
	
	@:overload override public function writeTo(out : java.io.OutputStream) : Void;
	
	@:overload override public function getSOAPBody() : javax.xml.soap.SOAPBody;
	
	@:overload override public function getSOAPHeader() : javax.xml.soap.SOAPHeader;
	
	@:overload public function setLazyAttachments(flag : Bool) : Void;
	
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$MessageImpl$MimeMatchingIterator') @:internal extern class MessageImpl_MimeMatchingIterator implements java.util.Iterator<Dynamic>
{
	@:overload public function new(headers : javax.xml.soap.MimeHeaders) : Void;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
