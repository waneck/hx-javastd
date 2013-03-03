package sun.rmi.log;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ReliableLog
{
	/**
	* This class is a simple implementation of a reliable Log.  The
	* client of a ReliableLog must provide a set of callbacks (via a
	* LogHandler) that enables a ReliableLog to read and write
	* checkpoints and log records.  This implementation ensures that the
	* current value of the data stored (via a ReliableLog) is recoverable
	* after a system crash. <p>
	*
	* The secondary storage strategy is to record values in files using a
	* representation of the caller's choosing.  Two sorts of files are
	* kept: snapshots and logs.  At any instant, one snapshot is current.
	* The log consists of a sequence of updates that have occurred since
	* the current snapshot was taken.  The current stable state is the
	* value of the snapshot, as modified by the sequence of updates in
	* the log.  From time to time, the client of a ReliableLog instructs
	* the package to make a new snapshot and clear the log.  A ReliableLog
	* arranges disk writes such that updates are stable (as long as the
	* changes are force-written to disk) and atomic : no update is lost,
	* and each update either is recorded completely in the log or not at
	* all.  Making a new snapshot is also atomic. <p>
	*
	* Normal use for maintaining the recoverable store is as follows: The
	* client maintains the relevant data structure in virtual memory.  As
	* updates happen to the structure, the client informs the ReliableLog
	* (all it "log") by calling log.update.  Periodically, the client
	* calls log.snapshot to provide the current value of the data
	* structure.  On restart, the client calls log.recover to obtain the
	* latest snapshot and the following sequences of updates; the client
	* applies the updates to the snapshot to obtain the state that
	* existed before the crash. <p>
	*
	* The current logfile format is: <ol>
	* <li> a format version number (two 4-octet integers, major and
	* minor), followed by
	* <li> a sequence of log records.  Each log record contains, in
	* order, <ol>
	* <li> a 4-octet integer representing the length of the following log
	* data,
	* <li> the log data (variable length). </ol> </ol> <p>
	*
	* @see LogHandler
	*
	* @author Ann Wollrath
	*
	*/
	@:public @:final @:static public static var PreferredMajorVersion(default, null) : Int;
	
	@:public @:final @:static public static var PreferredMinorVersion(default, null) : Int;
	
	/**
	* Creates a ReliableLog to handle checkpoints and logging in a
	* stable storage directory.
	*
	* @param dirPath path to the stable storage directory
	* @param logCl the closure object containing callbacks for logging and
	* recovery
	* @param pad ignored
	* @exception IOException If a directory creation error has
	* occurred or if initialSnapshot callback raises an exception or
	* if an exception occurs during invocation of the handler's
	* snapshot method or if other IOException occurs.
	*/
	@:overload @:public public function new(dirPath : String, handler : sun.rmi.log.LogHandler, pad : Bool) : Void;
	
	/**
	* Creates a ReliableLog to handle checkpoints and logging in a
	* stable storage directory.
	*
	* @param dirPath path to the stable storage directory
	* @param logCl the closure object containing callbacks for logging and
	* recovery
	* @exception IOException If a directory creation error has
	* occurred or if initialSnapshot callback raises an exception
	*/
	@:overload @:public public function new(dirPath : String, handler : sun.rmi.log.LogHandler) : Void;
	
	/**
	* Returns an object which is the value recorded in the current
	* snapshot.  This snapshot is recovered by calling the client
	* supplied callback "recover" and then subsequently invoking
	* the "readUpdate" callback to apply any logged updates to the state.
	*
	* @exception IOException If recovery fails due to serious log
	* corruption, read update failure, or if an exception occurs
	* during the recover callback
	*/
	@:overload @:public @:synchronized public function recover() : Dynamic;
	
	/**
	* Records this update in the log file (does not force update to disk).
	* The update is recorded by calling the client's "writeUpdate" callback.
	* This method must not be called until this log's recover method has
	* been invoked (and completed).
	*
	* @param value the object representing the update
	* @exception IOException If an exception occurred during a
	* writeUpdate callback or if other I/O error has occurred.
	*/
	@:overload @:public @:synchronized public function update(value : Dynamic) : Void;
	
	/**
	* Records this update in the log file.  The update is recorded by
	* calling the client's writeUpdate callback.  This method must not be
	* called until this log's recover method has been invoked
	* (and completed).
	*
	* @param value the object representing the update
	* @param forceToDisk ignored; changes are always forced to disk
	* @exception IOException If force-write to log failed or an
	* exception occurred during the writeUpdate callback or if other
	* I/O error occurs while updating the log.
	*/
	@:overload @:public @:synchronized public function update(value : Dynamic, forceToDisk : Bool) : Void;
	
	/**
	* Records this value as the current snapshot by invoking the client
	* supplied "snapshot" callback and then empties the log.
	*
	* @param value the object representing the new snapshot
	* @exception IOException If an exception occurred during the
	* snapshot callback or if other I/O error has occurred during the
	* snapshot process
	*/
	@:overload @:public @:synchronized public function snapshot(value : Dynamic) : Void;
	
	/**
	* Close the stable storage directory in an orderly manner.
	*
	* @exception IOException If an I/O error occurs when the log is
	* closed
	*/
	@:overload @:public @:synchronized public function close() : Void;
	
	/**
	* Returns the size of the snapshot file in bytes;
	*/
	@:overload @:public public function snapshotSize() : haxe.Int64;
	
	/**
	* Returns the size of the log file in bytes;
	*/
	@:overload @:public public function logSize() : haxe.Int64;
	
	
}
/**
* ReliableLog's log file implementation.  This implementation
* is subclassable for testing purposes.
*/
@:native('sun$rmi$log$ReliableLog$LogFile') extern class ReliableLog_LogFile extends java.io.RandomAccessFile
{
	/**
	* Constructs a LogFile and initializes the file descriptor.
	**/
	@:overload @:public public function new(name : String, mode : String) : Void;
	
	/**
	* Invokes sync on the file descriptor for this log file.
	*/
	@:overload @:protected private function sync() : Void;
	
	/**
	* Returns true if writing 4 bytes starting at the specified file
	* position, would span a 512 byte sector boundary; otherwise returns
	* false.
	**/
	@:overload @:protected private function checkSpansBoundary(fp : haxe.Int64) : Bool;
	
	
}
