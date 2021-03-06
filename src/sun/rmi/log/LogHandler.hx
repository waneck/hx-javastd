package sun.rmi.log;
/*
* Copyright (c) 1997, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class LogHandler
{
	/**
	* Creates a LogHandler for a ReliableLog.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates and returns the initial state of data structure that needs
	* to be stably stored. This method is called when a ReliableLog is
	* created.
	* @return the initial state
	* @exception Exception can raise any exception
	*/
	@:overload @:public @:abstract public function initialSnapshot() : Dynamic;
	
	/**
	* Writes the snapshot object to a stream.  This callback is
	* invoked when the client calls the snaphot method of ReliableLog.
	* @param out the output stream
	* @param value the snapshot
	* @exception Exception can raise any exception
	*/
	@:overload @:public public function snapshot(out : java.io.OutputStream, value : Dynamic) : Void;
	
	/**
	* Read the snapshot object from a stream and returns the snapshot.
	* This callback is invoked when the client calls the recover method
	* of ReliableLog.
	* @param in the input stream
	* @return the state (snapshot)
	* @exception Exception can raise any exception
	*/
	@:overload @:public public function recover(_in : java.io.InputStream) : Dynamic;
	
	/**
	* Writes the representation (a serializable object) of an update
	* to a stream.  This callback is invoked when the client calls the
	* update method of ReliableLog.
	* @param out the output stream
	* @param value the snapshot
	* @exception Exception can raise any exception
	*/
	@:overload @:public public function writeUpdate(out : sun.rmi.log.LogOutputStream, value : Dynamic) : Void;
	
	/**
	* Reads a stably logged update (a serializable object) from a
	* stream.  This callback is invoked during recovery, once for
	* every record in the log.  After reading the update, this method
	* invokes the applyUpdate (abstract) method in order to obtain
	* the new snapshot value.  It then returns the new snapshot.
	*
	* @param in the input stream
	* @param state the current state
	* @return the new state
	* @exception Exception can raise any exception
	*/
	@:overload @:public public function readUpdate(_in : sun.rmi.log.LogInputStream, state : Dynamic) : Dynamic;
	
	/**
	* Reads a stably logged update (a serializable object) from a stream.
	* This callback is invoked during recovery, once for every record in the
	* log.  After reading the update, this method is invoked in order to
	* obtain the new snapshot value.  The method should apply the update
	* object to the current state <code>state</code> and return the new
	* state (the new snapshot value).
	* @param update the update object
	* @param state the current state
	* @return the new state
	* @exception Exception can raise any exception
	*/
	@:overload @:public @:abstract public function applyUpdate(update : Dynamic, state : Dynamic) : Dynamic;
	
	
}
