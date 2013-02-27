package javax.xml.ws.spi.http;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class HttpHandler
{
	/**
	* Handles a given request and generates an appropriate response.
	* See {@link HttpExchange} for a description of the steps
	* involved in handling an exchange. Container invokes this method
	* when it receives an incoming request.
	*
	* @param exchange the exchange containing the request from the
	*      client and used to send the response
	* @throws IOException when an I/O error happens during request
	*      handling
	*/
	@:overload @:abstract public function handle(exchange : javax.xml.ws.spi.http.HttpExchange) : Void;
	
	
}
