package java.awt.event;
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
extern interface WindowFocusListener extends java.util.EventListener
{
	/**
	* Invoked when the Window is set to be the focused Window, which means
	* that the Window, or one of its subcomponents, will receive keyboard
	* events.
	*/
	@:overload @:public public function windowGainedFocus(e : java.awt.event.WindowEvent) : Void;
	
	/**
	* Invoked when the Window is no longer the focused Window, which means
	* that keyboard events will no longer be delivered to the Window or any of
	* its subcomponents.
	*/
	@:overload @:public public function windowLostFocus(e : java.awt.event.WindowEvent) : Void;
	
	
}
