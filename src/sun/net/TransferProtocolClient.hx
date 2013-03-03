package sun.net;
/*
* Copyright (c) 1994, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class TransferProtocolClient extends sun.net.NetworkClient
{
	/** Array of strings (usually 1 entry) for the last reply
	from the server. */
	@:protected private var serverResponse : java.util.Vector<Dynamic>;
	
	/** code for last reply */
	@:protected private var lastReplyCode : Int;
	
	/**
	* Pulls the response from the server and returns the code as a
	* number. Returns -1 on failure.
	*/
	@:overload @:public public function readServerResponse() : Int;
	
	/** Sends command <i>cmd</i> to the server. */
	@:overload @:public public function sendServer(cmd : String) : Void;
	
	/** converts the server response into a string. */
	@:overload @:public public function getResponseString() : String;
	
	/** Returns all server response strings. */
	@:overload @:public public function getResponseStrings() : java.util.Vector<Dynamic>;
	
	/** standard constructor to host <i>host</i>, port <i>port</i>. */
	@:overload @:public public function new(host : String, port : Int) : Void;
	
	/** creates an uninitialized instance of this class. */
	@:overload @:public public function new() : Void;
	
	
}
