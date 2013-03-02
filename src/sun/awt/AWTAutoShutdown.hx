package sun.awt;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class AWTAutoShutdown implements java.lang.Runnable
{
	/**
	* Returns reference to a single AWTAutoShutdown instance.
	*/
	@:overload public static function getInstance() : sun.awt.AWTAutoShutdown;
	
	/**
	* Notify that the toolkit thread is not waiting for a native event
	* to appear in its queue.
	*
	* @see     AWTAutoShutdown#notifyToolkitThreadFree
	* @see     AWTAutoShutdown#setToolkitBusy
	* @see     AWTAutoShutdown#isReadyToShutdown
	*/
	@:overload public static function notifyToolkitThreadBusy() : Void;
	
	/**
	* Notify that the toolkit thread is waiting for a native event
	* to appear in its queue.
	*
	* @see     AWTAutoShutdown#notifyToolkitThreadFree
	* @see     AWTAutoShutdown#setToolkitBusy
	* @see     AWTAutoShutdown#isReadyToShutdown
	*/
	@:overload public static function notifyToolkitThreadFree() : Void;
	
	/**
	* Add a specified thread to the set of busy event dispatch threads.
	* If this set already contains the specified thread or the thread is null,
	* the call leaves this set unchanged and returns silently.
	*
	* @param thread thread to be added to this set, if not present.
	* @see     AWTAutoShutdown#notifyThreadFree
	* @see     AWTAutoShutdown#isReadyToShutdown
	*/
	@:overload public function notifyThreadBusy(thread : java.lang.Thread) : Void;
	
	/**
	* Remove a specified thread from the set of busy event dispatch threads.
	* If this set doesn't contain the specified thread or the thread is null,
	* the call leaves this set unchanged and returns silently.
	*
	* @param thread thread to be removed from this set, if present.
	* @see     AWTAutoShutdown#notifyThreadBusy
	* @see     AWTAutoShutdown#isReadyToShutdown
	*/
	@:overload public function notifyThreadFree(thread : java.lang.Thread) : Void;
	
	/**
	* Implementation of the Runnable interface.
	* Incapsulates the blocker thread functionality.
	*
	* @see     AWTAutoShutdown#isReadyToShutdown
	*/
	@:overload public function run() : Void;
	
	
}
