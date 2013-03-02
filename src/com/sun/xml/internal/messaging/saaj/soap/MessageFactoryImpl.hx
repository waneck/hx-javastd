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
extern class MessageFactoryImpl extends javax.xml.soap.MessageFactory
{
	/**
	* A factory for creating SOAP messages.
	*
	* Converted to a placeholder for common functionality between SOAP
	* implementations.
	*
	* @author Phil Goodwin (phil.goodwin@sun.com)
	*/
	private static var log(default, null) : java.util.logging.Logger;
	
	private var listener : java.io.OutputStream;
	
	private var lazyAttachments : Bool;
	
	@:overload public function listen(newListener : java.io.OutputStream) : java.io.OutputStream;
	
	@:overload public function createMessage() : javax.xml.soap.SOAPMessage;
	
	@:overload public function createMessage(isFastInfoset : Bool, acceptFastInfoset : Bool) : javax.xml.soap.SOAPMessage;
	
	@:overload public function createMessage(headers : javax.xml.soap.MimeHeaders, _in : java.io.InputStream) : javax.xml.soap.SOAPMessage;
	
	@:overload @:final private static function getContentType(headers : javax.xml.soap.MimeHeaders) : String;
	
	@:overload public function setLazyAttachmentOptimization(flag : Bool) : Void;
	
	
}
