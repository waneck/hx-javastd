package sun.awt;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class ScrollPaneWheelScroller
{
	/*
	* Called from ScrollPane.processMouseWheelEvent()
	*/
	@:overload public static function handleWheelScrolling(sp : java.awt.ScrollPane, e : java.awt.event.MouseWheelEvent) : Void;
	
	/*
	* Given a ScrollPane, determine which Scrollbar should be scrolled by the
	* mouse wheel, if any.
	*/
	@:overload public static function getAdjustableToScroll(sp : java.awt.ScrollPane) : java.awt.Adjustable;
	
	/*
	* Given the info in a MouseWheelEvent and an Adjustable to scroll, return
	* the amount by which the Adjustable should be adjusted.  This value may
	* be positive or negative.
	*/
	@:overload public static function getIncrementFromAdjustable(adj : java.awt.Adjustable, e : java.awt.event.MouseWheelEvent) : Int;
	
	/*
	* Scroll the given Adjustable by the given amount.  Checks the Adjustable's
	* bounds and sets the new value to the Adjustable.
	*/
	@:overload public static function scrollAdjustable(adj : java.awt.Adjustable, amount : Int) : Void;
	
	
}
