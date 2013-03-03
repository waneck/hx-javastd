package com.sun.java.swing;
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
extern class SwingUtilities3
{
	/**
	* Registers delegate RepaintManager for {@code JComponent}.
	*/
	@:overload @:public @:static public static function setDelegateRepaintManager(component : javax.swing.JComponent, repaintManager : javax.swing.RepaintManager) : Void;
	
	/**
	* Sets vsyncRequested state for the {@code rootContainer}.  If
	* {@code isRequested} is {@code true} then vsynced
	* {@code BufferStrategy} is enabled for this {@code rootContainer}.
	*
	* Note: requesting vsynced painting does not guarantee one. The outcome
	* depends on current RepaintManager's RepaintManager.PaintManager
	* and on the capabilities of the graphics hardware/software and what not.
	*
	* @param rootContainer topmost container. Should be either {@code Window}
	*  or {@code Applet}
	* @param isRequested the value to set vsyncRequested state to
	*/
	@:overload @:public @:static public static function setVsyncRequested(rootContainer : java.awt.Container, isRequested : Bool) : Void;
	
	/**
	* Checks if vsync painting is requested for {@code rootContainer}
	*
	* @param rootContainer topmost container. Should be either Window or Applet
	* @return {@code true} if vsync painting is requested for {@code rootContainer}
	*/
	@:overload @:public @:static public static function isVsyncRequested(rootContainer : java.awt.Container) : Bool;
	
	/**
	* Returns delegate {@code RepaintManager} for {@code component} hierarchy.
	*/
	@:overload @:public @:static public static function getDelegateRepaintManager(component : java.awt.Component) : javax.swing.RepaintManager;
	
	/*
	* We use maps to avoid reflection. Hopefully it should perform better
	* this way.
	*/
	@:overload @:public @:static public static function setEventQueueDelegate(map : java.util.Map<String, java.util.Map<String, Dynamic>>) : Void;
	
	
}
@:native('com$sun$java$swing$SwingUtilities3$EventQueueDelegateFromMap') @:internal extern class SwingUtilities3_EventQueueDelegateFromMap implements sun.awt.EventQueueDelegate.EventQueueDelegate_Delegate
{
	@:overload @:public public function new(objectMap : java.util.Map<String, java.util.Map<String, Dynamic>>) : Void;
	
	@:overload @:public public function afterDispatch(event : java.awt.AWTEvent, handle : Dynamic) : Void;
	
	@:overload @:public public function beforeDispatch(event : java.awt.AWTEvent) : Dynamic;
	
	@:overload @:public public function getNextEvent(eventQueue : java.awt.EventQueue) : java.awt.AWTEvent;
	
	
}
