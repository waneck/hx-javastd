package com.sun.xml.internal.messaging.saaj.soap.ver1_1;
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
/**
*
* @author SAAJ RI Development Team
*/
extern class Message1_1Impl extends com.sun.xml.internal.messaging.saaj.soap.MessageImpl implements javax.xml.soap.SOAPConstants
{
	@:native('log') private static var _log(default, null) : java.util.logging.Logger;
	
	@:overload public function new() : Void;
	
	@:overload public function new(isFastInfoset : Bool, acceptFastInfoset : Bool) : Void;
	
	@:overload public function new(msg : javax.xml.soap.SOAPMessage) : Void;
	
	@:overload public function new(headers : javax.xml.soap.MimeHeaders, _in : java.io.InputStream) : Void;
	
	@:overload public function new(headers : javax.xml.soap.MimeHeaders, ct : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ContentType, stat : Int, _in : java.io.InputStream) : Void;
	
	@:overload override public function getSOAPPart() : javax.xml.soap.SOAPPart;
	
	@:overload override private function isCorrectSoapVersion(contentTypeId : Int) : Bool;
	
	@:overload override public function getAction() : String;
	
	@:overload override public function setAction(type : String) : Void;
	
	@:overload override public function getCharset() : String;
	
	@:overload override public function setCharset(charset : String) : Void;
	
	@:overload override private function getExpectedContentType() : String;
	
	@:overload override private function getExpectedAcceptHeader() : String;
	
	
}
