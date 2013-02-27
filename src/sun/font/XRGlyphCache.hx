package sun.font;
/*
* Copyright (c) 2010, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Glyph cache used by the XRender pipeline.
*
* @author Clemens Eisserer
*/
extern class XRGlyphCache implements sun.font.GlyphDisposedListener
{
	@:overload public function new(maskBuf : sun.java2d.xr.XRCompositeManager) : Void;
	
	@:overload public function glyphDisposed(glyphPtrList : java.util.ArrayList<Null<haxe.Int64>>) : Void;
	
	@:overload private function getFreeGlyphID() : Int;
	
	@:overload private function getEntryForPointer(imgPtr : haxe.Int64) : sun.font.XRGlyphCacheEntry;
	
	@:overload public function cacheGlyphs(glyphList : sun.font.GlyphList) : java.NativeArray<sun.font.XRGlyphCacheEntry>;
	
	@:overload private function uploadGlyphs(glyphs : java.NativeArray<sun.font.XRGlyphCacheEntry>, uncachedGlyphs : java.util.ArrayList<sun.font.XRGlyphCacheEntry>, gl : sun.font.GlyphList, glIndices : java.NativeArray<Int>) : Void;
	
	/**
	* Seperates lcd and grayscale glyphs queued for upload, and sets the
	* appropriate glyphset for the cache entries.
	*/
	@:overload private function seperateGlyphTypes(glyphList : java.util.List<sun.font.XRGlyphCacheEntry>, containsLCDGlyphs : Bool) : java.NativeArray<java.util.List<sun.font.XRGlyphCacheEntry>>;
	
	/**
	* Copies the glyph-images into a continous buffer, required for uploading.
	*/
	@:overload private function generateGlyphImageStream(glyphList : java.util.List<sun.font.XRGlyphCacheEntry>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function containsLCDGlyphs(entries : java.util.List<sun.font.XRGlyphCacheEntry>) : Bool;
	
	@:overload private function clearCache(glyps : java.NativeArray<sun.font.XRGlyphCacheEntry>) : Void;
	
	
}
