package sun.java2d.pipe;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ValidatePipe implements sun.java2d.pipe.PixelDrawPipe implements sun.java2d.pipe.PixelFillPipe implements sun.java2d.pipe.ShapeDrawPipe implements sun.java2d.pipe.TextPipe implements sun.java2d.pipe.DrawImagePipe
{
	/*
	* Different subclasses may override this to do various
	* other forms of validation and return a return code
	* indicating whether or not the validation was successful.
	*/
	@:overload public function validate(sg : sun.java2d.SunGraphics2D) : Bool;
	
	@:overload public function drawLine(sg : sun.java2d.SunGraphics2D, x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	@:overload public function drawRect(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function fillRect(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function drawRoundRect(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	@:overload public function fillRoundRect(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	@:overload public function drawOval(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function fillOval(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function drawArc(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	@:overload public function fillArc(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	@:overload public function drawPolyline(sg : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload public function drawPolygon(sg : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload public function fillPolygon(sg : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	@:overload public function draw(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	@:overload public function fill(sg : sun.java2d.SunGraphics2D, s : java.awt.Shape) : Void;
	
	@:overload public function drawString(sg : sun.java2d.SunGraphics2D, s : String, x : Float, y : Float) : Void;
	
	@:overload public function drawGlyphVector(sg : sun.java2d.SunGraphics2D, g : java.awt.font.GlyphVector, x : Single, y : Single) : Void;
	
	@:overload public function drawChars(sg : sun.java2d.SunGraphics2D, data : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, x : Int, y : Int) : Void;
	
	@:overload public function copyImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, x : Int, y : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function copyImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, dx : Int, dy : Int, sx : Int, sy : Int, w : Int, h : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function scaleImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, x : Int, y : Int, w : Int, h : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function scaleImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, dx1 : Int, dy1 : Int, dx2 : Int, dy2 : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgColor : java.awt.Color, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function transformImage(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, atfm : java.awt.geom.AffineTransform, observer : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function transformImage(sg : sun.java2d.SunGraphics2D, img : java.awt.image.BufferedImage, op : java.awt.image.BufferedImageOp, x : Int, y : Int) : Void;
	
	
}
