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
@:internal extern class PiscesTileGenerator implements sun.java2d.pipe.AATileGenerator
{
	@:public @:static @:final public static var TILE_SIZE(default, null) : Int;
	
	@:overload @:public public function new(r : sun.java2d.pisces.Renderer, maxalpha : Int) : Void;
	
	@:overload @:public @:static public static function getAlphaMap(maxalpha : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getBbox(bbox : java.NativeArray<Int>) : Void;
	
	/**
	* Gets the width of the tiles that the generator batches output into.
	* @return the width of the standard alpha tile
	*/
	@:overload @:public public function getTileWidth() : Int;
	
	/**
	* Gets the height of the tiles that the generator batches output into.
	* @return the height of the standard alpha tile
	*/
	@:overload @:public public function getTileHeight() : Int;
	
	/**
	* Gets the typical alpha value that will characterize the current
	* tile.
	* The answer may be 0x00 to indicate that the current tile has
	* no coverage in any of its pixels, or it may be 0xff to indicate
	* that the current tile is completely covered by the path, or any
	* other value to indicate non-trivial coverage cases.
	* @return 0x00 for no coverage, 0xff for total coverage, or any other
	*         value for partial coverage of the tile
	*/
	@:overload @:public public function getTypicalAlpha() : Int;
	
	/**
	* Skips the current tile and moves on to the next tile.
	* Either this method, or the getAlpha() method should be called
	* once per tile, but not both.
	*/
	@:overload @:public public function nextTile() : Void;
	
	/**
	* Gets the alpha coverage values for the current tile.
	* Either this method, or the nextTile() method should be called
	* once per tile, but not both.
	*/
	@:overload @:public public function getAlpha(tile : java.NativeArray<java.StdTypes.Int8>, offset : Int, rowstride : Int) : Void;
	
	/**
	* Disposes this tile generator.
	* No further calls will be made on this instance.
	*/
	@:overload @:public public function dispose() : Void;
	
	
}
