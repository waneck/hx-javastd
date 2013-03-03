package sun.nio.fs;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* Base implementation class for watch keys.
*/
@:internal extern class AbstractWatchKey implements java.nio.file.WatchKey
{
	@:overload @:protected private function new(dir : java.nio.file.Path, watcher : sun.nio.fs.AbstractWatchService) : Void;
	
	/**
	* Return the original watchable (Path)
	*/
	@:overload @:public public function watchable() : java.nio.file.Path;
	
	@:overload @:public @:final public function pollEvents() : java.util.List<java.nio.file.WatchEvent<Dynamic>>;
	
	@:overload @:public @:final public function reset() : Bool;
	
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
	
	
}
/**
* Possible key states
*/
@:native('sun$nio$fs$AbstractWatchKey$State') privateextern enum AbstractWatchKey_State
{
	READY;
	SIGNALLED;
	
}

/**
* WatchEvent implementation
*/
@:native('sun$nio$fs$AbstractWatchKey$Event') @:internal extern class AbstractWatchKey_Event<T> implements java.nio.file.WatchEvent<T>
{
	@:overload @:public public function kind() : java.nio.file.WatchEvent.WatchEvent_Kind<T>;
	
	@:overload @:public public function context() : T;
	
	@:overload @:public public function count() : Int;
	
	
}
