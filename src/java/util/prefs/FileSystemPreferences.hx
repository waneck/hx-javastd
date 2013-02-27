package java.util.prefs;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class FileSystemPreferences extends java.util.prefs.AbstractPreferences
{
	@:overload override public function isUserNode() : Bool;
	
	@:overload override private function putSpi(key : String, value : String) : Void;
	
	@:overload override private function getSpi(key : String) : String;
	
	@:overload override private function removeSpi(key : String) : Void;
	
	@:overload override private function keysSpi() : java.NativeArray<String>;
	
	@:overload override private function childrenNamesSpi() : java.NativeArray<String>;
	
	@:overload override private function childSpi(name : String) : java.util.prefs.AbstractPreferences;
	
	@:overload override public function removeNode() : Void;
	
	/**
	* Called with file lock held (in addition to node locks).
	*/
	@:overload override private function removeNodeSpi() : Void;
	
	@:overload @:synchronized override public function sync() : Void;
	
	@:overload override private function syncSpi() : Void;
	
	@:overload override public function flush() : Void;
	
	@:overload override private function flushSpi() : Void;
	
	
}
/**
* Represents a change to a preference.
*/
@:native('java$util$prefs$FileSystemPreferences$Change') @:internal extern class FileSystemPreferences_Change
{
	
}
/**
* Represents a preference put.
*/
@:native('java$util$prefs$FileSystemPreferences$Put') @:internal extern class FileSystemPreferences_Put extends FileSystemPreferences_Change
{
	
}
/**
* Represents a preference remove.
*/
@:native('java$util$prefs$FileSystemPreferences$Remove') @:internal extern class FileSystemPreferences_Remove extends FileSystemPreferences_Change
{
	
}
/**
* Represents the creation of this node.
*/
@:native('java$util$prefs$FileSystemPreferences$NodeCreate') @:internal extern class FileSystemPreferences_NodeCreate extends FileSystemPreferences_Change
{
	
}
