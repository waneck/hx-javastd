package sun.awt.im;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class InputMethodManager
{
	/**
	* Returns the instance of InputMethodManager. This method creates
	* the instance that is unique in the Java VM if it has not been
	* created yet.
	*
	* @return the InputMethodManager instance
	*/
	@:overload @:final public static function getInstance() : sun.awt.im.InputMethodManager;
	
	/**
	* Gets a string for the trigger menu item that should be added to
	* the window manager menu. If no need to display the trigger menu
	* item, null is returned.
	*/
	@:overload @:abstract public function getTriggerMenuString() : String;
	
	/**
	* Notifies InputMethodManager that input method change has been
	* requested by the user. This notification triggers a popup menu
	* for user selection.
	*
	* @param comp Component that has accepted the change
	* request. This component has to be a Frame or Dialog.
	*/
	@:overload @:abstract public function notifyChangeRequest(comp : java.awt.Component) : Void;
	
	/**
	* Notifies InputMethodManager that input method change has been
	* requested by the user using the hot key combination. This
	* notification triggers a popup menu for user selection.
	*
	* @param comp Component that has accepted the change
	* request. This component has the input focus.
	*/
	@:overload @:abstract public function notifyChangeRequestByHotKey(comp : java.awt.Component) : Void;
	
	
}
@:internal extern class ExecutableInputMethodManager extends sun.awt.im.InputMethodManager implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	@:overload @:synchronized override public function notifyChangeRequest(comp : java.awt.Component) : Void;
	
	@:overload @:synchronized override public function notifyChangeRequestByHotKey(comp : java.awt.Component) : Void;
	
	@:overload override public function getTriggerMenuString() : String;
	
	
}
