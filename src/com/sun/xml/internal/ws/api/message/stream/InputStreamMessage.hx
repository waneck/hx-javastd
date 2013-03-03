package com.sun.xml.internal.ws.api.message.stream;
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
extern class InputStreamMessage extends com.sun.xml.internal.ws.api.message.stream.StreamBasedMessage
{
	/**
	* The MIME content-type of the encoding.
	*/
	@:public @:final public var contentType(default, null) : String;
	
	/**
	* The message represented as an {@link InputStream}.
	*/
	@:public @:final public var msg(default, null) : java.io.InputStream;
	
	/**
	* Create a new message.
	*
	* @param properties
	*      the properties of the message.
	*
	* @param contentType
	*      the MIME content-type of the encoding.
	*
	* @param msg
	*      always a non-null unconsumed {@link InputStream} that
	*      represents a request.
	*/
	@:overload @:public public function new(properties : com.sun.xml.internal.ws.api.message.Packet, contentType : String, msg : java.io.InputStream) : Void;
	
	/**
	* Create a new message.
	*
	* @param properties
	*      the properties of the message.
	*
	* @param attachments
	*      the attachments of the message.
	*
	* @param contentType
	*      the MIME content-type of the encoding.
	*
	* @param msg
	*      always a non-null unconsumed {@link InputStream} that
	*      represents a request.
	*/
	@:overload @:public public function new(properties : com.sun.xml.internal.ws.api.message.Packet, attachments : com.sun.xml.internal.ws.api.message.AttachmentSet, contentType : String, msg : java.io.InputStream) : Void;
	
	
}
