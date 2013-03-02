package sun.net.smtp;
/*
* Copyright (c) 1995, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class SmtpClient extends sun.net.TransferProtocolClient
{
	/**
	* issue the QUIT command to the SMTP server and close the connection.
	*/
	@:overload public function closeServer() : Void;
	
	@:overload public function to(s : String) : Void;
	
	@:overload public function from(s : String) : Void;
	
	@:overload public function startMessage() : java.io.PrintStream;
	
	/** New SMTP client connected to host <i>host</i>. */
	@:overload public function new(host : String) : Void;
	
	/** Create an uninitialized SMTP client. */
	@:overload public function new() : Void;
	
	@:overload public function new(to : Int) : Void;
	
	@:overload public function getMailHost() : String;
	
	
}
@:internal extern class SmtpPrintStream extends java.io.PrintStream
{
	@:overload override public function close() : Void;
	
	@:overload override public function write(b : Int) : Void;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload override public function print(s : String) : Void;
	
	
}
