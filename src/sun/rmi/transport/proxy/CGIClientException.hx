package sun.rmi.transport.proxy;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CGIClientException extends java.lang.Exception
{
	/**
	* CGIClientException is thrown when an error is detected
	* in a client's request.
	*/
	@:overload public function new(s : String) : Void;
	
	
}
@:internal extern class CGIServerException extends java.lang.Exception
{
	/**
	* CGIServerException is thrown when an error occurs here on the server.
	*/
	@:overload public function new(s : String) : Void;
	
	
}
@:internal extern interface CGICommandHandler
{
	/**
	* Return the string form of the command
	* to be recognized in the query string.
	*/
	@:overload public function getName() : String;
	
	/**
	* Execute the command with the given string as parameter.
	*/
	@:overload public function execute(param : String) : Void;
	
	
}
extern class CGIHandler
{
	/**
	* Execute command given in query string on URL.  The string before
	* the first '=' is interpreted as the command name, and the string
	* after the first '=' is the parameters to the command.
	*/
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	
}
@:internal extern class CGIForwardCommand implements sun.rmi.transport.proxy.CGIClientException.CGICommandHandler
{
	/**
	* "forward" command: Forward request body to local port on the server,
	* and send reponse back to client.
	*/
	@:overload public function getName() : String;
	
	@:overload public function execute(param : String) : Void;
	
	
}
@:internal extern class CGIGethostnameCommand implements sun.rmi.transport.proxy.CGIClientException.CGICommandHandler
{
	/**
	* "gethostname" command: Return the host name of the server as the
	* response body
	*/
	@:overload public function getName() : String;
	
	@:overload public function execute(param : String) : Void;
	
	
}
@:internal extern class CGIPingCommand implements sun.rmi.transport.proxy.CGIClientException.CGICommandHandler
{
	/**
	* "ping" command: Return an OK status to indicate that connection
	* was successful.
	*/
	@:overload public function getName() : String;
	
	@:overload public function execute(param : String) : Void;
	
	
}
@:internal extern class CGITryHostnameCommand implements sun.rmi.transport.proxy.CGIClientException.CGICommandHandler
{
	/**
	* "tryhostname" command: Return a human readable message describing
	* what host name is available to local Java VMs.
	*/
	@:overload public function getName() : String;
	
	@:overload public function execute(param : String) : Void;
	
	
}
