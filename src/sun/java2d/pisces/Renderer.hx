package sun.java2d.pisces;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class Renderer implements sun.awt.geom.PathConsumer2D
{
	public static var WIND_EVEN_ODD(default, null) : Int;
	
	public static var WIND_NON_ZERO(default, null) : Int;
	
	@:overload public function new(subpixelLgPositionsX : Int, subpixelLgPositionsY : Int, pix_boundsX : Int, pix_boundsY : Int, pix_boundsWidth : Int, pix_boundsHeight : Int, windingRule : Int) : Void;
	
	@:overload public function moveTo(pix_x0 : Single, pix_y0 : Single) : Void;
	
	@:overload public function lineTo(pix_x1 : Single, pix_y1 : Single) : Void;
	
	@:overload public function curveTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single, x3 : Single, y3 : Single) : Void;
	
	@:overload public function quadTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single) : Void;
	
	@:overload public function closePath() : Void;
	
	@:overload public function pathDone() : Void;
	
	@:overload public function getNativeConsumer() : haxe.Int64;
	
	@:overload public function endRendering() : Void;
	
	@:overload public function getCache() : sun.java2d.pisces.PiscesCache;
	
	
}
@:native('sun$java2d$pisces$Renderer$ScanlineIterator') @:internal extern class Renderer_ScanlineIterator
{
	
}
