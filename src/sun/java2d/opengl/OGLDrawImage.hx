package sun.java2d.opengl;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class OGLDrawImage extends sun.java2d.pipe.DrawImage
{
	@:overload override private function renderImageXform(sg : sun.java2d.SunGraphics2D, img : java.awt.Image, tx : java.awt.geom.AffineTransform, interpType : Int, sx1 : Int, sy1 : Int, sx2 : Int, sy2 : Int, bgColor : java.awt.Color) : Void;
	
	@:overload override public function transformImage(sg : sun.java2d.SunGraphics2D, img : java.awt.image.BufferedImage, op : java.awt.image.BufferedImageOp, x : Int, y : Int) : Void;
	
	
}
