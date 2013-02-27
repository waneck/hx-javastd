package sun.awt.X11;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
/**
* A simple horizontal scroll bar. The scrollbar is made horizontal
* by taking a vertical scrollbar and swapping the x and y coordinates.
*/
@:internal extern class XHorizontalScrollbar extends sun.awt.X11.XScrollbar
{
	@:overload public function new(sb : sun.awt.X11.XScrollbarClient) : Void;
	
	@:overload override public function setSize(width : Int, height : Int) : Void;
	
	@:overload override private function rebuildArrows() : Void;
	
	@:overload override private function getThumbArea() : java.awt.Rectangle;
	
	
}
