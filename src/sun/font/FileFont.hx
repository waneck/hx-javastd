package sun.font;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class FileFont extends sun.font.PhysicalFont
{
	@:protected private var useJavaRasterizer : Bool;
	
	/* I/O and file operations are always synchronized on the font
	* object. Two threads can be accessing the font and retrieving
	* information, and synchronized only to the extent that filesystem
	* operations require.
	* A limited number of files can be open at a time, to limit the
	* absorption of file descriptors. If a file needs to be opened
	* when there are none free, then the synchronization of all I/O
	* ensures that any in progress operation will complete before some
	* other thread closes the descriptor in order to allocate another one.
	*/
	@:protected private var fileSize : Int;
	
	@:protected private var scaler : sun.font.FontScaler;
	
	/* The following variables are used, (and in the case of the arrays,
	* only initialised) for select fonts where a native scaler may be
	* used to get glyph images and metrics.
	* glyphToCharMap is filled in on the fly and used to do a reverse
	* lookup when a FileFont needs to get the charcode back from a glyph
	* code so it can re-map via a NativeGlyphMapper to get a native glyph.
	* This isn't a big hit in time, since a boolean test is sufficient
	* to choose the usual default path, nor in memory for fonts which take
	* the native path, since fonts have contiguous zero-based glyph indexes,
	* and these obviously do all exist in the font.
	*/
	@:protected private var checkedNatives : Bool;
	
	@:protected private var useNatives : Bool;
	
	@:protected private var nativeFonts : java.NativeArray<sun.font.NativeFont>;
	
	@:protected private var glyphToCharMap : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:protected private function checkUseNatives() : Bool;
	
	/* This method needs to be accessible to FontManager if there is
	* file pool management. It may be a no-op.
	*/
	@:overload @:protected @:abstract private function close() : Void;
	
	@:overload @:public override public function canDoStyle(style : Int) : Bool;
	
	/* T1 & TT implementation differ so this method is abstract.
	NB: null should not be returned here! */
	@:overload @:protected @:abstract private function getScaler() : sun.font.FontScaler;
	
	@:overload @:protected override private function getUnitsPerEm() : haxe.Int64;
	
	@:overload @:protected private function getPublicFileName() : String;
	
	
}
@:native('sun$font$FileFont$CreatedFontFileDisposerRecord') @:internal extern class FileFont_CreatedFontFileDisposerRecord implements sun.java2d.DisposerRecord
{
	@:overload @:public public function dispose() : Void;
	
	
}
