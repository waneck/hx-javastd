package sun.java2d.pipe;
/*
* Copyright (c) 1998, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class SpanClipRenderer implements sun.java2d.pipe.CompositePipe
{
	@:overload @:public public function new(pipe : sun.java2d.pipe.CompositePipe) : Void;
	
	@:overload @:public public function startSequence(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape, devR : java.awt.Rectangle, abox : java.NativeArray<Int>) : Dynamic;
	
	@:overload @:public public function needTile(ctx : Dynamic, x : Int, y : Int, w : Int, h : Int) : Bool;
	
	@:overload @:public public function renderPathTile(ctx : Dynamic, atile : java.NativeArray<java.StdTypes.Int8>, offset : Int, tsize : Int, x : Int, y : Int, w : Int, h : Int, sr : sun.java2d.pipe.ShapeSpanIterator) : Void;
	
	@:overload @:public public function renderPathTile(ctx : Dynamic, atile : java.NativeArray<java.StdTypes.Int8>, offset : Int, tsize : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public @:native public function fillTile(ri : sun.java2d.pipe.RegionIterator, alpha : java.NativeArray<java.StdTypes.Int8>, offset : Int, tsize : Int, band : java.NativeArray<Int>) : Void;
	
	@:overload @:public @:native public function eraseTile(ri : sun.java2d.pipe.RegionIterator, alpha : java.NativeArray<java.StdTypes.Int8>, offset : Int, tsize : Int, band : java.NativeArray<Int>) : Void;
	
	@:overload @:public public function skipTile(ctx : Dynamic, x : Int, y : Int) : Void;
	
	@:overload @:public public function endSequence(ctx : Dynamic) : Void;
	
	
}
@:native('sun$java2d$pipe$SpanClipRenderer$SCRcontext') @:internal extern class SpanClipRenderer_SCRcontext
{
	@:overload @:public public function new(ri : sun.java2d.pipe.RegionIterator, outctx : Dynamic) : Void;
	
	
}
