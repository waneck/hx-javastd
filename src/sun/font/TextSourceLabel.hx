package sun.font;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
*
* (C) Copyright IBM Corp. 1998, 1999 - All Rights Reserved
*/
extern class TextSourceLabel extends sun.font.TextLabel
{
	@:overload public function new(source : sun.font.TextSource) : Void;
	
	@:overload public function new(source : sun.font.TextSource, lb : java.awt.geom.Rectangle2D, ab : java.awt.geom.Rectangle2D, gv : java.awt.font.GlyphVector) : Void;
	
	@:overload public function getSource() : sun.font.TextSource;
	
	@:overload @:final override public function getLogicalBounds(x : Single, y : Single) : java.awt.geom.Rectangle2D;
	
	@:overload @:final override public function getVisualBounds(x : Single, y : Single) : java.awt.geom.Rectangle2D;
	
	@:overload @:final override public function getAlignBounds(x : Single, y : Single) : java.awt.geom.Rectangle2D;
	
	@:overload override public function getItalicBounds(x : Single, y : Single) : java.awt.geom.Rectangle2D;
	
	@:overload public function getPixelBounds(frc : java.awt.font.FontRenderContext, x : Single, y : Single) : java.awt.Rectangle;
	
	@:overload public function getBaselineTransform() : java.awt.geom.AffineTransform;
	
	@:overload override public function getOutline(x : Single, y : Single) : java.awt.Shape;
	
	@:overload override public function draw(g : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	@:overload private function createLogicalBounds() : java.awt.geom.Rectangle2D;
	
	@:overload private function createVisualBounds() : java.awt.geom.Rectangle2D;
	
	@:overload private function createItalicBounds() : java.awt.geom.Rectangle2D;
	
	@:overload private function createAlignBounds() : java.awt.geom.Rectangle2D;
	
	@:overload private function createGV() : java.awt.font.GlyphVector;
	
	
}
