package sun.misc;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class VM
{
	/** @deprecated */
	@:overload public static function threadsSuspended() : Bool;
	
	@:overload public static function allowThreadSuspension(g : java.lang.ThreadGroup, b : Bool) : Bool;
	
	/** @deprecated */
	@:overload public static function suspendThreads() : Bool;
	
	/** @deprecated */
	@:overload public static function unsuspendThreads() : Void;
	
	/** @deprecated */
	@:overload public static function unsuspendSomeThreads() : Void;
	
	/** @deprecated */
	public static var STATE_GREEN(default, null) : Int;
	
	/** @deprecated */
	public static var STATE_YELLOW(default, null) : Int;
	
	/** @deprecated */
	public static var STATE_RED(default, null) : Int;
	
	/** @deprecated */
	@:overload @:final public static function getState() : Int;
	
	/** @deprecated */
	@:overload public static function registerVMNotification(n : sun.misc.VMNotification) : Void;
	
	/** @deprecated */
	@:overload public static function asChange(as_old : Int, as_new : Int) : Void;
	
	/** @deprecated */
	@:overload public static function asChange_otherthread(as_old : Int, as_new : Int) : Void;
	
	@:overload public static function booted() : Void;
	
	@:overload public static function isBooted() : Bool;
	
	@:overload public static function maxDirectMemory() : haxe.Int64;
	
	@:overload public static function isDirectMemoryPageAligned() : Bool;
	
	@:overload public static function allowArraySyntax() : Bool;
	
	/**
	* Returns the system property of the specified key saved at
	* system initialization time.  This method should only be used
	* for the system properties that are not changed during runtime.
	* It accesses a private copy of the system properties so
	* that user's locking of the system properties object will not
	* cause the library to deadlock.
	*
	* Note that the saved system properties do not include
	* the ones set by sun.misc.Version.init().
	*
	*/
	@:overload public static function getSavedProperty(key : String) : String;
	
	@:overload public static function saveAndRemoveProperties(props : java.util.Properties) : Void;
	
	@:overload public static function initializeOSEnvironment() : Void;
	
	/*
	* Gets the number of objects pending for finalization.
	*
	* @return the number of objects pending for finalization.
	*/
	@:overload public static function getFinalRefCount() : Int;
	
	/*
	* Gets the peak number of objects pending for finalization.
	*
	* @return the peak number of objects pending for finalization.
	*/
	@:overload public static function getPeakFinalRefCount() : Int;
	
	/*
	* Add <tt>n</tt> to the objects pending for finalization count.
	*
	* @param n an integer value to be added to the objects pending
	* for finalization count
	*/
	@:overload public static function addFinalRefCount(n : Int) : Void;
	
	/**
	* Returns Thread.State for the given threadStatus
	*/
	@:overload public static function toThreadState(threadStatus : Int) : java.lang.Thread.Thread_State;
	
	
}
