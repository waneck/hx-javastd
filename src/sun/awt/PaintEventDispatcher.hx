package sun.awt;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class PaintEventDispatcher
{
	/**
	* Sets the current <code>PaintEventDispatcher</code>.
	*
	* @param dispatcher PaintEventDispatcher
	*/
	@:overload @:public @:static public static function setPaintEventDispatcher(dispatcher : sun.awt.PaintEventDispatcher) : Void;
	
	/**
	* Returns the currently active <code>PaintEventDispatcher</code>.  This
	* will never return null.
	*
	* @return PaintEventDispatcher
	*/
	@:overload @:public @:static public static function getPaintEventDispatcher() : sun.awt.PaintEventDispatcher;
	
	/**
	* Creates and returns the <code>PaintEvent</code> that should be
	* dispatched for the specified component.  If this returns null
	* no <code>PaintEvent</code> is dispatched.
	* <p>
	* <b>WARNING:</b> This is invoked from the native thread, be careful
	* what methods you end up invoking here.
	*/
	@:overload @:public public function createPaintEvent(target : java.awt.Component, x : Int, y : Int, w : Int, h : Int) : java.awt.event.PaintEvent;
	
	/**
	* Returns true if a native background erase should be done for
	* the specified Component.
	*/
	@:overload @:public public function shouldDoNativeBackgroundErase(c : java.awt.Component) : Bool;
	
	/**
	* This method is invoked from the toolkit thread when the surface
	* data of the component needs to be replaced. The method run() of
	* the Runnable argument performs surface data replacing, run()
	* should be invoked on the EDT of this component's AppContext.
	* Returns true if the Runnable has been enqueued to be invoked
	* on the EDT.
	* (Fix 6255371.)
	*/
	@:overload @:public public function queueSurfaceDataReplacing(c : java.awt.Component, r : java.lang.Runnable) : Bool;
	
	
}
