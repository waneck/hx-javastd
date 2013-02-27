package com.sun.xml.internal.ws.api.server;
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
extern interface AsyncProviderCallback<T>
{
	/**
	* Indicates that a request was processed successfully.
	*
	* @param response
	*      Represents an object to be sent back to the client
	*      as a response. To indicate one-way, response needs to be null
	*/
	@:overload public function send(response : T) : Void;
	
	/**
	* Indicates that an error had occured while processing a request.
	*
	* @param t
	*      The error is propagated to the client. For example, if this is
	*      a SOAP-based web service, the server will send back a SOAP fault.
	*/
	@:overload public function sendError(t : java.lang.Throwable) : Void;
	
	
}
