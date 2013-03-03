package sun.awt.X11;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class XGlobalCursorManager extends sun.awt.GlobalCursorManager
{
	@:overload @:protected override private function setCursor(comp : java.awt.Component, cursor : java.awt.Cursor, useCache : Bool) : Void;
	
	@:overload @:protected override private function updateCursorOutOfJava() : Void;
	
	@:overload @:protected override private function getCursorPos(p : java.awt.Point) : Void;
	
	@:overload @:protected private function findHeavyweightUnderCursor() : java.awt.Component;
	
	/*
	* two native methods to call corresponding methods in Container and
	* Component
	*/
	@:overload @:protected override private function findComponentAt(con : java.awt.Container, x : Int, y : Int) : java.awt.Component;
	
	@:overload @:protected override private function getLocationOnScreen(c : java.awt.Component) : java.awt.Point;
	
	@:overload @:protected override private function findHeavyweightUnderCursor(useCache : Bool) : java.awt.Component;
	
	
}
