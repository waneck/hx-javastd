package sun.awt.X11;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class XDragSourceContextPeer extends sun.awt.dnd.SunDragSourceContextPeer implements sun.awt.X11.XDragSourceProtocolListener
{
	@:overload override private function startDrag(transferable : java.awt.datatransfer.Transferable, formats : java.NativeArray<haxe.Int64>, formatMap : java.util.Map<Dynamic, Dynamic>) : Void;
	
	@:overload public function getProxyModeSourceWindow() : haxe.Int64;
	
	@:overload public static function setProxyModeSourceWindow(window : haxe.Int64) : Void;
	
	/**
	* set cursor
	*/
	@:overload override public function setCursor(c : java.awt.Cursor) : Void;
	
	@:overload override private function setNativeCursor(nativeCtxt : haxe.Int64, c : java.awt.Cursor, cType : Int) : Void;
	
	@:overload private function needsBogusExitBeforeDrop() : Bool;
	
	/**
	* The caller must own awtLock.
	*/
	@:overload public function cleanup(time : haxe.Int64) : Void;
	
	/* XDragSourceProtocolListener implementation */
	@:overload public function handleDragReply(action : Int) : Void;
	
	@:overload public function handleDragReply(action : Int, x : Int, y : Int) : Void;
	
	@:overload public function handleDragReply(action : Int, x : Int, y : Int, modifiers : Int) : Void;
	
	@:overload public function handleDragFinished() : Void;
	
	@:overload public function handleDragFinished(success : Bool) : Void;
	
	@:overload public function handleDragFinished(success : Bool, action : Int) : Void;
	
	@:overload public function handleDragFinished(success : Bool, action : Int, x : Int, y : Int) : Void;
	
	
}
