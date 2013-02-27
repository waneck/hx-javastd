package sun.net.httpserver;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ServerImpl implements sun.net.httpserver.TimeSource
{
	@:overload public function bind(addr : java.net.InetSocketAddress, backlog : Int) : Void;
	
	@:overload public function start() : Void;
	
	@:overload public function setExecutor(executor : java.util.concurrent.Executor) : Void;
	
	@:overload public function getExecutor() : java.util.concurrent.Executor;
	
	@:overload public function setHttpsConfigurator(config : com.sun.net.httpserver.HttpsConfigurator) : Void;
	
	@:overload public function getHttpsConfigurator() : com.sun.net.httpserver.HttpsConfigurator;
	
	@:overload public function stop(delay : Int) : Void;
	
	@:overload @:synchronized public function createContext(path : String, handler : com.sun.net.httpserver.HttpHandler) : sun.net.httpserver.HttpContextImpl;
	
	@:overload @:synchronized public function createContext(path : String) : sun.net.httpserver.HttpContextImpl;
	
	@:overload @:synchronized public function removeContext(path : String) : Void;
	
	@:overload @:synchronized public function removeContext(context : com.sun.net.httpserver.HttpContext) : Void;
	
	@:overload public function getAddress() : java.net.InetSocketAddress;
	
	@:overload public function getTime() : haxe.Int64;
	
	
}
@:native('sun$net$httpserver$ServerImpl$DefaultExecutor') @:internal extern class ServerImpl_DefaultExecutor implements java.util.concurrent.Executor
{
	@:overload public function execute(task : java.lang.Runnable) : Void;
	
	
}
/* main server listener task */
@:native('sun$net$httpserver$ServerImpl$Dispatcher') @:internal extern class ServerImpl_Dispatcher implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	@:overload public function handle(chan : java.nio.channels.SocketChannel, conn : sun.net.httpserver.HttpConnection) : Void;
	
	
}
/* per exchange task */
@:native('sun$net$httpserver$ServerImpl$Exchange') @:internal extern class ServerImpl_Exchange implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
/* used to link to 2 or more Filter.Chains together */
@:native('sun$net$httpserver$ServerImpl$Exchange$LinkHandler') @:internal extern class ServerImpl_Exchange_LinkHandler implements com.sun.net.httpserver.HttpHandler
{
	@:overload public function handle(exchange : com.sun.net.httpserver.HttpExchange) : Void;
	
	
}
/**
* TimerTask run every CLOCK_TICK ms
*/
@:native('sun$net$httpserver$ServerImpl$ServerTimerTask') @:internal extern class ServerImpl_ServerTimerTask extends java.util.TimerTask
{
	@:overload override public function run() : Void;
	
	
}
@:native('sun$net$httpserver$ServerImpl$ServerTimerTask1') @:internal extern class ServerImpl_ServerTimerTask1 extends java.util.TimerTask
{
	@:overload override public function run() : Void;
	
	
}
