package sun.font;
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
/**
* Stores glyph-related data, used in the pure-java glyphcache.
*
* @author Clemens Eisserer
*/
extern class XRGlyphCacheEntry
{
	@:overload public function new(glyphInfoPtr : haxe.Int64, gl : sun.font.GlyphList) : Void;
	
	@:overload public function getXOff() : Int;
	
	@:overload public function getYOff() : Int;
	
	@:overload public function setGlyphSet(glyphSet : Int) : Void;
	
	@:overload public function getGlyphSet() : Int;
	
	@:native('getGlyphID') @:overload public static function _getGlyphID(glyphInfoPtr : haxe.Int64) : Int;
	
	@:native('setGlyphID') @:overload public static function _setGlyphID(glyphInfoPtr : haxe.Int64, id : Int) : Void;
	
	@:overload public function getGlyphID() : Int;
	
	@:overload public function setGlyphID(id : Int) : Void;
	
	@:overload public function getXAdvance() : Single;
	
	@:overload public function getYAdvance() : Single;
	
	@:overload public function getSourceRowBytes() : Int;
	
	@:overload public function getWidth() : Int;
	
	@:overload public function getHeight() : Int;
	
	@:overload public function writePixelData(os : java.io.ByteArrayOutputStream, uploadAsLCD : Bool) : Void;
	
	@:overload public function getTopLeftXOffset() : Single;
	
	@:overload public function getTopLeftYOffset() : Single;
	
	@:overload public function getGlyphInfoPtr() : haxe.Int64;
	
	@:overload public function isGrayscale(listContainsLCDGlyphs : Bool) : Bool;
	
	@:overload public function getPaddedWidth(listContainsLCDGlyphs : Bool) : Int;
	
	@:overload public function getDestinationRowBytes(listContainsLCDGlyphs : Bool) : Int;
	
	@:overload public function getGlyphDataLenth(listContainsLCDGlyphs : Bool) : Int;
	
	@:overload public function setPinned() : Void;
	
	@:overload public function setUnpinned() : Void;
	
	@:overload public function getLastUsed() : Int;
	
	@:overload public function setLastUsed(lastUsed : Int) : Void;
	
	@:overload public function getPixelCnt() : Int;
	
	@:overload public function isPinned() : Bool;
	
	
}
