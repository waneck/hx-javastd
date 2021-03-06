package com.sun.xml.internal.ws.api.pipe;
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
* A Content-Type transport header that will be returned by {@link Codec#encode(com.sun.xml.internal.ws.api.message.Packet, java.io.OutputStream)}.
* It will provide the Content-Type header and also take care of SOAP 1.1 SOAPAction header.
*
* TODO: rename to ContentMetadata?
*
* @author Vivek Pandey
*/
extern interface ContentType
{
	/**
	* Gives non-null Content-Type header value.
	*/
	@:overload @:public public function getContentType() : String;
	
	/**
	* Gives SOAPAction transport header value. It will be non-null only for SOAP 1.1 messages. In other cases
	* it MUST be null. The SOAPAction transport header should be written out only when its non-null.
	*
	* @return It can be null, in that case SOAPAction header should be written.
	*/
	@:overload @:public public function getSOAPActionHeader() : String;
	
	/**
	* Controls the Accept transport header, if the transport supports it.
	* Returning null means the transport need not add any new header.
	*
	* <p>
	* We realize that this is not an elegant abstraction, but
	* this would do for now. If another person comes and asks for
	* a similar functionality, we'll define a real abstraction.
	*/
	@:overload @:public public function getAcceptHeader() : String;
	
	
}
