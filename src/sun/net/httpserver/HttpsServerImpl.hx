package sun.net.httpserver;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class HttpsServerImpl extends com.sun.net.httpserver.HttpsServer
{
	@:overload override public function setHttpsConfigurator(config : com.sun.net.httpserver.HttpsConfigurator) : Void;
	
	@:overload override public function getHttpsConfigurator() : com.sun.net.httpserver.HttpsConfigurator;
	
	@:overload override public function bind(addr : java.net.InetSocketAddress, backlog : Int) : Void;
	
	@:overload override public function start() : Void;
	
	@:overload override public function setExecutor(executor : java.util.concurrent.Executor) : Void;
	
	@:overload override public function getExecutor() : java.util.concurrent.Executor;
	
	@:overload override public function stop(delay : Int) : Void;
	
	@:overload override public function createContext(path : String, handler : com.sun.net.httpserver.HttpHandler) : sun.net.httpserver.HttpContextImpl;
	
	@:overload override public function createContext(path : String) : sun.net.httpserver.HttpContextImpl;
	
	@:overload override public function removeContext(path : String) : Void;
	
	@:overload override public function removeContext(context : com.sun.net.httpserver.HttpContext) : Void;
	
	@:overload override public function getAddress() : java.net.InetSocketAddress;
	
	
}
