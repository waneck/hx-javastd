package sun.awt.dnd;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class SunDragSourceContextPeer implements java.awt.dnd.peer.DragSourceContextPeer
{
	/*
	* dispatch constants
	*/
	@:protected @:final @:static private static var DISPATCH_ENTER(default, null) : Int;
	
	@:protected @:final @:static private static var DISPATCH_MOTION(default, null) : Int;
	
	@:protected @:final @:static private static var DISPATCH_CHANGED(default, null) : Int;
	
	@:protected @:final @:static private static var DISPATCH_EXIT(default, null) : Int;
	
	@:protected @:final @:static private static var DISPATCH_FINISH(default, null) : Int;
	
	@:protected @:final @:static private static var DISPATCH_MOUSE_MOVED(default, null) : Int;
	
	/**
	* construct a new SunDragSourceContextPeer
	*/
	@:overload @:public public function new(dge : java.awt.dnd.DragGestureEvent) : Void;
	
	/**
	* Synchro messages in AWT
	*/
	@:overload @:public public function startSecondaryEventLoop() : Void;
	
	@:overload @:public public function quitSecondaryEventLoop() : Void;
	
	/**
	* initiate a DnD operation ...
	*/
	@:overload @:public public function startDrag(dsc : java.awt.dnd.DragSourceContext, c : java.awt.Cursor, di : java.awt.Image, p : java.awt.Point) : Void;
	
	@:overload @:protected @:abstract private function startDrag(trans : java.awt.datatransfer.Transferable, formats : java.NativeArray<haxe.Int64>, formatMap : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* set cursor
	*/
	@:overload @:public public function setCursor(c : java.awt.Cursor) : Void;
	
	/**
	* return cursor
	*/
	@:overload @:public public function getCursor() : java.awt.Cursor;
	
	/**
	* Returns the drag image. If there is no image to drag,
	* the returned value is {@code null}
	*
	* @return the reference to the drag image
	*/
	@:overload @:public public function getDragImage() : java.awt.Image;
	
	/**
	* Returns an anchor offset for the image to drag.
	*
	* @return a {@code Point} object that corresponds
	* to coordinates of an anchor offset of the image
	* relative to the upper left corner of the image.
	* The point {@code (0,0)} returns by default.
	*/
	@:overload @:public public function getDragImageOffset() : java.awt.Point;
	
	/**
	* downcall into native code
	*/
	@:overload @:protected @:abstract private function setNativeCursor(nativeCtxt : haxe.Int64, c : java.awt.Cursor, cType : Int) : Void;
	
	@:overload @:protected @:synchronized private function setTrigger(dge : java.awt.dnd.DragGestureEvent) : Void;
	
	@:overload @:protected private function getTrigger() : java.awt.dnd.DragGestureEvent;
	
	@:overload @:protected private function getComponent() : java.awt.Component;
	
	@:overload @:protected @:synchronized private function setNativeContext(ctxt : haxe.Int64) : Void;
	
	@:overload @:protected @:synchronized private function getNativeContext() : haxe.Int64;
	
	@:overload @:protected private function getDragSourceContext() : java.awt.dnd.DragSourceContext;
	
	/**
	* Notify the peer that the transferables' DataFlavors have changed.
	*
	* No longer useful as the transferables are determined at the time
	* of the drag.
	*/
	@:overload @:public public function transferablesFlavorsChanged() : Void;
	
	@:overload @:protected @:final private function postDragSourceDragEvent(targetAction : Int, modifiers : Int, x : Int, y : Int, dispatchType : Int) : Void;
	
	/**
	* upcall from native code
	*/
	@:overload @:protected @:final private function dragExit(x : Int, y : Int) : Void;
	
	/**
	* upcall from native code via implemented class (do)
	*/
	@:overload @:protected @:final private function dragDropFinished(success : Bool, operations : Int, x : Int, y : Int) : Void;
	
	@:overload @:public @:static public static function setDragDropInProgress(b : Bool) : Void;
	
	/**
	* Filters out all mouse events that were on the java event queue when
	* startDrag was called.
	*/
	@:overload @:public @:static public static function checkEvent(event : java.awt.AWTEvent) : Bool;
	
	@:overload @:public @:static public static function checkDragDropInProgress() : Void;
	
	@:overload @:public @:static public static function convertModifiersToDropAction(modifiers : Int, supportedActions : Int) : Int;
	
	
}
@:native('sun$awt$dnd$SunDragSourceContextPeer$EventDispatcher') @:internal extern class SunDragSourceContextPeer_EventDispatcher implements java.lang.Runnable
{
	@:overload @:public public function run() : Void;
	
	
}
