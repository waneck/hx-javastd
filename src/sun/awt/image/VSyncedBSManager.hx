package sun.awt.image;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class VSyncedBSManager
{
	/**
	* Returns true if the buffer strategy is allowed to be created
	* v-synced.
	*
	* @return true if the bs is allowed to be v-synced, false otherwise
	*/
	@:overload public static function vsyncAllowed(bs : java.awt.image.BufferStrategy) : Bool;
	
	/**
	* Lets the manager know that this buffer strategy is no longer interested
	* in being v-synced.
	*/
	@:overload @:synchronized public static function releaseVsync(bs : java.awt.image.BufferStrategy) : Void;
	
	
}
/**
* An instance of the manager which allows any buffer strategy to be
* v-synced.
*/
@:native('sun$awt$image$VSyncedBSManager$NoLimitVSyncBSMgr') @:internal extern class VSyncedBSManager_NoLimitVSyncBSMgr extends VSyncedBSManager
{
	
}
/**
* An instance of the manager which allows only one buffer strategy to
* be v-synced at any give moment in the vm.
*/
@:native('sun$awt$image$VSyncedBSManager$SingleVSyncedBSMgr') @:internal extern class VSyncedBSManager_SingleVSyncedBSMgr extends VSyncedBSManager
{
	@:overload @:synchronized override public function checkAllowed(bs : java.awt.image.BufferStrategy) : Bool;
	
	@:overload @:synchronized override public function relinquishVsync(bs : java.awt.image.BufferStrategy) : Void;
	
	
}
