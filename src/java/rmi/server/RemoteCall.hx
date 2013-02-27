package java.rmi.server;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface RemoteCall
{
	/**
	* Return the output stream the stub/skeleton should put arguments/results
	* into.
	*
	* @return output stream for arguments/results
	* @exception java.io.IOException if an I/O error occurs.
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload public function getOutputStream() : java.io.ObjectOutput;
	
	/**
	* Release the output stream; in some transports this would release
	* the stream.
	*
	* @exception java.io.IOException if an I/O error occurs.
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload public function releaseOutputStream() : Void;
	
	/**
	* Get the InputStream that the stub/skeleton should get
	* results/arguments from.
	*
	* @return input stream for reading arguments/results
	* @exception java.io.IOException if an I/O error occurs.
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload public function getInputStream() : java.io.ObjectInput;
	
	/**
	* Release the input stream. This would allow some transports to release
	* the channel early.
	*
	* @exception java.io.IOException if an I/O error occurs.
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload public function releaseInputStream() : Void;
	
	/**
	* Returns an output stream (may put out header information
	* relating to the success of the call). Should only succeed
	* once per remote call.
	*
	* @param success If true, indicates normal return, else indicates
	* exceptional return.
	* @return output stream for writing call result
	* @exception java.io.IOException              if an I/O error occurs.
	* @exception java.io.StreamCorruptedException If already been called.
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload public function getResultStream(success : Bool) : java.io.ObjectOutput;
	
	/**
	* Do whatever it takes to execute the call.
	*
	* @exception java.lang.Exception if a general exception occurs.
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload public function executeCall() : Void;
	
	/**
	* Allow cleanup after the remote call has completed.
	*
	* @exception java.io.IOException if an I/O error occurs.
	* @since JDK1.1
	* @deprecated no replacement
	*/
	@:require(java1) @:overload public function done() : Void;
	
	
}
