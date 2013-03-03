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
extern interface WatchKey
{
	/**
	* Tells whether or not this watch key is valid.
	*
	* <p> A watch key is valid upon creation and remains until it is cancelled,
	* or its watch service is closed.
	*
	* @return  {@code true} if, and only if, this watch key is valid
	*/
	@:overload @:public public function isValid() : Bool;
	
	/**
	* Retrieves and removes all pending events for this watch key, returning
	* a {@code List} of the events that were retrieved.
	*
	* <p> Note that this method does not wait if there are no events pending.
	*
	* @return  the list of the events retrieved; may be empty
	*/
	@:overload public function pollEvents() : java.util.List<java.nio.file.WatchEvent<Dynamic>>;
	
	/**
	* Resets this watch key.
	*
	* <p> If this watch key has been cancelled or this watch key is already in
	* the ready state then invoking this method has no effect. Otherwise
	* if there are pending events for the object then this watch key is
	* immediately re-queued to the watch service. If there are no pending
	* events then the watch key is put into the ready state and will remain in
	* that state until an event is detected or the watch key is cancelled.
	*
	* @return  {@code true} if the watch key is valid and has been reset, and
	*          {@code false} if the watch key could not be reset because it is
	*          no longer {@link #isValid valid}
	*/
	@:overload public function reset() : Bool;
	
	/**
	* Cancels the registration with the watch service. Upon return the watch key
	* will be invalid. If the watch key is enqueued, waiting to be retrieved
	* from the watch service, then it will remain in the queue until it is
	* removed. Pending events, if any, remain pending and may be retrieved by
	* invoking the {@link #pollEvents pollEvents} method after the key is
	* cancelled.
	*
	* <p> If this watch key has already been cancelled then invoking this
	* method has no effect.  Once cancelled, a watch key remains forever invalid.
	*/
	@:overload @:public public function cancel() : Void;
	
	/**
	* Returns the object for which this watch key was created. This method will
	* continue to return the object even after the key is cancelled.
	*
	* <p> As the {@code WatchService} is intended to map directly on to the
	* native file event notification facility (where available) then many of
	* details on how registered objects are watched is highly implementation
	* specific. When watching a directory for changes for example, and the
	* directory is moved or renamed in the file system, there is no guarantee
	* that the watch key will be cancelled and so the object returned by this
	* method may no longer be a valid path to the directory.
	*
	* @return the object for which this watch key was created
	*/
	@:overload public function watchable() : java.nio.file.Watchable;
	
	
}
