package sun.java2d.loops;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
/* This is the java implementation of the native code from
* src/share/native/sun/java2d/loops/ProcessPath.[c,h]
* This code is written to be as much similar to the native
* as it possible. So, it sometimes does not follow java naming conventions.
*
* It's important to keep this code synchronized with native one.  See more
* comments, description and high level scheme of the rendering process in the
* ProcessPath.c
*/
extern class ProcessPath
{
	public static var PH_MODE_DRAW_CLIP(default, null) : Int;
	
	public static var PH_MODE_FILL_CLIP(default, null) : Int;
	
	public static var noopEndSubPathHandler : sun.java2d.loops.ProcessPath.ProcessPath_EndSubPathHandler;
	
	@:overload public static function fillPath(dhnd : sun.java2d.loops.ProcessPath.ProcessPath_DrawHandler, p2df : java.awt.geom.Path2D.Path2D_Float, transX : Int, transY : Int) : Bool;
	
	@:overload public static function drawPath(dhnd : sun.java2d.loops.ProcessPath.ProcessPath_DrawHandler, endSubPath : sun.java2d.loops.ProcessPath.ProcessPath_EndSubPathHandler, p2df : java.awt.geom.Path2D.Path2D_Float, transX : Int, transY : Int) : Bool;
	
	@:overload public static function drawPath(dhnd : sun.java2d.loops.ProcessPath.ProcessPath_DrawHandler, p2df : java.awt.geom.Path2D.Path2D_Float, transX : Int, transY : Int) : Bool;
	
	/* Following constants are used for providing open boundaries of the
	* intervals
	*/
	public static var EPSFX(default, null) : Int;
	
	public static var EPSF(default, null) : Single;
	
	
}
/* Public interfaces and methods for drawing and filling general paths */
@:native('sun$java2d$loops$ProcessPath$DrawHandler') extern class ProcessPath_DrawHandler
{
	public var xMin : Int;
	
	public var yMin : Int;
	
	public var xMax : Int;
	
	public var yMax : Int;
	
	public var xMinf : Single;
	
	public var yMinf : Single;
	
	public var xMaxf : Single;
	
	public var yMaxf : Single;
	
	public var strokeControl : Int;
	
	@:overload public function new(xMin : Int, yMin : Int, xMax : Int, yMax : Int, strokeControl : Int) : Void;
	
	@:overload public function setBounds(xMin : Int, yMin : Int, xMax : Int, yMax : Int) : Void;
	
	@:overload public function setBounds(xMin : Int, yMin : Int, xMax : Int, yMax : Int, strokeControl : Int) : Void;
	
	@:overload public function adjustBounds(bxMin : Int, byMin : Int, bxMax : Int, byMax : Int) : Void;
	
	@:overload public function new(xMin : Int, yMin : Int, xMax : Int, yMax : Int) : Void;
	
	@:overload @:abstract public function drawLine(x0 : Int, y0 : Int, x1 : Int, y1 : Int) : Void;
	
	@:overload @:abstract public function drawPixel(x0 : Int, y0 : Int) : Void;
	
	@:overload @:abstract public function drawScanline(x0 : Int, x1 : Int, y0 : Int) : Void;
	
	
}
@:native('sun$java2d$loops$ProcessPath$EndSubPathHandler') extern interface ProcessPath_EndSubPathHandler
{
	@:overload @:public public function processEndSubPath() : Void;
	
	
}
@:native('sun$java2d$loops$ProcessPath$ProcessHandler') extern class ProcessPath_ProcessHandler implements sun.java2d.loops.ProcessPath.ProcessPath_EndSubPathHandler
{
	@:overload public function new(dhnd : sun.java2d.loops.ProcessPath.ProcessPath_DrawHandler, clipMode : Int) : Void;
	
	@:overload @:abstract public function processFixedLine(x1 : Int, y1 : Int, x2 : Int, y2 : Int, pixelInfo : java.NativeArray<Int>, checkBounds : Bool, endSubPath : Bool) : Void;
	
	@:overload public function processEndSubPath() : Void;
	
	
}
@:native('sun$java2d$loops$ProcessPath$DrawProcessHandler') @:internal extern class ProcessPath_DrawProcessHandler extends sun.java2d.loops.ProcessPath.ProcessPath_ProcessHandler
{
	@:overload public function new(dhnd : sun.java2d.loops.ProcessPath.ProcessPath_DrawHandler, processESP : sun.java2d.loops.ProcessPath.ProcessPath_EndSubPathHandler) : Void;
	
	@:overload override public function processEndSubPath() : Void;
	
	/*                  Drawing line with subpixel endpoints
	*
	* (x1, y1), (x2, y2) -  fixed point coordinates of the endpoints
	*                       with MDP_PREC bits for the fractional part
	*
	* pixelInfo          -  structure which keeps drawing info for avoiding
	*                       multiple drawing at the same position on the
	*                       screen (required for the XOR mode of drawing)
	*
	*                          pixelInfo[0]   - state of the drawing
	*                                           0 - no pixel drawn between
	*                                           moveTo/close of the path
	*                                           1 - there are drawn pixels
	*
	*                          pixelInfo[1,2] - first pixel of the path
	*                                           between moveTo/close of the
	*                                           path
	*
	*                          pixelInfo[3,4] - last drawn pixel between
	*                                           moveTo/close of the path
	*
	* checkBounds        - flag showing necessity of checking the clip
	*
	*/
	@:overload override public function processFixedLine(x1 : Int, y1 : Int, x2 : Int, y2 : Int, pixelInfo : java.NativeArray<Int>, checkBounds : Bool, endSubPath : Bool) : Void;
	
	
}
@:native('sun$java2d$loops$ProcessPath$Point') @:internal extern class ProcessPath_Point
{
	public var x : Int;
	
	public var y : Int;
	
	public var lastPoint : Bool;
	
	public var prev : sun.java2d.loops.ProcessPath.ProcessPath_Point;
	
	public var next : sun.java2d.loops.ProcessPath.ProcessPath_Point;
	
	public var nextByY : sun.java2d.loops.ProcessPath.ProcessPath_Point;
	
	public var edge : sun.java2d.loops.ProcessPath.ProcessPath_Edge;
	
	@:overload public function new(x : Int, y : Int, lastPoint : Bool) : Void;
	
	
}
@:native('sun$java2d$loops$ProcessPath$Edge') @:internal extern class ProcessPath_Edge
{
	@:overload public function new(p : sun.java2d.loops.ProcessPath.ProcessPath_Point, x : Int, dx : Int, dir : Int) : Void;
	
	
}
/* Following class accumulates points of the non-continuous flattened
* general path during iteration through the origin path's segments . The
* end of the each subpath is marked as lastPoint flag set at the last
* point
*/
@:native('sun$java2d$loops$ProcessPath$FillData') @:internal extern class ProcessPath_FillData
{
	public var plgYMin : Int;
	
	public var plgYMax : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function addPoint(x : Int, y : Int, lastPoint : Bool) : Void;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function isEnded() : Bool;
	
	@:overload public function setEnded() : Bool;
	
	
}
@:native('sun$java2d$loops$ProcessPath$ActiveEdgeList') @:internal extern class ProcessPath_ActiveEdgeList
{
	@:overload public function isEmpty() : Bool;
	
	@:overload public function insert(pnt : sun.java2d.loops.ProcessPath.ProcessPath_Point, cy : Int) : Void;
	
	@:overload public function delete(e : sun.java2d.loops.ProcessPath.ProcessPath_Edge) : Void;
	
	/**
	* Bubble sorting in the ascending order of the linked list.  This
	* implementation stops processing the list if there were no changes
	* during the previous pass.
	*
	* We could not use O(N) Radix sort here because in most cases list of
	* edges almost sorted.  So, bubble sort (O(N^2)) is working much
	* better.  Note, in case of array of edges Shell sort is more
	* efficient.
	*/
	@:overload public function sort() : Void;
	
	
}
@:native('sun$java2d$loops$ProcessPath$FillProcessHandler') @:internal extern class ProcessPath_FillProcessHandler extends sun.java2d.loops.ProcessPath.ProcessPath_ProcessHandler
{
	/* Note: For more easy reading of the code below each java version of
	* the macros from the ProcessPath.c preceded by the commented
	* origin call containing verbose names of the parameters
	*/
	@:overload override public function processFixedLine(x1 : Int, y1 : Int, x2 : Int, y2 : Int, pixelInfo : java.NativeArray<Int>, checkBounds : Bool, endSubPath : Bool) : Void;
	
	@:overload override public function processEndSubPath() : Void;
	
	
}
