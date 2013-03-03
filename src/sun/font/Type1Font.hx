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
extern class Type1Font extends sun.font.FileFont
{
	/**
	* Constructs a Type1 Font.
	* @param platname - Platform identifier of the font. Typically file name.
	* @param nativeNames - Native names - typically XLFDs on Unix.
	*/
	@:overload @:public public function new(platname : String, nativeNames : Dynamic) : Void;
	
	/**
	* - does basic verification of the file
	* - reads the names (full, family).
	* - determines the style of the font.
	* @throws FontFormatException - if the font can't be opened
	* or fails verification,  or there's no usable cmap
	*/
	@:overload @:public public function new(platname : String, nativeNames : Dynamic, createdCopy : Bool) : Void;
	
	@:overload @:protected override private function close() : Void;
	
	@:overload @:public @:synchronized public function readBlock(offset : Int, length : Int) : java.nio.ByteBuffer;
	
	@:overload @:public public function getFileSize() : Int;
	
	@:overload @:public override public function getPostscriptName() : String;
	
	@:overload @:protected @:synchronized override private function getScaler() : sun.font.FontScaler;
	
	@:overload @:public override public function getNumGlyphs() : Int;
	
	@:overload @:public override public function getMissingGlyphCode() : Int;
	
	@:overload @:public public function getGlyphCode(charCode : java.StdTypes.Char16) : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
/*
* Adobe Technical Note 5040 details the format of PFB files.
* the file is divided into ascii and binary sections. Each section
* starts with a header
* 0x8001 - start of binary data, is followed by 4 bytes length, then data
* 0x8002 - start of ascii data, is followed by 4 bytes length, then data
* 0x8003 - end of data segment
* The length is organised as LSB->MSB.
*
* Note: I experimented with using a MappedByteBuffer and
* there were two problems/questions.
* 1. If a global buffer is used rather than one allocated in the calling
* context, then we need to synchronize on all uses of that data, which
* means more code would beed to be synchronized with probable repercussions
* elsewhere.
* 2. It is not clear whether to free the buffer when the file is closed.
* If we have the contents in memory then why keep open files around?
* The mmapped buffer doesn't need it.
* Also regular GC is what frees the buffer. So closing the file and nulling
* out the reference still needs to wait for the buffer to be GC'd to
* reclaim the storage.
* If the contents of the buffer are persistent there's no need
* to worry about synchronization.
* Perhaps could use a WeakReference, and when its referent is gone, and
* need it can just reopen the file.
* Type1 fonts thus don't use up file descriptor references, but can
* use memory footprint in a way that's managed by the host O/S.
* The main "pain" may be the different model means code needs to be written
* without assumptions as to how this is handled by the different subclasses
* of FileFont.
*/
@:native('sun$font$Type1Font$T1DisposerRecord') @:internal extern class Type1Font_T1DisposerRecord implements sun.java2d.DisposerRecord
{
	@:overload @:public @:synchronized public function dispose() : Void;
	
	
}
