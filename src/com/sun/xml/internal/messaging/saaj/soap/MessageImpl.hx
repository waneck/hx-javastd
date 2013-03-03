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
	@:public @:static @:final public static var CONTENT_ID(default, null) : String;
	
	@:public @:static @:final public static var CONTENT_LOCATION(default, null) : String;
	
	@:protected @:static @:final private static var log(default, null) : java.util.logging.Logger;
	
	@:protected @:static @:final private static var PLAIN_XML_FLAG(default, null) : Int;
	
	@:protected @:static @:final private static var MIME_MULTIPART_FLAG(default, null) : Int;
	
	@:protected @:static @:final private static var SOAP1_1_FLAG(default, null) : Int;
	
	@:protected @:static @:final private static var SOAP1_2_FLAG(default, null) : Int;
	
	@:protected @:static @:final private static var MIME_MULTIPART_XOP_SOAP1_1_FLAG(default, null) : Int;
	
	@:protected @:static @:final private static var MIME_MULTIPART_XOP_SOAP1_2_FLAG(default, null) : Int;
	
	@:protected @:static @:final private static var XOP_FLAG(default, null) : Int;
	
	@:protected @:static @:final private static var FI_ENCODED_FLAG(default, null) : Int;
	
	@:protected private var headers : javax.xml.soap.MimeHeaders;
	
	@:protected private var soapPartImpl : com.sun.xml.internal.messaging.saaj.soap.SOAPPartImpl;
	
	@:protected private var attachments : com.sun.xml.internal.messaging.saaj.util.FinalArrayList;
	
	@:protected private var saved : Bool;
	
	@:protected private var messageBytes : java.NativeArray<java.StdTypes.Int8>;
	
	@:protected private var messageByteCount : Int;
	
	@:protected private var properties : java.util.HashMap<Dynamic, Dynamic>;
	
	@:protected private var multiPart : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeMultipart;
	
	@:protected private var attachmentsInitialized : Bool;
	
	@:protected private var mmp : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeMultipart;
	
	/**
	* Construct a new message. This will be invoked before message
	* sends.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Construct a new message. This will be invoked before message
	* sends.
	*/
	@:overload @:protected private function new(isFastInfoset : Bool, acceptFastInfoset : Bool) : Void;
	
	/**
	* Shallow copy.
	*/
	@:overload @:protected private function new(msg : javax.xml.soap.SOAPMessage) : Void;
	
	/**
	* @param stat
	*      the mask value obtained from {@link #identifyContentType(ContentType)}
	*/
	@:overload @:protected @:static private static function isSoap1_1Content(stat : Int) : Bool;
	
	/**
	* @param stat
	*      the mask value obtained from {@link #identifyContentType(ContentType)}
	*/
	@:overload @:protected @:static private static function isSoap1_2Content(stat : Int) : Bool;
	
	/**
	* Construct a message from an input stream. When messages are
	* received, there's two parts -- the transport headers and the
	* message content in a transport specific stream.
	*/
	@:overload @:protected private function new(headers : javax.xml.soap.MimeHeaders, _in : java.io.InputStream) : Void;
	
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
	@:overload @:protected private function new(headers : javax.xml.soap.MimeHeaders, contentType : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ContentType, stat : Int, _in : java.io.InputStream) : Void;
	
	@:overload @:public public function isFastInfoset() : Bool;
	
	@:overload @:public public function acceptFastInfoset() : Bool;
	
	@:overload @:public public function setIsFastInfoset(value : Bool) : Void;
	
	@:overload @:public override public function getProperty(property : String) : Dynamic;
	
	@:overload @:public override public function setProperty(property : String, value : Dynamic) : Void;
	
	@:overload @:protected @:abstract private function isCorrectSoapVersion(contentTypeId : Int) : Bool;
	
	@:overload @:protected @:abstract private function getExpectedContentType() : String;
	
	@:overload @:protected @:abstract private function getExpectedAcceptHeader() : String;
	
	@:overload @:public override public function getMimeHeaders() : javax.xml.soap.MimeHeaders;
	
	/*
	* Get the complete ContentType value along with optional parameters.
	*/
	@:overload @:public public function getContentType() : String;
	
	@:overload @:public public function setContentType(type : String) : Void;
	
	/*
	* Return the MIME type string, without the parameters.
	*/
	@:overload @:public public function getBaseType() : String;
	
	@:overload @:public public function setBaseType(type : String) : Void;
	
	@:overload @:public public function getAction() : String;
	
	@:overload @:public public function setAction(action : String) : Void;
	
	@:overload @:public public function getCharset() : String;
	
	@:overload @:public public function setCharset(charset : String) : Void;
	
	@:overload @:public override public function saveRequired() : Bool;
	
	@:overload @:public override public function getContentDescription() : String;
	
	@:overload @:public override public function setContentDescription(description : String) : Void;
	
	@:overload @:public @:abstract override public function getSOAPPart() : javax.xml.soap.SOAPPart;
	
	@:overload @:public override public function removeAllAttachments() : Void;
	
	@:overload @:public override public function countAttachments() : Int;
	
	@:overload @:public override public function addAttachmentPart(attachment : javax.xml.soap.AttachmentPart) : Void;
	
	@:overload @:public override public function getAttachments() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function getAttachments(headers : javax.xml.soap.MimeHeaders) : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function removeAttachments(headers : javax.xml.soap.MimeHeaders) : Void;
	
	@:overload @:public override public function createAttachmentPart() : javax.xml.soap.AttachmentPart;
	
	@:overload @:public override public function getAttachment(element : javax.xml.soap.SOAPElement) : javax.xml.soap.AttachmentPart;
	
	@:overload @:public override public function saveChanges() : Void;
	
	@:overload @:public override public function writeTo(out : java.io.OutputStream) : Void;
	
	@:overload @:public override public function getSOAPBody() : javax.xml.soap.SOAPBody;
	
	@:overload @:public override public function getSOAPHeader() : javax.xml.soap.SOAPHeader;
	
	@:overload @:public public function setLazyAttachments(flag : Bool) : Void;
	
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$MessageImpl$MimeMatchingIterator') @:internal extern class MessageImpl_MimeMatchingIterator implements java.util.Iterator<Dynamic>
{
	@:overload @:public public function new(headers : javax.xml.soap.MimeHeaders) : Void;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function remove() : Void;
	
	
}
