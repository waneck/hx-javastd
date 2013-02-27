package java.awt.event;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface KeyListener extends java.util.EventListener
{
	/**
	* Invoked when a key has been typed.
	* See the class description for {@link KeyEvent} for a definition of
	* a key typed event.
	*/
	@:overload public function keyTyped(e : java.awt.event.KeyEvent) : Void;
	
	/**
	* Invoked when a key has been pressed.
	* See the class description for {@link KeyEvent} for a definition of
	* a key pressed event.
	*/
	@:overload public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	/**
	* Invoked when a key has been released.
	* See the class description for {@link KeyEvent} for a definition of
	* a key released event.
	*/
	@:overload public function keyReleased(e : java.awt.event.KeyEvent) : Void;
	
	
}
