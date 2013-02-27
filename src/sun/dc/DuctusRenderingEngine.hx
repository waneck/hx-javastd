package sun.dc;
/*
* Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class DuctusRenderingEngine extends sun.java2d.pipe.RenderingEngine
{
	/**
	* {@inheritDoc}
	*/
	@:overload override public function createStrokedShape(src : java.awt.Shape, width : Single, caps : Int, join : Int, miterlimit : Single, dashes : java.NativeArray<Single>, dashphase : Single) : java.awt.Shape;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function strokeTo(src : java.awt.Shape, transform : java.awt.geom.AffineTransform, bs : java.awt.BasicStroke, thin : Bool, normalize : Bool, antialias : Bool, sr : sun.awt.geom.PathConsumer2D) : Void;
	
	/*
	* Feed a path from a PathIterator to a Ductus PathConsumer.
	*/
	@:native('feedConsumer') @:overload public static function _feedConsumer(pi : java.awt.geom.PathIterator, consumer : PathConsumer, normalize : Bool, norm : Single) : Void;
	
	@:overload @:synchronized public static function getRasterizer() : Rasterizer;
	
	@:overload @:synchronized public static function dropRasterizer(r : Rasterizer) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getMinimumAAPenSize() : Single;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getAATileGenerator(s : java.awt.Shape, at : java.awt.geom.AffineTransform, clip : sun.java2d.pipe.Region, bs : java.awt.BasicStroke, thin : Bool, normalize : Bool, bbox : java.NativeArray<Int>) : sun.java2d.pipe.AATileGenerator;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getAATileGenerator(x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float, lw1 : Float, lw2 : Float, clip : sun.java2d.pipe.Region, bbox : java.NativeArray<Int>) : sun.java2d.pipe.AATileGenerator;
	
	
}
@:native('sun$dc$DuctusRenderingEngine$FillAdapter') @:internal extern class DuctusRenderingEngine_FillAdapter implements PathConsumer
{
	@:overload public function new() : Void;
	
	@:overload public function getShape() : java.awt.Shape;
	
	@:overload public function dispose() : Void;
	
	@:overload public function getConsumer() : PathConsumer;
	
	@:overload public function beginPath() : Void;
	
	@:overload public function beginSubpath(x0 : Single, y0 : Single) : Void;
	
	@:overload public function appendLine(x1 : Single, y1 : Single) : Void;
	
	@:overload public function appendQuadratic(xm : Single, ym : Single, x1 : Single, y1 : Single) : Void;
	
	@:overload public function appendCubic(xm : Single, ym : Single, xn : Single, yn : Single, x1 : Single, y1 : Single) : Void;
	
	@:overload public function closedSubpath() : Void;
	
	@:overload public function endPath() : Void;
	
	@:overload public function useProxy(proxy : FastPathProducer) : Void;
	
	@:overload public function getCPathConsumer() : haxe.Int64;
	
	
}
