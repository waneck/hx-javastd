package sun.security.util;
/*
* Copyright (c) 2002, 2009, Oracle and/or its affiliates. All rights reserved.
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
* Abstract base class and factory for caches. A cache is a key-value mapping.
* It has properties that make it more suitable for caching than a Map.
*
* The factory methods can be used to obtain two different implementations.
* They have the following properties:
*
*  . keys and values reside in memory
*
*  . keys and values must be non-null
*
*  . maximum size. Replacements are made in LRU order.
*
*  . optional lifetime, specified in seconds.
*
*  . save for concurrent use by multiple threads
*
*  . values are held by either standard references or via SoftReferences.
*    SoftReferences have the advantage that they are automatically cleared
*    by the garbage collector in response to memory demand. This makes it
*    possible to simple set the maximum size to a very large value and let
*    the GC automatically size the cache dynamically depending on the
*    amount of available memory.
*
* However, note that because of the way SoftReferences are implemented in
* HotSpot at the moment, this may not work perfectly as it clears them fairly
* eagerly. Performance may be improved if the Java heap size is set to larger
* value using e.g. java -ms64M -mx128M foo.Test
*
* Cache sizing: the memory cache is implemented on top of a LinkedHashMap.
* In its current implementation, the number of buckets (NOT entries) in
* (Linked)HashMaps is always a power of two. It is recommended to set the
* maximum cache size to value that uses those buckets fully. For example,
* if a cache with somewhere between 500 and 1000 entries is desired, a
* maximum size of 750 would be a good choice: try 1024 buckets, with a
* load factor of 0.75f, the number of entries can be calculated as
* buckets / 4 * 3. As mentioned above, with a SoftReference cache, it is
* generally reasonable to set the size to a fairly large value.
*
* @author Andreas Sterbenz
*/
extern class Cache
{
	@:overload private function new() : Void;
	
	/**
	* Return the number of currently valid entries in the cache.
	*/
	@:overload @:abstract public function size() : Int;
	
	/**
	* Remove all entries from the cache.
	*/
	@:overload @:abstract public function clear() : Void;
	
	/**
	* Add an entry to the cache.
	*/
	@:overload @:abstract public function put(key : Dynamic, value : Dynamic) : Void;
	
	/**
	* Get a value from the cache.
	*/
	@:overload @:abstract public function get(key : Dynamic) : Dynamic;
	
	/**
	* Remove an entry from the cache.
	*/
	@:overload @:abstract public function remove(key : Dynamic) : Void;
	
	/**
	* Set the maximum size.
	*/
	@:overload @:abstract public function setCapacity(size : Int) : Void;
	
	/**
	* Set the timeout(in seconds).
	*/
	@:overload @:abstract public function setTimeout(timeout : Int) : Void;
	
	/**
	* accept a visitor
	*/
	@:overload @:abstract public function accept(visitor : sun.security.util.Cache.Cache_CacheVisitor) : Void;
	
	/**
	* Return a new memory cache with the specified maximum size, unlimited
	* lifetime for entries, with the values held by SoftReferences.
	*/
	@:overload public static function newSoftMemoryCache(size : Int) : sun.security.util.Cache;
	
	/**
	* Return a new memory cache with the specified maximum size, the
	* specified maximum lifetime (in seconds), with the values held
	* by SoftReferences.
	*/
	@:overload public static function newSoftMemoryCache(size : Int, timeout : Int) : sun.security.util.Cache;
	
	/**
	* Return a new memory cache with the specified maximum size, unlimited
	* lifetime for entries, with the values held by standard references.
	*/
	@:overload public static function newHardMemoryCache(size : Int) : sun.security.util.Cache;
	
	/**
	* Return a dummy cache that does nothing.
	*/
	@:overload public static function newNullCache() : sun.security.util.Cache;
	
	/**
	* Return a new memory cache with the specified maximum size, the
	* specified maximum lifetime (in seconds), with the values held
	* by standard references.
	*/
	@:overload public static function newHardMemoryCache(size : Int, timeout : Int) : sun.security.util.Cache;
	
	
}
/**
* Utility class that wraps a byte array and implements the equals()
* and hashCode() contract in a way suitable for Maps and caches.
*/
@:native('sun$security$util$Cache$EqualByteArray') extern class Cache_EqualByteArray
{
	@:overload public function new(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
@:native('sun$security$util$Cache$CacheVisitor') extern interface Cache_CacheVisitor
{
	@:overload public function visit(map : java.util.Map<Dynamic, Dynamic>) : Void;
	
	
}
@:internal extern class NullCache extends sun.security.util.Cache
{
	@:overload override public function size() : Int;
	
	@:overload override public function clear() : Void;
	
	@:overload override public function put(key : Dynamic, value : Dynamic) : Void;
	
	@:overload override public function get(key : Dynamic) : Dynamic;
	
	@:overload override public function remove(key : Dynamic) : Void;
	
	@:overload override public function setCapacity(size : Int) : Void;
	
	@:overload override public function setTimeout(timeout : Int) : Void;
	
	@:overload override public function accept(visitor : sun.security.util.Cache.Cache_CacheVisitor) : Void;
	
	
}
@:internal extern class MemoryCache extends sun.security.util.Cache
{
	@:overload public function new(soft : Bool, maxSize : Int) : Void;
	
	@:overload public function new(soft : Bool, maxSize : Int, lifetime : Int) : Void;
	
	@:overload @:synchronized override public function size() : Int;
	
	@:overload @:synchronized override public function clear() : Void;
	
	@:overload @:synchronized override public function put(key : Dynamic, value : Dynamic) : Void;
	
	@:overload @:synchronized override public function get(key : Dynamic) : Dynamic;
	
	@:overload @:synchronized override public function remove(key : Dynamic) : Void;
	
	@:overload @:synchronized override public function setCapacity(size : Int) : Void;
	
	@:overload @:synchronized override public function setTimeout(timeout : Int) : Void;
	
	@:overload @:synchronized override public function accept(visitor : sun.security.util.Cache.Cache_CacheVisitor) : Void;
	
	@:overload private function newEntry(key : Dynamic, value : Dynamic, expirationTime : haxe.Int64, queue : java.lang.ref.ReferenceQueue<Dynamic>) : sun.security.util.Cache.MemoryCache_CacheEntry;
	
	
}
@:native('sun$security$util$MemoryCache$CacheEntry') @:internal extern interface MemoryCache_CacheEntry
{
	@:overload public function isValid(currentTime : haxe.Int64) : Bool;
	
	@:overload public function invalidate() : Void;
	
	@:overload public function getKey() : Dynamic;
	
	@:overload public function getValue() : Dynamic;
	
	
}
@:native('sun$security$util$MemoryCache$HardCacheEntry') @:internal extern class MemoryCache_HardCacheEntry implements sun.security.util.Cache.MemoryCache_CacheEntry
{
	@:overload public function getKey() : Dynamic;
	
	@:overload public function getValue() : Dynamic;
	
	@:overload public function isValid(currentTime : haxe.Int64) : Bool;
	
	@:overload public function invalidate() : Void;
	
	
}
@:native('sun$security$util$MemoryCache$SoftCacheEntry') @:internal extern class MemoryCache_SoftCacheEntry extends java.lang.ref.SoftReference<Dynamic> implements sun.security.util.Cache.MemoryCache_CacheEntry
{
	@:overload public function getKey() : Dynamic;
	
	@:overload public function getValue() : Dynamic;
	
	@:overload public function isValid(currentTime : haxe.Int64) : Bool;
	
	@:overload public function invalidate() : Void;
	
	
}
