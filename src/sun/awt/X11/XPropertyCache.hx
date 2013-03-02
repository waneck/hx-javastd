package sun.awt.X11;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
* Implements abstract X window property caching mechanism.  The
* caching is performed using storeCache method, the cached data can
* be retrieved using getCacheEntry method.
*
* NOTE: current caching is disabled because of the big variate of
* uncovered access to properties/changes of properties.  Once the
* access to properites is rewritten using general mechanisms, caching
* will be enabled.
*/
extern class XPropertyCache
{
	@:overload public static function isCached(window : haxe.Int64, property : sun.awt.X11.XAtom) : Bool;
	
	@:overload public static function getCacheEntry(window : haxe.Int64, property : sun.awt.X11.XAtom) : sun.awt.X11.XPropertyCache.XPropertyCache_PropertyCacheEntry;
	
	@:overload public static function storeCache(entry : sun.awt.X11.XPropertyCache.XPropertyCache_PropertyCacheEntry, window : haxe.Int64, property : sun.awt.X11.XAtom) : Void;
	
	@:overload public static function clearCache(window : haxe.Int64) : Void;
	
	@:overload public static function clearCache(window : haxe.Int64, property : sun.awt.X11.XAtom) : Void;
	
	@:overload public static function isCachingSupported() : Bool;
	
	
}
@:native('sun$awt$X11$XPropertyCache$PropertyCacheEntry') @:internal extern class XPropertyCache_PropertyCacheEntry
{
	@:overload public function new(format : Int, numberOfItems : Int, bytesAfter : haxe.Int64, data : haxe.Int64, dataLength : Int) : Void;
	
	@:overload public function getFormat() : Int;
	
	@:overload public function getNumberOfItems() : Int;
	
	@:overload public function getBytesAfter() : haxe.Int64;
	
	@:overload public function getData() : haxe.Int64;
	
	@:overload public function getDataLength() : Int;
	
	
}
