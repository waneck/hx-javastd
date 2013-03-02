package sun.nio.ch;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class FileLockTable
{
	@:overload private function new() : Void;
	
	/**
	* Creates and returns a file lock table for a channel that is connected to
	* the a system-wide map of all file locks for the Java virtual machine.
	*/
	@:overload public static function newSharedFileLockTable(channel : java.nio.channels.Channel, fd : java.io.FileDescriptor) : sun.nio.ch.FileLockTable;
	
	/**
	* Adds a file lock to the table.
	*
	* @throws OverlappingFileLockException if the file lock overlaps
	*         with an existing file lock in the table
	*/
	@:overload @:abstract public function add(fl : java.nio.channels.FileLock) : Void;
	
	/**
	* Remove an existing file lock from the table.
	*/
	@:overload @:abstract public function remove(fl : java.nio.channels.FileLock) : Void;
	
	/**
	* Removes all file locks from the table.
	*
	* @return  The list of file locks removed
	*/
	@:overload @:abstract public function removeAll() : java.util.List<java.nio.channels.FileLock>;
	
	/**
	* Replaces an existing file lock in the table.
	*/
	@:overload @:abstract public function replace(fl1 : java.nio.channels.FileLock, fl2 : java.nio.channels.FileLock) : Void;
	
	
}
@:internal extern class SharedFileLockTable extends sun.nio.ch.FileLockTable
{
	@:overload override public function add(fl : java.nio.channels.FileLock) : Void;
	
	@:overload override public function remove(fl : java.nio.channels.FileLock) : Void;
	
	@:overload override public function removeAll() : java.util.List<java.nio.channels.FileLock>;
	
	@:overload override public function replace(fromLock : java.nio.channels.FileLock, toLock : java.nio.channels.FileLock) : Void;
	
	
}
/**
* A weak reference to a FileLock.
* <p>
* SharedFileLockTable uses a list of file lock references to avoid keeping the
* FileLock (and FileChannel) alive.
*/
@:native('sun$nio$ch$SharedFileLockTable$FileLockReference') @:internal extern class SharedFileLockTable_FileLockReference extends java.lang.ref.WeakReference<java.nio.channels.FileLock>
{
	
}
