package sun.java2d;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Disposer implements java.lang.Runnable
{
	@:public @:static @:final public static var WEAK(default, null) : Int;
	
	@:public @:static @:final public static var PHANTOM(default, null) : Int;
	
	@:public @:static public static var refType : Int;
	
	/**
	* Registers the object and the native data for later disposal.
	* @param target Object to be registered
	* @param disposeMethod pointer to the native disposal method
	* @param pData pointer to the data to be passed to the
	*              native disposal method
	*/
	@:overload @:public @:static public static function addRecord(target : Dynamic, disposeMethod : haxe.Int64, pData : haxe.Int64) : Void;
	
	/**
	* Registers the object and the native data for later disposal.
	* @param target Object to be registered
	* @param rec the associated DisposerRecord object
	* @see DisposerRecord
	*/
	@:overload @:public @:static public static function addRecord(target : Dynamic, rec : sun.java2d.DisposerRecord) : Void;
	
	@:overload @:public public function run() : Void;
	
	/*
	* Set to indicate the queue is presently being polled.
	*/
	@:public @:static @:volatile public static var pollingQueue : Bool;
	
	/*
	* The pollRemove() method is called back from a dispose method
	* that is running on the toolkit thread and wants to
	* dispose any pending refs that are safe to be disposed
	* on that thread.
	*/
	@:overload @:public @:static public static function pollRemove() : Void;
	
	/*
	* This was added for use by the 2D font implementation to avoid creation
	* of an additional disposer thread.
	* WARNING: this thread class monitors a specific queue, so a reference
	* added here must have been created with this queue. Failure to do
	* so will clutter the records hashmap and no one will be cleaning up
	* the reference queue.
	*/
	@:overload @:public @:static public static function addReference(ref : java.lang.ref.Reference<Dynamic>, rec : sun.java2d.DisposerRecord) : Void;
	
	@:overload @:public @:static public static function addObjectRecord(obj : Dynamic, rec : sun.java2d.DisposerRecord) : Void;
	
	/* This is intended for use in conjunction with addReference(..)
	*/
	@:overload @:public @:static public static function getQueue() : java.lang.ref.ReferenceQueue<Dynamic>;
	
	
}
/*
* This is a marker interface that, if implemented, means it
* doesn't acquire any special locks, and is safe to
* be disposed in the poll loop on whatever thread
* which happens to be the Toolkit thread, is in use.
*/
@:native('sun$java2d$Disposer$PollDisposable') extern interface Disposer_PollDisposable
{
	
}
