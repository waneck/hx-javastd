package sun.management;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ThreadInfoCompositeData extends sun.management.LazyCompositeData
{
	@:overload public function getThreadInfo() : java.lang.management.ThreadInfo;
	
	@:overload public function isCurrentVersion() : Bool;
	
	@:overload public static function getInstance(cd : javax.management.openmbean.CompositeData) : sun.management.ThreadInfoCompositeData;
	
	@:overload public static function toCompositeData(ti : java.lang.management.ThreadInfo) : javax.management.openmbean.CompositeData;
	
	@:overload override private function getCompositeData() : javax.management.openmbean.CompositeData;
	
	@:native('isCurrentVersion') @:overload public static function _isCurrentVersion(cd : javax.management.openmbean.CompositeData) : Bool;
	
	@:overload public function threadId() : haxe.Int64;
	
	@:overload public function threadName() : String;
	
	@:overload public function threadState() : java.lang.Thread.Thread_State;
	
	@:overload public function blockedTime() : haxe.Int64;
	
	@:overload public function blockedCount() : haxe.Int64;
	
	@:overload public function waitedTime() : haxe.Int64;
	
	@:overload public function waitedCount() : haxe.Int64;
	
	@:overload public function lockName() : String;
	
	@:overload public function lockOwnerId() : haxe.Int64;
	
	@:overload public function lockOwnerName() : String;
	
	@:overload public function suspended() : Bool;
	
	@:overload public function inNative() : Bool;
	
	@:overload public function stackTrace() : java.NativeArray<java.lang.StackTraceElement>;
	
	@:overload public function lockInfo() : java.lang.management.LockInfo;
	
	@:overload public function lockedMonitors() : java.NativeArray<java.lang.management.MonitorInfo>;
	
	@:overload public function lockedSynchronizers() : java.NativeArray<java.lang.management.LockInfo>;
	
	/** Validate if the input CompositeData has the expected
	* CompositeType (i.e. contain all attributes with expected
	* names and types).
	*/
	@:overload public static function validateCompositeData(cd : javax.management.openmbean.CompositeData) : Void;
	
	
}
