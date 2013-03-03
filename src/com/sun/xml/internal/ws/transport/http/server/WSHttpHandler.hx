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
@:internal extern class WSHttpHandler implements com.sun.net.httpserver.HttpHandler
{
	@:overload @:public public function new(adapter : com.sun.xml.internal.ws.transport.http.HttpAdapter, executor : java.util.concurrent.Executor) : Void;
	
	/**
	* Called by HttpServer when there is a matching request for the context
	*/
	@:overload @:public public function handle(msg : com.sun.net.httpserver.HttpExchange) : Void;
	
	@:overload @:public public function handleExchange(msg : com.sun.net.httpserver.HttpExchange) : Void;
	
	
}
/**
* Wrapping the processing of request in a Runnable so that it can be
* executed in Executor.
*/
@:native('com$sun$xml$internal$ws$transport$http$server$WSHttpHandler$HttpHandlerRunnable') @:internal extern class WSHttpHandler_HttpHandlerRunnable implements java.lang.Runnable
{
	@:overload @:public public function run() : Void;
	
	
}
