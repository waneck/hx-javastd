package java.nio.file;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface WatchService extends java.io.Closeable
{
	/**
	* Closes this watch service.
	*
	* <p> If a thread is currently blocked in the {@link #take take} or {@link
	* #poll(long,TimeUnit) poll} methods waiting for a key to be queued then
	* it immediately receives a {@link ClosedWatchServiceException}. Any
	* valid keys associated with this watch service are {@link WatchKey#isValid
	* invalidated}.
	*
	* <p> After a watch service is closed, any further attempt to invoke
	* operations upon it will throw {@link ClosedWatchServiceException}.
	* If this watch service is already closed then invoking this method
	* has no effect.
	*
	* @throws  IOException
	*          if an I/O error occurs
	*/
	@:overload public function close() : Void;
	
	/**
	* Retrieves and removes the next watch key, or {@code null} if none are
	* present.
	*
	* @return  the next watch key, or {@code null}
	*
	* @throws  ClosedWatchServiceException
	*          if this watch service is closed
	*/
	@:overload public function poll() : java.nio.file.WatchKey;
	
	/**
	* Retrieves and removes the next watch key, waiting if necessary up to the
	* specified wait time if none are yet present.
	*
	* @param   timeout
	*          how to wait before giving up, in units of unit
	* @param   unit
	*          a {@code TimeUnit} determining how to interpret the timeout
	*          parameter
	*
	* @return  the next watch key, or {@code null}
	*
	* @throws  ClosedWatchServiceException
	*          if this watch service is closed, or it is closed while waiting
	*          for the next key
	* @throws  InterruptedException
	*          if interrupted while waiting
	*/
	@:overload public function poll(timeout : haxe.Int64, unit : java.util.concurrent.TimeUnit) : java.nio.file.WatchKey;
	
	/**
	* Retrieves and removes next watch key, waiting if none are yet present.
	*
	* @return  the next watch key
	*
	* @throws  ClosedWatchServiceException
	*          if this watch service is closed, or it is closed while waiting
	*          for the next key
	* @throws  InterruptedException
	*          if interrupted while waiting
	*/
	@:overload public function take() : java.nio.file.WatchKey;
	
	
}
