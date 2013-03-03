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
extern class AttachmentPartImpl extends javax.xml.soap.AttachmentPart
{
	/**
	* Implementation of attachments.
	*
	* @author Anil Vijendran (akv@eng.sun.com)
	*/
	@:protected @:static @:final private static var log(default, null) : java.util.logging.Logger;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(part : com.sun.xml.internal.org.jvnet.mimepull.MIMEPart) : Void;
	
	@:overload @:public override public function getSize() : Int;
	
	@:overload @:public override public function clearContent() : Void;
	
	@:overload @:public override public function getContent() : Dynamic;
	
	@:overload @:public override public function setContent(object : Dynamic, contentType : String) : Void;
	
	@:overload @:public override public function getDataHandler() : javax.activation.DataHandler;
	
	@:overload @:public override public function setDataHandler(dataHandler : javax.activation.DataHandler) : Void;
	
	@:overload @:public override public function removeAllMimeHeaders() : Void;
	
	@:overload @:public override public function removeMimeHeader(header : String) : Void;
	
	@:overload @:public override public function getMimeHeader(name : String) : java.NativeArray<String>;
	
	@:overload @:public override public function setMimeHeader(name : String, value : String) : Void;
	
	@:overload @:public override public function addMimeHeader(name : String, value : String) : Void;
	
	@:overload @:public override public function getAllMimeHeaders() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function getMatchingMimeHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function getNonMatchingMimeHeaders(names : java.NativeArray<String>) : java.util.Iterator<Dynamic>;
	
	@:overload @:public @:static public static function copyMimeHeaders(headers : javax.xml.soap.MimeHeaders, mbp : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart) : Void;
	
	@:overload @:public @:static public static function copyMimeHeaders(mbp : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart, ap : com.sun.xml.internal.messaging.saaj.soap.AttachmentPartImpl) : Void;
	
	@:overload @:public override public function setBase64Content(content : java.io.InputStream, contentType : String) : Void;
	
	@:overload @:public override public function getBase64Content() : java.io.InputStream;
	
	@:overload @:public override public function setRawContent(content : java.io.InputStream, contentType : String) : Void;
	
	/*
	public void setRawContentBytes(byte[] content, String contentType)
	throws SOAPException {
	if (content == null) {
	throw new SOAPExceptionImpl("Null content passed to setRawContentBytes");
	}
	dataHandler = null;
	try {
	InternetHeaders hdrs = new InternetHeaders();
	hdrs.setHeader("Content-Type", contentType);
	rawContent = new MimeBodyPart(hdrs, content, content.length);
	setMimeHeader("Content-Type", contentType);
	} catch (Exception e) {
	log.log(Level.SEVERE, "SAAJ0576.soap.attachment.setrawcontent.exception", e);
	throw new SOAPExceptionImpl(e.getLocalizedMessage());
	}
	} */
	@:overload @:public override public function setRawContentBytes(content : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int, contentType : String) : Void;
	
	@:overload @:public override public function getRawContent() : java.io.InputStream;
	
	@:overload @:public override public function getRawContentBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function getMimeHeaders() : javax.xml.soap.MimeHeaders;
	
	
}
