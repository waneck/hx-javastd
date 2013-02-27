package sun.java2d.pipe.hw;
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
extern class AccelDeviceEventNotifier
{
	/**
	* A device is about to be reset. The listeners have to release all
	* resources associated with the device which are required for the device
	* to be reset.
	*/
	public static var DEVICE_RESET(default, null) : Int;
	
	/**
	* A device is about to be disposed. The listeners have to release all
	* resources associated with the device.
	*/
	public static var DEVICE_DISPOSED(default, null) : Int;
	
	/**
	* Called to indicate that a device event had occured.
	* If a singleton exists, the listeners (those associated with
	* the device) will be notified.
	*
	* @param screen a screen number of the device which is a source of
	* the event
	* @param eventType a type of the event
	* @see #DEVICE_DISPOSED
	* @see #DEVICE_RESET
	*/
	@:overload @:final public static function eventOccured(screen : Int, eventType : Int) : Void;
	
	/**
	* Adds the listener associated with a device on particular screen.
	*
	* Note: the listener must be removed as otherwise it will forever
	* be referenced by the notifier.
	*
	* @param l the listener
	* @param screen the screen number indicating which device the listener is
	* interested in.
	*/
	@:overload @:final public static function addListener(l : sun.java2d.pipe.hw.AccelDeviceEventListener, screen : Int) : Void;
	
	/**
	* Removes the listener.
	*
	* @param l the listener
	*/
	@:overload @:final public static function removeListener(l : sun.java2d.pipe.hw.AccelDeviceEventListener) : Void;
	
	
}
