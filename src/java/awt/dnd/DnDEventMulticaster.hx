package java.awt.dnd;
/*
* Copyright (c) 2001, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DnDEventMulticaster extends java.awt.AWTEventMulticaster implements java.awt.dnd.DragSourceListener implements java.awt.dnd.DragSourceMotionListener
{
	/**
	* Creates an event multicaster instance which chains listener-a
	* with listener-b. Input parameters <code>a</code> and <code>b</code>
	* should not be <code>null</code>, though implementations may vary in
	* choosing whether or not to throw <code>NullPointerException</code>
	* in that case.
	*
	* @param a listener-a
	* @param b listener-b
	*/
	@:overload @:protected private function new(a : java.util.EventListener, b : java.util.EventListener) : Void;
	
	/**
	* Handles the <code>DragSourceDragEvent</code> by invoking
	* <code>dragEnter</code> on listener-a and listener-b.
	*
	* @param dsde the <code>DragSourceDragEvent</code>
	*/
	@:overload @:public public function dragEnter(dsde : java.awt.dnd.DragSourceDragEvent) : Void;
	
	/**
	* Handles the <code>DragSourceDragEvent</code> by invoking
	* <code>dragOver</code> on listener-a and listener-b.
	*
	* @param e the <code>DragSourceDragEvent</code>
	*/
	@:overload @:public public function dragOver(dsde : java.awt.dnd.DragSourceDragEvent) : Void;
	
	/**
	* Handles the <code>DragSourceDragEvent</code> by invoking
	* <code>dropActionChanged</code> on listener-a and listener-b.
	*
	* @param dsde the <code>DragSourceDragEvent</code>
	*/
	@:overload @:public public function dropActionChanged(dsde : java.awt.dnd.DragSourceDragEvent) : Void;
	
	/**
	* Handles the <code>DragSourceEvent</code> by invoking
	* <code>dragExit</code> on listener-a and listener-b.
	*
	* @param dse the <code>DragSourceEvent</code>
	*/
	@:overload @:public public function dragExit(dse : java.awt.dnd.DragSourceEvent) : Void;
	
	/**
	* Handles the <code>DragSourceDropEvent</code> by invoking
	* <code>dragDropEnd</code> on listener-a and listener-b.
	*
	* @param dsde the <code>DragSourceDropEvent</code>
	*/
	@:overload @:public public function dragDropEnd(dsde : java.awt.dnd.DragSourceDropEvent) : Void;
	
	/**
	* Handles the <code>DragSourceDragEvent</code> by invoking
	* <code>dragMouseMoved</code> on listener-a and listener-b.
	*
	* @param dsde the <code>DragSourceDragEvent</code>
	*/
	@:overload @:public public function dragMouseMoved(dsde : java.awt.dnd.DragSourceDragEvent) : Void;
	
	/**
	* Adds drag-source-listener-a with drag-source-listener-b and
	* returns the resulting multicast listener.
	*
	* @param a drag-source-listener-a
	* @param b drag-source-listener-b
	*/
	@:overload @:public @:static public static function add(a : java.awt.dnd.DragSourceListener, b : java.awt.dnd.DragSourceListener) : java.awt.dnd.DragSourceListener;
	
	/**
	* Adds drag-source-motion-listener-a with drag-source-motion-listener-b and
	* returns the resulting multicast listener.
	*
	* @param a drag-source-motion-listener-a
	* @param b drag-source-motion-listener-b
	*/
	@:overload @:public @:static public static function add(a : java.awt.dnd.DragSourceMotionListener, b : java.awt.dnd.DragSourceMotionListener) : java.awt.dnd.DragSourceMotionListener;
	
	/**
	* Removes the old drag-source-listener from drag-source-listener-l
	* and returns the resulting multicast listener.
	*
	* @param l drag-source-listener-l
	* @param oldl the drag-source-listener being removed
	*/
	@:native('remove') @:overload @:public @:static public static function _remove(l : java.awt.dnd.DragSourceListener, oldl : java.awt.dnd.DragSourceListener) : java.awt.dnd.DragSourceListener;
	
	/**
	* Removes the old drag-source-motion-listener from
	* drag-source-motion-listener-l and returns the resulting multicast
	* listener.
	*
	* @param l drag-source-motion-listener-l
	* @param ol the drag-source-motion-listener being removed
	*/
	@:native('remove') @:overload @:public @:static public static function _remove(l : java.awt.dnd.DragSourceMotionListener, ol : java.awt.dnd.DragSourceMotionListener) : java.awt.dnd.DragSourceMotionListener;
	
	/**
	* Returns the resulting multicast listener from adding listener-a
	* and listener-b together.
	* If listener-a is null, it returns listener-b;
	* If listener-b is null, it returns listener-a
	* If neither are null, then it creates and returns
	* a new AWTEventMulticaster instance which chains a with b.
	* @param a event listener-a
	* @param b event listener-b
	*/
	@:overload @:protected @:static private static function addInternal(a : java.util.EventListener, b : java.util.EventListener) : java.util.EventListener;
	
	/**
	* Removes a listener from this multicaster and returns the
	* resulting multicast listener.
	* @param oldl the listener to be removed
	*/
	@:overload @:protected override private function remove(oldl : java.util.EventListener) : java.util.EventListener;
	
	/**
	* Returns the resulting multicast listener after removing the
	* old listener from listener-l.
	* If listener-l equals the old listener OR listener-l is null,
	* returns null.
	* Else if listener-l is an instance of AWTEventMulticaster,
	* then it removes the old listener from it.
	* Else, returns listener l.
	* @param l the listener being removed from
	* @param oldl the listener being removed
	*/
	@:overload @:protected @:static private static function removeInternal(l : java.util.EventListener, oldl : java.util.EventListener) : java.util.EventListener;
	
	@:overload @:protected @:static private static function save(s : java.io.ObjectOutputStream, k : String, l : java.util.EventListener) : Void;
	
	
}
