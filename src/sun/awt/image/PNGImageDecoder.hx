package sun.awt.image;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class PNGImageDecoder extends sun.awt.image.ImageDecoder
{
	@:overload @:protected private function handleChunk(key : Int, buf : java.NativeArray<java.StdTypes.Int8>, st : Int, len : Int) : Bool;
	
	/* this is changed
	public void run() {
	*/
	@:overload @:public override public function produceImage() : Void;
	
	/* code changed
	public PNGImageDecoder(InputStream in, ImageConsumer t) throws IOException {
	*/
	@:overload @:public public function new(src : sun.awt.image.InputStreamImageSource, input : java.io.InputStream) : Void;
	
	@:overload @:public @:static public static function getCheckCRC() : Bool;
	
	@:overload @:public @:static public static function setCheckCRC(c : Bool) : Void;
	
	@:overload @:protected private function wrc(c : Int) : Void;
	
	@:overload @:protected private function wrk(n : Int) : Void;
	
	@:overload @:public public function print() : Void;
	
	
}
@:native('sun$awt$image$PNGImageDecoder$PNGException') extern class PNGImageDecoder_PNGException extends java.io.IOException
{
	
}
@:native('sun$awt$image$PNGImageDecoder$Chromaticities') extern class PNGImageDecoder_Chromaticities
{
	@:public public var whiteX : Single;
	
	@:public public var whiteY : Single;
	
	@:public public var redX : Single;
	
	@:public public var redY : Single;
	
	@:public public var greenX : Single;
	
	@:public public var greenY : Single;
	
	@:public public var blueX : Single;
	
	@:public public var blueY : Single;
	
	@:overload @:public public function toString() : String;
	
	
}
@:internal extern class PNGFilterInputStream extends java.io.FilterInputStream
{
	@:public public var underlyingInputStream : java.io.InputStream;
	
	@:overload @:public public function new(owner : sun.awt.image.PNGImageDecoder, is : java.io.InputStream) : Void;
	
	@:overload @:public override public function available() : Int;
	
	@:overload @:public override public function markSupported() : Bool;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, st : Int, len : Int) : Int;
	
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	
}
