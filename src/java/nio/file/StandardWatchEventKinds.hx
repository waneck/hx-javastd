package java.nio.file;
/*
* Copyright (c) 2007, 2009, Oracle and/or its affiliates. All rights reserved.
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
* Defines the <em>standard</em> event kinds.
*
* @since 1.7
*/
@:require(java7) extern class StandardWatchEventKinds
{
	/**
	* A special event to indicate that events may have been lost or
	* discarded.
	*
	* <p> The {@link WatchEvent#context context} for this event is
	* implementation specific and may be {@code null}. The event {@link
	* WatchEvent#count count} may be greater than {@code 1}.
	*
	* @see WatchService
	*/
	@:public @:static @:final public static var OVERFLOW(default, null) : java.nio.file.WatchEvent.WatchEvent_Kind<Dynamic>;
	
	/**
	* Directory entry created.
	*
	* <p> When a directory is registered for this event then the {@link WatchKey}
	* is queued when it is observed that an entry is created in the directory
	* or renamed into the directory. The event {@link WatchEvent#count count}
	* for this event is always {@code 1}.
	*/
	@:public @:static @:final public static var ENTRY_CREATE(default, null) : java.nio.file.WatchEvent.WatchEvent_Kind<java.nio.file.Path>;
	
	/**
	* Directory entry deleted.
	*
	* <p> When a directory is registered for this event then the {@link WatchKey}
	* is queued when it is observed that an entry is deleted or renamed out of
	* the directory. The event {@link WatchEvent#count count} for this event
	* is always {@code 1}.
	*/
	@:public @:static @:final public static var ENTRY_DELETE(default, null) : java.nio.file.WatchEvent.WatchEvent_Kind<java.nio.file.Path>;
	
	/**
	* Directory entry modified.
	*
	* <p> When a directory is registered for this event then the {@link WatchKey}
	* is queued when it is observed that an entry in the directory has been
	* modified. The event {@link WatchEvent#count count} for this event is
	* {@code 1} or greater.
	*/
	@:public @:static @:final public static var ENTRY_MODIFY(default, null) : java.nio.file.WatchEvent.WatchEvent_Kind<java.nio.file.Path>;
	
	
}
@:native('java$nio$file$StandardWatchEventKinds$StdWatchEventKind') @:internal extern class StandardWatchEventKinds_StdWatchEventKind<T> implements java.nio.file.WatchEvent.WatchEvent_Kind<T>
{
	@:overload @:public public function name() : String;
	
	@:overload @:public public function type() : Class<T>;
	
	@:overload @:public public function toString() : String;
	
	
}
