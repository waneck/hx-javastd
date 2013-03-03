package com.sun.xml.internal.ws.transport.http.server;
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
extern class ServerAdapter extends com.sun.xml.internal.ws.transport.http.HttpAdapter implements com.sun.xml.internal.ws.api.server.BoundEndpoint
{
	@:overload @:protected private function new(name : String, urlPattern : String, endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>, owner : com.sun.xml.internal.ws.transport.http.server.ServerAdapterList) : Void;
	
	/**
	* Gets the name of the endpoint as given in the <tt>sun-jaxws.xml</tt>
	* deployment descriptor.
	*/
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getAddress() : java.net.URI;
	
	@:overload @:public public function getAddress(baseAddress : String) : java.net.URI;
	
	@:overload @:public public function dispose() : Void;
	
	@:overload @:public public function getUrlPattern() : String;
	
	@:overload @:public public function toString() : String;
	
	
}
