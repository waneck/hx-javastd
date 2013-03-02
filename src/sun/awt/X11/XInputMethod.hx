package sun.awt.X11;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class XInputMethod extends sun.awt.X11InputMethod
{
	@:overload public function new() : Void;
	
	@:overload public function setInputMethodContext(context : java.awt.im.spi.InputMethodContext) : Void;
	
	@:overload public function notifyClientWindowChange(location : java.awt.Rectangle) : Void;
	
	@:overload private function openXIM() : Bool;
	
	@:overload private function createXIC() : Bool;
	
	@:overload private function setXICFocus(peer : java.awt.peer.ComponentPeer, value : Bool, active : Bool) : Void;
	
	@:overload public static function getXICFocus() : haxe.Int64;
	
	/* XAWT_HACK  FIX ME!
	do NOT call client code!
*/
	@:overload private function getParent(client : java.awt.Component) : java.awt.Container;
	
	/**
	* Returns peer of the given client component. If the given client component
	* doesn't have peer, peer of the native container of the client is returned.
	*/
	@:overload private function getPeer(client : java.awt.Component) : java.awt.peer.ComponentPeer;
	
	/*
	* Subclasses should override disposeImpl() instead of dispose(). Client
	* code should always invoke dispose(), never disposeImpl().
	*/
	@:overload @:synchronized private function disposeImpl() : Void;
	
	@:overload private function awtLock() : Void;
	
	@:overload private function awtUnlock() : Void;
	
	
}
