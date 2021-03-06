package sun.java2d.jules;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JulesAATileGenerator implements sun.java2d.pipe.AATileGenerator
{
	@:overload @:public public function new(s : java.awt.Shape, at : java.awt.geom.AffineTransform, clip : sun.java2d.pipe.Region, bs : java.awt.BasicStroke, thin : Bool, normalize : Bool, bbox : java.NativeArray<Int>) : Void;
	
	@:overload @:public public function getAlpha(tileBuffer : java.NativeArray<java.StdTypes.Int8>, offset : Int, rowstride : Int) : Void;
	
	@:overload @:public public function calculateTypicalAlpha() : Void;
	
	/*
	* Optimization for large fills. Foutunatly cairo does generate an y-sorted
	* list of trapezoids. This makes it quite simple to check wether a tile is
	* fully covered by traps by: - Checking wether the tile is fully covered by
	* traps vertically (trap 2 starts where trap 1 ended) - Checking wether all
	* traps cover the tile horizontally This also works, when a single tile
	* coveres the whole tile.
	*/
	@:overload @:protected private function doTrapsCoverTile(trapList : sun.java2d.xr.GrowableIntArray, tileIndex : Int) : Bool;
	
	@:overload @:public public function getTypicalAlpha() : Int;
	
	@:overload @:public public function dispose() : Void;
	
	@:overload @:protected private function rasterizeTile(tileIndex : Int, tile : sun.java2d.jules.JulesTile) : sun.java2d.jules.JulesTile;
	
	@:overload @:protected private function getXPos(arrayPos : Int) : Int;
	
	@:overload @:protected private function getYPos(arrayPos : Int) : Int;
	
	@:overload @:public public function nextTile() : Void;
	
	@:overload @:public public function getTileHeight() : Int;
	
	@:overload @:public public function getTileWidth() : Int;
	
	@:overload @:public public function getTileCount() : Int;
	
	@:overload @:public public function getTrapContainer(index : Int) : sun.java2d.jules.JulesAATileGenerator.TileTrapContainer;
	
	
}
@:internal extern class TileTrapContainer
{
	@:overload @:public public function new(traps : sun.java2d.xr.GrowableIntArray) : Void;
	
	@:overload @:public public function setTileAlpha(tileAlpha : Int) : Void;
	
	@:overload @:public public function getTileAlpha() : Int;
	
	@:overload @:public public function getTraps() : sun.java2d.xr.GrowableIntArray;
	
	
}
