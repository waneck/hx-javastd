package sun.rmi.transport;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class StreamRemoteCall implements java.rmi.server.RemoteCall
{
	@:overload @:public public function new(c : sun.rmi.transport.Connection) : Void;
	
	@:overload @:public public function new(c : sun.rmi.transport.Connection, id : java.rmi.server.ObjID, op : Int, hash : haxe.Int64) : Void;
	
	/**
	* Return the connection associated with this call.
	*/
	@:overload @:public public function getConnection() : sun.rmi.transport.Connection;
	
	/**
	* Return the output stream the stub/skeleton should put arguments/results
	* into.
	*/
	@:overload @:public public function getOutputStream() : java.io.ObjectOutput;
	
	/**
	* Release the outputStream  Currently, will not complain if the
	* output stream is released more than once.
	*/
	@:overload @:public public function releaseOutputStream() : Void;
	
	/**
	* Get the InputStream the stub/skeleton should get results/arguments
	* from.
	*/
	@:overload @:public public function getInputStream() : java.io.ObjectInput;
	
	/**
	* Release the input stream, this would allow some transports to release
	* the channel early.
	*/
	@:overload @:public public function releaseInputStream() : Void;
	
	/**
	* Returns an output stream (may put out header information
	* relating to the success of the call).
	* @param success If true, indicates normal return, else indicates
	* exceptional return.
	* @exception StreamCorruptedException If result stream previously
	* acquired
	* @exception IOException For any other problem with I/O.
	*/
	@:overload @:public public function getResultStream(success : Bool) : java.io.ObjectOutput;
	
	/**
	* Do whatever it takes to execute the call.
	*/
	@:overload @:public public function executeCall() : Void;
	
	/**
	* Routine that causes the stack traces of remote exceptions to be
	* filled in with the current stack trace on the client.  Detail
	* exceptions are filled in iteratively.
	*/
	@:overload @:protected private function exceptionReceivedFromServer(ex : java.lang.Exception) : Void;
	
	/*
	* method to retrieve possible server side exceptions (which will
	* be throw from exceptionReceivedFromServer(...) )
	*/
	@:overload @:public public function getServerException() : java.lang.Exception;
	
	@:overload @:public public function done() : Void;
	
	
}
