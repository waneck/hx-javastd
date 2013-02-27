package sun.net;
/*
* Copyright (c) 1995, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class NetworkServer implements java.lang.Runnable implements java.lang.Cloneable
{
	/** Socket for communicating with client. */
	public var clientSocket : java.net.Socket;
	
	/** Stream for printing to the client. */
	public var clientOutput : java.io.PrintStream;
	
	/** Buffered stream for reading replies from client. */
	public var clientInput : java.io.InputStream;
	
	/** Close an open connection to the client. */
	@:overload public function close() : Void;
	
	/** Return client connection status */
	@:overload public function clientIsOpen() : Bool;
	
	@:overload @:final public function run() : Void;
	
	/** Start a server on port <i>port</i>.  It will call serviceRequest()
	for each new connection. */
	@:overload @:final public function startServer(port : Int) : Void;
	
	/** Service one request.  It is invoked with the clientInput and
	clientOutput streams initialized.  This method handles one client
	connection. When it is done, it can simply exit. The default
	server just echoes it's input. It is invoked in it's own private
	thread. */
	@:overload public function serviceRequest() : Void;
	
	@:overload public static function main(argv : java.NativeArray<String>) : Void;
	
	/**
	* Clone this object;
	*/
	@:overload public function clone() : Dynamic;
	
	@:overload public function new() : Void;
	
	
}
