package sun.awt.dnd;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class SunDropTargetEvent extends java.awt.event.MouseEvent
{
	public static var MOUSE_DROPPED(default, null) : Int;
	
	@:overload public function new(source : java.awt.Component, id : Int, x : Int, y : Int, d : sun.awt.dnd.SunDropTargetContextPeer.SunDropTargetContextPeer_EventDispatcher) : Void;
	
	@:overload public function dispatch() : Void;
	
	@:overload public function consume() : Void;
	
	@:overload public function getDispatcher() : sun.awt.dnd.SunDropTargetContextPeer.SunDropTargetContextPeer_EventDispatcher;
	
	@:overload public function paramString() : String;
	
	
}
